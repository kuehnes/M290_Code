firebase.initializeApp(firebaseConfig);

const loginForm = document.getElementById('loginForm');

loginForm.addEventListener('submit', (e) => {
    e.preventDefault();

    const email = loginForm['email'].value;
    const password = loginForm['password'].value;

    firebase.auth().signInWithEmailAndPassword(email, password)
        .then((userCredential) => {
            const user = userCredential.user;
            console.log('Logged in user:', user);
            // Redirect to dashboard or perform further actions
            alert('Login successful!');
        })
        .catch((error) => {
            const errorCode = error.code;
            const errorMessage = error.message;
            console.error('Login error:', errorMessage);
            alert('Login failed. Please check your credentials.');
        });
});

