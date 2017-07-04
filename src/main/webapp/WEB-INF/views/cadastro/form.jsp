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
<title>Cadastro Pessoal - Teste</title>
</head>
<body>
	<h2 class="text-center">Preencha seus Dados</h2>
	<br>
	<br>

	<div class="container jumbotron">
		<form action="/infoprice/cadastro" method="post" class="">
			<div class="row ">
				<div class="form-group col-xs-6 floating-label-form-group controls">
					<label>Nome</label> <input type="text" class="form-control"
						name="nome">
				</div>
				<div class="row ">
					<div class="form-group col-xs-6 floating-label-form-group controls">
						<label>E-mail</label> <input type="email" class="form-control"
							name="email">
					</div>
				</div>
			</div>
			<br>
			<div class="row ">
				<div class="form-group col-xs-6 floating-label-form-group controls">
					<label>Logradouro</label> <input type="text" class="form-control"
						name="logradouro">
				</div>
				<div class="row ">
					<div class="form-group col-xs-6 floating-label-form-group controls">
						<label>Número</label> <input type="number" class="form-control"
							name="numero">
					</div>
				</div>
			</div>
			<br>
			<div class="row ">
				<div class="form-group col-xs-6 floating-label-form-group controls">
					<label>Complemento</label> <input type="text" class="form-control"
						name="complemento">
				</div>
				<div class="row ">
					<div class="form-group col-xs-6 floating-label-form-group controls">
						<label>Bairro</label> <input type="text" class="form-control"
							name="bairro">
					</div>
				</div>
			</div>
			<br>
			<div class="row ">
				<div class="form-group col-xs-6 floating-label-form-group controls">
					<label>Cidade</label> <input type="text" class="form-control"
						name="cidade">
				</div>
			</div>
			<br>
			<div id="success">
				<div class="row">
					<div class="form-group col-xs-12">
						<button type="submit" class="btn btn-success btn-lg">Cadastrar</button>
						<br> <a href="/infoprice" class="btn btn-primary">Voltar</a>
					</div>
				</div>
			</div>
		</form>
	</div>
</body>
</html>