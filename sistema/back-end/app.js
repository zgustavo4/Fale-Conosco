const express = require("express")
const cors = require("cors")
const mysql = require("mysql2/promise")
const porta = 3000
const app = express()

const pool = require("./db.js")

// acessar dados do body
app.use(express.json())
app.use(cors())

// servidor
app.listen(porta, () => {
  console.log(`Servidor rodando em: http://localhost:${porta}`)
})

// rotas
app.post("/faleConosco", async (req, res) => {
  try {
    const { nome, email, telefone, assunto, mensagem} = req.body

//if e else


    if (nome == "") {
        return res.json({"resposta":"Digite um nome valido"})
    }
    else if (email == "") {
        return res.json({"resposta":"Digite um email valido"})
    }
    else if (email.length < 6) {
        return res.json({"resposta":"Digite um email valido"})
    }
    else if (assunto == "") {
        return res.json({"resposta":"Digite um assunto"})
    }
    else if (mensagem == "") {
        return res.json({"resposta":"Digite uma mensagem"})
    }
//verificar

    let sql = `SELECT * FROM fale_conosco WHERE email = ?`
        let [resultado2] = await pool.query(sql, [email])
        if (resultado2.length != 0) {
            return res.json({ "resposta": "email ja usado" })
        }

//insert
    sql = (`INSERT INTO fale_conosco (nome, email, telefone, assunto, mensagem) VALUES (?,?,?,?,?)`)
        let [resultado] = await pool.query(sql, [nome, email, telefone, assunto, mensagem])
        res.json({"resposta":"enviado com sucesso"})
  } catch (error) {
        console.log(`o erro é: ${error}`)
  }
})

