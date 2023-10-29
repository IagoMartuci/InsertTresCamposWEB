<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="CSS/style.css">
<script type="text/JavaScript" src="JS/funcoes.js"></script>
<title>Cadastrar Pessoa</title>
</head>

<body onload="mostrarSaudacao()">
<h1>Cadastrar Pessoa</h1>
<hr>

<form action="cadastro.jsp" name="formulario" method="post">
<input type="text" name="nome" id="nomePessoa" placeholder="Nome" required>
<br>
<input type="email" name="email" id="emailPessoa" placeholder="E-mail" required>
<br>
<input type="number" name="idade" id="idadePessoa" placeholder="Idade" required>
<br>
<input type="submit" value="Cadastrar"><!--onclick="mostrarMensagemSucesso(nome.value)"-->
<input type="reset" value="Limpar" onclick="mostrarMensagemCancelamento()">
</form>

</body>
</html>