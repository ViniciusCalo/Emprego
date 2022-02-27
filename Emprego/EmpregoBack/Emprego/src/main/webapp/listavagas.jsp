<%@page import="model.Vaga"%>
<%@page import="dao.VagaDao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	VagaDao dao = new VagaDao();
	int tipoLista =
				Integer.parseInt(request.getParameter("lista"));
	List<Vaga> vagas = dao.buscar(tipoLista);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista de Vagas</title>
</head>
<body>
	<table border = 1>
		<caption>Lista de Vagas</caption>
		<tr>
			<th>ID</th>
			<th>Descrição</th>
			<th>Req. Obrigatórios</th>
			<th>Req. Desejáveis</th>
			<th>Remuneração</th>
			<th>Aberta</th>
			<th>Benefícios</th>
			<th>Local de Trabalho</th>
			<th>Alterar</th>
			<th>Excluir</th>
		</tr>
		<%
			for(Vaga v : vagas){
		%>
		<tr>
			<td><%=v.getIdVaga() %></td>
			<td><%=v.getDescricao() %></td>
			<td><%=v.getReqObg() %></td>
			<td><%=v.getReqDes() %></td>
			<td><%=v.getRemuneracao() %></td>
			<td><%=v.getAberta()==1 ? "sim" : "não" %></td>
			<td><%=v.getBeneficios() %></td>
			<td><%=v.getLocal() %></td>
			<td><a href="formAltera.jsp?idVaga=<%=v.getIdVaga()%>">Alterar</a></td>
			<td><a href="excluir.jsp?idVaga=<%=v.getIdVaga()%>">Excluir</a></td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>