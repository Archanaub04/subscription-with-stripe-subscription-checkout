<?php

use App\Http\Controllers\BillingPortalController;
use App\Http\Controllers\ManageSubscriptionController;
use Illuminate\Foundation\Application;
use Illuminate\Foundation\Http\Middleware\VerifyCsrfToken;
use Illuminate\Support\Facades\Route;
use Inertia\Inertia;
use Laravel\Cashier\Http\Controllers\WebhookController;

Route::get('/', function () {
    return Inertia::render('Welcome', [
        'canLogin' => Route::has('login'),
        'canRegister' => Route::has('register'),
        'laravelVersion' => Application::VERSION,
        'phpVersion' => PHP_VERSION,
    ]);
});

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified',
])->group(function () {
    Route::middleware('billing')->get('/dashboard', function () {
        return Inertia::render('Dashboard');
    })->name('dashboard');

    Route::get('subscription', ManageSubscriptionController::class)->name('subscription');

    Route::get('/billing-portal', BillingPortalController::class)->name('billing-portal')->withoutMiddleware([VerifyCsrfToken::class]);
});

Route::post('/stripe/webhook', [WebhookController::class, 'handleWebhook'])->withoutMiddleware([VerifyCsrfToken::class]);
