<%

String nome = request.getParameter("nome");
String valor = request.getParameter("valor");
String descricao = request.getParameter("descricao");
String dataCadastro = request.getParameter("dataCadastro");
String desconto = request.getParameter("desconto");

String mensagem = "";

if (nome.equals("")){
	
	mensagem = "O campo nome está vazio <br />";
}
if (valor.equals("")){
	
	mensagem += "O campo valor está vazio <br />";
}
if (descricao.equals("")){
	
	mensagem += "O campo descrição está vazio <br />";
}
if (dataCadastro.equals("")){
	
	mensagem += "O campo data de Cadastro está vazio <br />";
}
if (desconto.equals("")){
	
	mensagem += "O campo desconto está vazio <br />";
}

if (mensagem.equals("")){
	
	
	Double valorDesconto = Double.parseDouble(valor);
	
	if (desconto.equals("1")){
		
		valorDesconto = valorDesconto - (valorDesconto * 0.083);
		
	}
	
	request.setAttribute("nomeParam", nome);
	request.setAttribute("valorParam", valor);
	request.setAttribute("descricaoParam", descricao);
	request.setAttribute("dataCadastroParam", dataCadastro);
	request.setAttribute("valorDesconto", valorDesconto);
	
	if(desconto.equals("1")){
		request.setAttribute("descontoParam", "Com Desconto");
	}
	if(desconto.equals("2")){
		request.setAttribute("descontoParam", "Sem Desconto");
	}
	
	pageContext.forward("resultadoProduto.jsp");
}else {
	request.setAttribute("mensagemParam", mensagem);
	pageContext.forward("dadosInconsistente.jsp");
	
}
%>