<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%
String nome = (String) request.getAttribute("nomeParam");
String valor = (String) request.getAttribute("valorParam");
String descricao = (String) request.getAttribute("descricaoParam");
String dataCadastro = (String) request.getAttribute("dataCadastroParam");
String desconto = (String) request.getAttribute("descontoParam");
Double valorDesconto = (Double) request.getAttribute("valorDesconto");


%>
<meta charset="ISO-8859-1">
<title>Resultado</title>
</head>
<body>
<h1>Resultado</h1>
<h1>Nome: <%=nome %></h1>
<h1>Valor: <%=valor %></h1>
<h1>Descrição: <%=descricao %></h1>
<h1>data de Cadastro: <%=dataCadastro %></h1>
<h1>Esta com: <%=desconto %></h1>
<% if (desconto.equals("Com Desconto")){%>
	<h1>Valor com desconto <%=valorDesconto %></h1>
<%} %>

</body>
</html>