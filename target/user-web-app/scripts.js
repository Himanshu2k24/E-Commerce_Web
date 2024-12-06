document.addEventListener('DOMContentLoaded', function() {
    document.getElementById('registerForm').addEventListener('submit', function(event) {
        event.preventDefault();
        var username = document.getElementById('username');
        var email = document.getElementById('email');
        var password = document.getElementById('password');
        var isValid = true;

        if (!username.checkValidity()) {
            username.classList.add('is-invalid');
            isValid = false;
        } else {
            username.classList.remove('is-invalid');
        }

        if (!email.checkValidity()) {
            email.classList.add('is-invalid');
            isValid = false;
        } else {
            email.classList.remove('is-invalid');
        }

        if (!password.checkValidity() || password.value.length < 8) {
            password.classList.add('is-invalid');
            isValid = false;
        } else {
            password.classList.remove('is-invalid');
        }

        if (isValid) {
            this.submit();
        }
    });

    document.getElementById('loginForm').addEventListener('submit', function(event) {
        event.preventDefault();
        var email = document.getElementById('email');
        var password = document.getElementById('password');
        var isValid = true;

        if (!email.checkValidity()) {
            email.classList.add('is-invalid');
            isValid = false;
        } else {
            email.classList.remove('is-invalid');
        }

        if (!password.checkValidity()) {
            password.classList.add('is-invalid');
            isValid = false;
        } else {
            password.classList.remove('is-invalid');
        }

        if (isValid) {
            this.submit();
        }
    });

    document.getElementById('profileForm').addEventListener('submit', function(event) {
        event.preventDefault();
        var email = document.getElementById('email');
        var password = document.getElementById('password');
        var isValid = true;

        if (!email.checkValidity()) {
            email.classList.add('is-invalid');
            isValid = false;
        } else {
            email.classList.remove('is-invalid');
        }

        if (!password.checkValidity() || password.value.length < 8) {
            password.classList.add('is-invalid');
            isValid = false;
        } else {
            password.classList.remove('is-invalid');
        }

        if (isValid) {
            this.submit();
        }
    });
});