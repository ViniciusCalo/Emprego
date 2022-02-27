<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<title>emprego</title>
</head>
<body>
	<div class="btn-group" role="group"
		aria-label="Button group with nested dropdown">
		<button type="button" class="btn btn-primary">Sistema de
			Controle de Vagas de Emprego</button>
		<a class="cadastrar" href="formVaga.jsp">
			<button type="button" class="btn btn-primary">Cadastrar</button>
		</a>
		<button type="button" class="btn btn-primary">Alteração/Exlusão</button>

		<div class="btn-group" role="group">
			<button id="btnGroupDrop1" type="button"
				class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown"
				aria-expanded="false">Listar Vagas</button>
			<ul class="dropdown-menu" aria-labelledby="btnGroupDrop1">
				<li><a class="dropdown-item" href="#">Listar Vagas abertas</a></li>
				<li><a class="dropdown-item" href="#">Listar Vagas
						encerradas</a></li>
				<li><a class="dropdown-item" href="#">Lista geral de Vagas</a></li>
			</ul>
		</div>
		<button type="button" class="btn btn-primary">Login</button>
	</div>
</body>
</html>