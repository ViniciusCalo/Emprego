<%@page import="dao.VagaDao"%>
<%@page import="org.hibernate.validator.internal.constraintvalidators.bv.notempty.NotEmptyValidatorForArraysOfDouble"%>
<%@page import="model.Vaga"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	//PEGAR AS INFORMAÇÕES DA REQUISIÇÃO
	String desc = request.getParameter("descricao");
	String ro = request.getParameter("reqObg");
	String reqdes = request.getParameter("reqDes");
	String remuString = request.getParameter("remuneracao");
	//CONVERTENDO A REMUNECAÇÃO PARA DOUBLE	
	double remuneracao = Double.parseDouble(remuString);
	String ben = request.getParameter("beneficio");
	String local = request.getParameter("local");
	int id = Integer.parseInt(request.getParameter("idvaga"));
	
	//CRIA O OBJETO VAGA COM AS INFORMAÇÕES PASSADAS NA REQUEST
	Vaga vaga = new Vaga();
	vaga.setIdVaga(id);
	vaga.setDescricao(desc);
	vaga.setReqObg(ro);
	vaga.setReqDes(reqdes);
	vaga.setRemuneracao(remuneracao);
	vaga.setBeneficios(ben);
	vaga.setLocal(local);
	
	//INSERE A VAGA NO BANCO DE DADOS
	VagaDao dao = new VagaDao();
	dao.atualizar(vaga);
%>



<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	id da vaga: <%=vaga.getIdVaga() %> 
	Descrição = <%=vaga.getDescricao()%> </br>
	Requisitos obrigatorios = <%=vaga.getReqObg()%> </br>
	Requisitos desejaveis = <%=vaga.getReqDes()%> </br>
	Remuneração = <%=vaga.getRemuneracao() %></br>
	Beneficios = <%=vaga.getBeneficios() %></br>
	Local = <%=vaga.getLocal() %></br>
	<h1>Vaga alterada com sucesso</h1>
</body>
</html>