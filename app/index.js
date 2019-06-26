// Injection d'Express
const express = require('express')

// Instantiation d'Express
const app = express()

// Création de constantes pour récupérer :
// soit les variables d'environnement (fourni via docker)
// soit des valeurs par défaut
const port = process.env.PORT | 3000
const host = process.env.HOST | '127.0.0.1'

// Création de notre première route
app.get('/', (req, res) => res.send('Hello World!'))

// Démarrage du serveur
app.listen(port, host, () => console.log(`Example app listening on port ${port}!`))
