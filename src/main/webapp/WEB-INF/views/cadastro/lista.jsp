<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<c:url value="../resources/css" var="cssPath" />
<link rel="stylesheet" href="${cssPath}/bootstrap.min.css" />
<link rel="stylesheet" href="${cssPath}/bootstrap-theme.min.css" />
<script src="${cssPath}/bootstrap.min.js"></script>

<meta charset="UTF-8">
<title>Cadastro Pessoal - Infoprice</title>
</head>
<body>

	<h1 class="text-center">Lista de Endereços</h1>
	<br>
	<br>
	<div class="text-center">
		<span>${sucesso}</alert>
	</div>
	<br><br>

	<section class="container">
	<table
		class="table table-hover table-condensed table-striped table-bordered">

		<tr class="bold">
			<td>Nome</td>
			<td>Email</td>
			<td>Logradouro</td>
			<td>Numero</td>
			<td>Complemento</td>
			<td>Bairro</td>
			<td>Cidade</td>
			<td></td>
		</tr>

		<c:forEach items="${address}" var="addr">
			<tr>
				<td>${addr.nome}</td>
				<td>${addr.email}</td>
				<td>${addr.logradouro}</td>
				<td>${addr.numero}</td>
				<td>${addr.complemento}</td>
				<td>${addr.bairro}</td>
				<td>${addr.cidade}</td>
				<td> <a href="remove" class="glyphicon glyphicon-trash"></a></td>
				<td> <a href="altera" class="glyphicon glyphicon-pencil"></a></td>
			</tr>
		</c:forEach>
	</table>
	</section>
	<br>
	<br>

	<div class="text-center">
		<a href="form" class="btn btn-info">Novo Cadastro</a> <a
			href="/infoprice" class="btn btn-info">Voltar</a>
	</div>
</body>
</html>