<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Inertia\Inertia;
use Laravel\Cashier\Cashier;
use Stripe\Account;
use Stripe\Checkout\Session;
use Stripe\Stripe;
use Stripe\File;

class ManageSubscriptionController extends Controller
{
    public function __invoke(Request $request)
    {

        // to use stripe's hosted checkout page for subscription
        // Subscription Checkout (Stripe-hosted Checkout)

        Stripe::setApiKey(env('STRIPE_SECRET'));

        $user = $request->user();

        $connectedAccountId = env('STRPE_CONNECTED_ACCOUNT');

        if (!$connectedAccountId) {
            return response()->json(['error' => 'No connected account found'], 400);
        }

        // $account = Account::update(
        //     $connectedAccountId, // Replace with your actual Stripe Account ID
        //     [
        //         'settings' => [
        //             'branding' => [
        //                 // 'logo' => 'store logo inside project', // Your logo URL
        //                 // 'icon' => 'store logo inside project, // Your icon URL
        //                 'primary_color' => '#000000', // Button & accent color
        //                 'secondary_color' => '#ffffff', // Background color
        //             ]
        //         ]
        //     ]
        // );

        // ✅ Update the Connected Account Branding using Cashier's Stripe Client
        // Cashier::stripe()->accounts->update(
        //     $connectedAccountId,
        //     [
        //         'settings' => [
        //             'branding' => [
        //                 'logo' => 'store logo inside project',
        //                 'icon' => 'store logo inside project',
        //                 'primary_color' => '#000000',
        //                 'secondary_color' => '#ffffff',
        //             ]
        //         ]
        //     ]
        // );

        $checkout = $user->newSubscription('default', config('stripe.price_id'))
            ->checkout(
                [
                    'success_url' => route('dashboard'),
                    'cancel_url' => route('subscription'),
                    // 'payment_method_types' => ['card'],
                    'metadata' => [
                        'user_id' => $user->id,
                        'plan_name' => 'Default Plan',
                    ],
                    'allow_promotion_codes' => true, // Allow discount codes
                    'billing_address_collection' => 'required', // Require billing address
                    'custom_text' => [
                        'submit' => ['message' => 'Subscribe Now'], // Change button text
                    ],
                ],
                // ['stripe_account' => $connectedAccountId]
            );

        return Inertia::render('ManageSubscription', [
            'stripeKey' => config('cashier.key'),
            'checkoutSessionId' => $checkout->id
        ]);
    }
}
