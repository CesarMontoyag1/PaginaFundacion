const express = require('express');
const mysql = require('mysql2');
const bodyParser = require('body-parser');
const app = express();

const path = require('path');

// Servir archivos estáticos desde la carpeta 'public'
app.use(express.static(path.join(__dirname, 'public')));

// correr esta ruta que es en donde esta el servidor
// http://localhost:3000/login.html


app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

const db = mysql.createConnection({
    host: '127.0.0.1',
    user: 'root',
    password: 'Marien_06',
    database: 'BaseDatosFundacion',
    port: 3306
});

db.connect((err) => {
    if (err) {
        console.error('Error connecting to the database:', err);
        return;
    }
    console.log('Connected to the database.');
});

app.post('/login', (req, res) => {
    const { usuario, password } = req.body;

    const query = `
        SELECT * FROM user
        WHERE (username = ? OR email = ?) AND password = ?
    `;

    db.query(query, [usuario, usuario, password], (err, results) => {
        if (err) {
            console.error('Error executing query:', err);
            return res.status(500).send('Error interno del servidor');
        }

        if (results.length > 0) {
            const user = results[0];
            if (user.rol === 'administrativo') {
                res.redirect('/menuAdmin.html');
            } else if (user.rol === 'profesor') {
                res.redirect('/menuProfe.html');
            } else {
                res.status(403).send('Acceso denegado');
            }
        } else {
            res.status(401).send('Credenciales incorrectas');
        }
    });
});





app.listen(3000, () => {
    console.log('Server is running on port 3000');
});