<script>
import AppLayout from '@/Layouts/AppLayout.vue';
import PrimaryButton from "@/Components/PrimaryButton.vue";

export default {
    components: {
        PrimaryButton,
        AppLayout,
    },
    props: ["stripeKey", "checkoutSessionId"],
    methods: {
        checkout() {
            window.Stripe(this.stripeKey).redirectToCheckout({
                sessionId: this.checkoutSessionId,
            });
        },
    },
};
</script>

<template>
    <AppLayout title="Dashboard">
        <template #header>
            <h2
                class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
                Manage Subscription
            </h2>
        </template>

        <div class="py-12">
            <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
                <div
                    class="bg-white dark:bg-gray-800 overflow-hidden shadow-xl sm:rounded-lg"
                >
                    <h2 class="font-bold text-2xl p-5">
                        Hang on there! You need an active subscription before
                        proceeding.
                    </h2>
                    <p>
                        <PrimaryButton class="m-4" @click="checkout">
                            Head to checkout page
                        </PrimaryButton>
                    </p>
                </div>
            </div>
        </div>
    </AppLayout>
</template>
