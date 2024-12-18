<x-guest-layout>
    <div class="mb-4 text-sm text-gray-600 dark:text-gray-400">
        {{ __('If you forgot your password, an email will be sent along with the Password Reset link to help you reset your password and get back to your account.') }}
    </div>

    <!-- Session Status -->
    <x-auth-session-status class="mb-4" :status="session('status')" />

    <form method="POST" action="{{ route('password.email') }}">
        @csrf

        <!-- Email Address -->
        <div>
            <x-input-label for="email" :value="__('Email')" />
            <x-text-input id="email" class="block w-full mt-1" type="email" name="email" :value="old('email')" required autofocus />
            <x-input-error :messages="$errors->get('email')" class="mt-2" />
        </div>

        <div class="flex items-center justify-end mt-4 space-x-5">
            <x-primary-button>
                {{ __('Email Password Reset Link') }}
            </x-primary-button>
    </form>
    <form method="GET" action="{{ route('login') }}">
        <x-primary-button>
            {{ __('Back to Login') }}
        </x-primary-button>
    </form>
</x-guest-layout>
