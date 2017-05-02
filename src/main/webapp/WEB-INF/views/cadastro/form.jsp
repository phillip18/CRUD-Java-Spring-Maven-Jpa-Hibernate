<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro Pessoal - Teste</title>
</head>
<body>
	<h2>Preencha seus Dados</h2>
	
		<form action="/infoprice/cadastro" method="post" class="form-inline">
	    	<div class="row control-group">
	        	<div class="form-group col-xs-12 floating-label-form-group controls">
	            	<label >Nome</label>
	                	<input type="text" class="form-control" name="nome" >
	            </div>
			</div>
			<br>
			<div class="row control-group">
	        	<div class="form-group col-xs-12 floating-label-form-group controls">
	            	<label >E-mail</label>
	            	<input type="email" class="form-control" name="email">
				</div>
			</div>
	        <br>
			<div class="row control-group">
	        	<div class="form-group col-xs-12 floating-label-form-group controls">
	            	<label >Logradouro</label>
	            	<input type="text" class="form-control" name="logradouro">
				</div>
			</div>
	        <br>
	        <div class="row control-group">
	        	<div class="form-group col-xs-12 floating-label-form-group controls">
	            	<label >Número</label>
	            	<input type="number" class="form-control" name="numero">
				</div>
			</div>
	        <br>
	        <div class="row control-group">
	        	<div class="form-group col-xs-12 floating-label-form-group controls">
	            	<label>Complemento</label>
	            	<input type="text" class="form-control" name="complemento">
				</div>
			</div>
	        <br>
	        <div class="row control-group">
	        	<div class="form-group col-xs-12 floating-label-form-group controls">
	            	<label>Bairro</label>
	            	<input type="text" class="form-control" name="bairro">
				</div>
			</div>
	        <br>
	        <div class="row control-group">
	        	<div class="form-group col-xs-12 floating-label-form-group controls">
	            	<label>Cidade</label>
	            	<input type="text" class="form-control" name="cidade">
				</div>
			</div>
	        <br>
	        	        <div id="success">
	        	<div class="row">
	            	<div class="form-group col-xs-12">
	            		<button type="submit" class="btn btn-success btn-lg">Cadastrar</button>
					</div>
				</div>
			</div>
		</form>
		
		<a href="/infoprice">Voltar</a>
</body>
</html>