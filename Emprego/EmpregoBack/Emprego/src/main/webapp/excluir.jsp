<%@page import="dao.VagaDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	int idVaga = Integer.parseInt(request.getParameter("idVaga"));
	VagaDao dao = new VagaDao();
	dao.excluir(idVaga);
%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Excluir Vaga</title>
</head>
<body>
	<h1>Vaga <%=idVaga %> excluida com sucesso</h1>
</body>
</html>