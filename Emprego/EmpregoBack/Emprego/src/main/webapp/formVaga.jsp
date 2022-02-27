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
		<h3>Inclus�o</h3>

		<form action="cadastrar.jsp" method="post">
			<label for="descricao">Descri��o</label> 			
			<input type="text" name="descricao"><br>
			
			<label for="reqObg">Requisitos Obrigat�rios</label>
			<input type="text" name="reqObg"><br> 
			
			<label for="reqDes">Requisitos Desej�veis</label> 
			<input type="text" name="reqDes"><br> 
			
			<label for="remuneracao">Remunera��o</label> 
			<input type="text" name="remuneracao"><br>
			
			<label for="beneficios">Benef�cios</label>
			<input type="text" name="beneficio"><br> 
			
			<label for="local">Local de Trabalho</label> 
			<input type="text" name="local"> <br>

			<button type="submit">Enviar</button>


		</form>
	</div>
</body>
</html>