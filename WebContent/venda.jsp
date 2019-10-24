<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro de Produtos</title>
</head>
<body>
<h1>Cadastro de produto</h1>
<form action="verificaVenda.jsp" method="post">
<table>
<tr>
<td>Nome:</td>
<td><input type="text" name="nome"></td>
</tr>
<tr>
<td>valor:</td>
<td><input type="text" name="valor"></td>
</tr>
<tr>
<td>Descrição:</td>
<td><input type="text" name="descricao"></td>
</tr>
<tr>
<td>Data de Cadastro:</td>
<td><input type="text" name="dataCadastro"></td>
</tr>
<tr>
<td>Se tem desconto:</td>
<td><select name="desconto">
<option value="">Selecione</option>
<option value="1">Com Desconto</option>
<option value="2">Sem Desconto</option>
</select></td>
</tr>
</table>
<button>Enviar</button>
</form>
</body>
</html>