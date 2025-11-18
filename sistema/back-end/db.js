//Meu arquivo de conexão com o banco de dados
const mysql2 = require("mysql2/promise")

//pool de conexão

const pool = mysql2.createPool({
    //criar as configurações do BD
    host:"localhost",
    user:"root",
    password:"",
    port:3306,
    database:"fale_conosco",
    waitForConnections:true,
    connectionLimit:10,
    queueLimit:0
})

module.exports = pool