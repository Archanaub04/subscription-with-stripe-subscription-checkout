<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class BillingPortalController extends Controller
{
    public function __invoke(Request $request)
    {
        $user = $request->user();

        if (!$user->stripe_id) {
            return redirect()->route('dashboard')->with('error', 'User does not have a Stripe account.');
        }

        // Perform direct redirect to Stripe's billing portal
        return $user->redirectToBillingPortal(route('dashboard'));
    }
}
