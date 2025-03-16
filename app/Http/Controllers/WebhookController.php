<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Stripe\Stripe;
use Stripe\Webhook;
use Symfony\Component\HttpFoundation\Response;

class WebhookController extends Controller
{
    public function handleWebhook(Request $request)
    {
        // Set Stripe secret key
        Stripe::setApiKey(config('services.stripe.secret'));

        // Retrieve the Stripe webhook secret from .env
        $endpoint_secret = config('services.stripe.webhook_secret');

        // Get the payload and signature
        $payload = $request->getContent();
        $sig_header = $request->header('Stripe-Signature');

        try {
            // Verify webhook signature
            $event = Webhook::constructEvent($payload, $sig_header, $endpoint_secret);
        } catch (\UnexpectedValueException $e) {
            // Invalid payload
            return response()->json(['error' => 'Invalid Payload'], Response::HTTP_BAD_REQUEST);
        } catch (\Stripe\Exception\SignatureVerificationException $e) {
            // Invalid signature
            return response()->json(['error' => 'Invalid Signature'], Response::HTTP_BAD_REQUEST);
        }

        // Log event for debugging
        Log::info('Stripe Webhook Received:', ['event' => $event]);

        // Handle the event based on its type
        switch ($event->type) {
            case 'payment_intent.succeeded':
                // Handle successful payment (store in DB, send email, etc.)
                Log::info('Payment Succeeded:', ['data' => $event->data->object]);
                break;

            case 'invoice.payment_succeeded':
                // Handle successful invoice payment
                Log::info('Invoice Payment Succeeded:', ['data' => $event->data->object]);
                break;

            case 'customer.subscription.created':
                // Handle subscription creation
                Log::info('Subscription Created:', ['data' => $event->data->object]);
                break;

            case 'checkout.session.completed':
                // Handle checkout session completion
                Log::info('Checkout Session Completed:', ['data' => $event->data->object]);
                break;

            default:
                // Log unhandled event types
                Log::warning('Unhandled Event:', ['event' => $event->type]);
        }

        // Respond immediately to prevent timeout
        return response()->json(['status' => 'success'], Response::HTTP_OK);
    }
}
