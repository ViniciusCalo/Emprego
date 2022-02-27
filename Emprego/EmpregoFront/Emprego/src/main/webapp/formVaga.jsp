<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
		<h3>Inclusão</h3>

		<form action="cadastrar.jsp" method="post">
			<label for="descricao">Descrição</label> 			
			<input type="text" name="descricao"><br>
			
			<label for="reqObg">Requisitos Obrigatórios</label>
			<input type="text" name="reqObg"><br> 
			
			<label for="reqDes">Requisitos Desejáveis</label> 
			<input type="text" name="reqDes"><br> 
			
			<label for="remuneracao">Remuneração</label> 
			<input type="text" name="remuneracao"><br>
			
			<label for="beneficios">Benefícios</label>
			<input type="text" name="beneficio"><br> 
			
			<label for="local">Local de Trabalho</label> 
			<input type="text" name="local"> <br>

			<button type="submit">Enviar</button>


		</form>
	</div>
</body>
</html>