<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%
String mensagem = (String) request.getAttribute("mensagemParam");
%>
<meta charset="ISO-8859-1">
<title>ERRO</title>
</head>
<body>
<h1>Erro</h1>
<h1><%=mensagem %></h1>
<a href="venda.jsp">Voltar ao Cadastro de Produtos.</a>
</body>
</html>