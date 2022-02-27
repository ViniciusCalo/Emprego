<%@page import="model.Vaga"%>
<%@page import="dao.VagaDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%
	int idVaga = Integer.parseInt(request.getParameter("idVaga"));
	VagaDao dao = new VagaDao();
	Vaga v = dao.procurar(idVaga);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script
	src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"
	type="text/javascript"></script>
<script src="jquery.maskMoney.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="estilo.css">
<title>Formulario Vaga</title>
</head>
<body>
	<div class="formulario">
		<h2>Sistema de controle de Vagas de Emprego</h2>
		<h3>Inclus�o</h3>

		<form action="alterar.jsp" method="post">
			<input type = "hidden" name="idvaga" value= "<%= v.getIdVaga()%>"/>
			<label for="descricao">Descri��o</label> 			
			<input value=<%=v.getDescricao() %> type="text" name="descricao"><br>
			
			<label for="reqObg">Requisitos Obrigat�rios</label>
			<input value=<%=v.getReqObg() %> type="text" name="reqObg"><br> 
			
			<label for="reqDes">Requisitos Desej�veis</label> 
			<input value=<%=v.getReqDes() %> type="text" name="reqDes"><br> 
			
			<label for="remuneracao">Remunera��o</label> 
			<input value=<%=v.getRemuneracao() %> type="text" name="remuneracao"><br>
			
			<label for="beneficios">Benef�cios</label>
			<input value=<%=v.getBeneficios() %> type="text" name="beneficio"><br> 
		
			<label for="local">Local de Trabalho</label> 
			<input value=<%=v.getLocal() %> type="text" name="local"> <br>

			<button type="submit">Enviar</button>


		</form>
	</div>
</body>
</html>