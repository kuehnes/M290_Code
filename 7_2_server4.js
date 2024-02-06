/* *******************************************************************************************
* Autor: V. Demir, 1/2024
* *******************************************************************************************
* Beschreibung:
* Express-Server, um CRUD-Operationen vom Browser entgegen zunehmen an der DB durchzuführen
* *******************************************************************************************
* Hinweise
* npm install node
* npm init -y
* npm install mysql
* npm install body-parser
*  
** ***************************************************************************************** */
// Referenz: www.npmjs.com/package/mysql

const mysql = require("mysql");
const express = require('express');
var app = express();
const path = require('path');
const bodyParser = require('body-parser');

const port = 3000;

app.use(bodyParser.json());

const config = {
    host: 'localhost',
    database: 'appDB',
    user: "appAdmin",
    password: 'appAdminPW'
}

const connection = mysql.createConnection(config)

connection.connect(function(err) {
    if (err) throw err;
    console.log('Connected to MySQL database:', connection.config.database);
   /*
    var sqlstmt = 'SELECT * from user';
    // Das SQL-Statement wird vorbereitetet
    connection.query(sqlstmt, function (err, result) {
        if (err) throw err;
        // console.log('Data from MySQL:');
        //console.log(result); //
    });
    */
});

app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
});
app.get('/', (req, res) => {
    connection.query('SELECT * FROM user', [req.params.id], (err, rows, fields) => {
        if (!err) {
            console.log(rows);
            res.send(rows);
        } else {
            console.log(err);
        }

    })
});

app.get('/user', (req, res) => {
    connection.query('SELECT * FROM user', [req.params.id], (err, rows, fields) => {
        if (!err) {
            console.log(rows);
            res.send(rows);
        } else {
            console.log(err);
        }

    })
});
app.get('/user/:id', (req, res) => {
    connection.query('SELECT * FROM user WHERE id = ?', [req.params.id], (err, rows, fields) => {
        if (!err) {
            console.log(rows);
            res.send(rows);
        } else {
            console.log(err);
        }

    })
});

app.delete('/user/:id', (req, res) => {
    connection.query(' DELETE FROM user WHERE id = ? ', [req.params.id], (err, rows, fields) => {
        if (!err) {
            res.send('Delete operation was successful')
            // res.send(rows)
        } else {
            console.log(err);
        }

    })
});

//Serverdaten


// CREATE (INSERT) operation for user
app.post('/user', (req, res) => {
    const name = req.body.name; const vorname = req.body.vorname; const username = req.body.username;  // Assuming you have name, vorname, and username in the request body
    console.log(req.body);
    connection.query('INSERT INTO user (name, vorname, username) VALUES (?, ?, ?)', [name, vorname, username], (err, result) => {
        if (!err) {
            res.send('Insert operation for user was successful');
        } else {
            console.log(err);
        }
    });
});

// READ (SELECT) operation for modules
app.get('/modules', (req, res) => {
    connection.query('SELECT * FROM modules', (err, rows, fields) => {
        if (!err) {
            console.log(rows);
            res.send(rows);
        } else {
            console.log(err);
        }
    });
});

// CREATE (INSERT) operation for modules
app.post('/modules', (req, res) => {
    const { module_name } = req.body; // Assuming you have module_name in the request body
    connection.query('INSERT INTO modules (module_name) VALUES (?)', [module_name], (err, result) => {
        if (!err) {
            res.send('Insert operation for modules was successful');
        } else {
            console.log(err);
        }
    });
});

// DELETE operation for modules
app.delete('/modules/:id', (req, res) => {
    connection.query('DELETE FROM modules WHERE module_id = ?', [req.params.id], (err, result) => {
        if (!err) {
            res.send('Delete operation for modules was successful');
        } else {
            console.log(err);
        }
    });
});

// READ (SELECT) operation for semesters
app.get('/semesters', (req, res) => {
    connection.query('SELECT * FROM semesters', (err, rows, fields) => {
        if (!err) {
            console.log(rows);
            res.send(rows);
        } else {
            console.log(err);
        }
    });
});

// CREATE (INSERT) operation for semesters
app.post('/semesters', (req, res) => {
    const { semester_name } = req.body; // Assuming you have semester_name in the request body
    connection.query('INSERT INTO semesters (semester_name) VALUES (?)', [semester_name], (err, result) => {
        if (!err) {
            res.send('Insert operation for semesters was successful');
        } else {
            console.log(err);
        }
    });
});

// DELETE operation for semesters
app.delete('/semesters/:id', (req, res) => {
    connection.query('DELETE FROM semesters WHERE semester_id = ?', [req.params.id], (err, result) => {
        if (!err) {
            res.send('Delete operation for semesters was successful');
        } else {
            console.log(err);
        }
    });
});

// READ (SELECT) operation for certificate
app.get('/certificate', (req, res) => {
    connection.query('SELECT * FROM certificate', (err, rows, fields) => {
        if (!err) {
            console.log(rows);
            res.send(rows);
        } else {
            console.log(err);
        }
    });
});

// CREATE (INSERT) operation for certificate
app.post('/certificate', (req, res) => {
    const { user_id, module_id, semester_id } = req.body; // Assuming you have user_id, module_id, and semester_id in the request body
    connection.query('INSERT INTO certificate (user_id, module_id, semester_id) VALUES (?, ?, ?)', [user_id, module_id, semester_id], (err, result) => {
        if (!err) {
            res.send('Insert operation for certificate was successful');
        } else {
            console.log(err);
        }
    });
});

// DELETE operation for certificate
app.delete('/certificate/:id', (req, res) => {
    connection.query('DELETE FROM certificate WHERE certificate_id = ?', [req.params.id], (err, result) => {
        if (!err) {
            res.send('Delete operation for certificate was successful');
        } else {
            console.log(err);
        }
    });
});

// READ (SELECT) operation for grades
app.get('/grades', (req, res) => {
    connection.query('SELECT * FROM grades', (err, rows, fields) => {
        if (!err) {
            console.log(rows);
            res.send(rows);
        } else {
            console.log(err);
        }
    });
});

// CREATE (INSERT) operation for grades
app.post('/grades', (req, res) => {
    const { user_id, module_id, semester_id, grade } = req.body; // Assuming you have user_id, module_id, semester_id, and grade in the request body
    connection.query('INSERT INTO grades (user_id, module_id, semester_id, grade) VALUES (?, ?, ?, ?)', [user_id, module_id, semester_id, grade], (err, result) => {
        if (!err) {
            res.send('Insert operation for grades was successful');
        } else {
            console.log(err);
        }
    });
});

// DELETE operation for grades
app.delete('/grades/:id', (req, res) => {
    connection.query('DELETE FROM grades WHERE user_id = ?', [req.params.id], (err, result) => {
        if (!err) {
            res.send('Delete operation for grades was successful');
        } else {
            console.log(err);
        }
    });
});

// Remember to add necessary validations and error handling for production use.


/*
// Am Ende des Skripts oder bei Server-Shutdown
connection.end();*/



