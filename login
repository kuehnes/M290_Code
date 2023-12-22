<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <style>
        /* Stil für das Login-Formular */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }
        .login-container {
            width: 300px;
            margin: 100px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .login-container h2 {
            text-align: center;
        }
        .login-container form input {
            width: 100%;
            margin-bottom: 10px;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }
        .login-container form input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
        }
    </style>
</head>
<body>
<div class="login-container">
    <h2>Login</h2>
    <form id="loginForm" action="efz-zeugnis.html.html" method="POST">
        <input type="text" id="username" name="username" placeholder="Benutzername" required>
        <input type="password" id="password" name="password" placeholder="Passwort" required>
        <input type="submit" value="Login">
    </form>
</div>

<script>
    document.getElementById('loginForm').addEventListener('submit', function(event) {
        event.preventDefault(); // Verhindert das Standardverhalten des Formulars (das direkte Absenden)

        // Hier könntest du deine eigene Logik für die Authentifizierung implementieren
        // Zum Beispiel könntest du die eingegebenen Werte überprüfen und dann entsprechend weiterleiten
        var username = document.getElementById('username').value;
        var password = document.getElementById('password').value;

        // Hier könntest du eine Überprüfung der Daten vornehmen
        // Angenommen, der Benutzer ist erfolgreich authentifiziert:
        if (username === 'meinUsername' && password === 'meinPasswort') {
            window.location.href = 'ziel-seite.html'; // Weiterleitung zur Ziel-Seite
        } else {
            alert('Falscher Benutzername oder Passwort. Bitte erneut versuchen.');
            // Hier könntest du auch andere Aktionen durchführen, z. B. das Zurücksetzen der Eingabefelder
        }
    });
</script>
</body>
</html>
