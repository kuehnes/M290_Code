/* Nicht vergessen: nmp install mysql starten in der console, damit JS-Parameter gesetzt werden */

// Die installierten MySql-Module werden in unser Script geladen
const mysql = require("mysql");

// Credentials / Zugriffsdaten zur Datenbank
const config = {
    host: 'localhost',
    database: 'appDB',
    user: "appAdmin",
    password: 'appAdminPW'
}

const connection = mysql.createConnection(config)

// Der Verbindungsaufbau wird durchgeführt. Im Erfolgsfall wird der Name der verbundenen Datenbank angezeigt.
// Im Fehlerfall wird die Fehlermeldung ausgegeben.

connection.connect(function(err) {
    if (err) throw(err);
    console.log('Connected to MySQL database:', connection.config.database);
});


