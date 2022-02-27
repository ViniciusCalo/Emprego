<%@page import="dao.VagaDao"%>
<%@page import="org.hibernate.validator.internal.constraintvalidators.bv.notempty.NotEmptyValidatorForArraysOfDouble"%>
<%@page import="model.Vaga"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	//PEGAR AS INFORMA��ES DA REQUISI��O
	String desc = request.getParameter("descricao");
	String ro = request.getParameter("reqObg");
	String reqdes = request.getParameter("reqDes");
	String remuString = request.getParameter("remuneracao");
	//CONVERTENDO A REMUNECA��O PARA DOUBLE	
	double remuneracao = Double.parseDouble(remuString);
	String ben = request.getParameter("beneficio");
	String local = request.getParameter("local");
	
	//CRIA O OBJETO VAGA COM AS INFORMA��ES PASSADAS NA REQUEST
	Vaga vaga = new Vaga();
	vaga.setDescricao(desc);
	vaga.setReqObg(ro);
	vaga.setReqDes(reqdes);
	vaga.setRemuneracao(remuneracao);
	vaga.setBeneficios(ben);
	vaga.setLocal(local);
	//INSERE A VAGA NO BANCO DE DADOS
	VagaDao dao = new VagaDao();
	dao.inserir(vaga);
%>



<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	Descri��o = <%=vaga.getDescricao()%> </br>
	Requisitos obrigatorios = <%=vaga.getReqObg()%> </br>
	Requisitos desejaveis = <%=vaga.getReqDes()%> </br>
	Remunera��o = <%=vaga.getRemuneracao() %></br>
	Beneficios = <%=vaga.getBeneficios() %></br>
	Local = <%=vaga.getLocal() %></br>
	<h1>Vaga inserida com sucesso</h1>
</body>
</html>