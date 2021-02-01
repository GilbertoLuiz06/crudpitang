<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Pitang CRUD-Java</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

<style type="text/css">
body{
background-image: url("https://media-exp1.licdn.com/dms/image/C4E0BAQEl7sSixHTMHg/company-logo_200_200/0/1582813185899?e=1620259200&v=beta&t=BDq08Y10_ZOpPD6b9J5zT9tj0pRf2v3kddVsA9_Idno");
background-repeat: no-repeat;
}

</style>
</head>
<body>
<div class="container">


	<h1>Pitang CRUD teste</h1>
	<h3>Login </h3>
	<form action="login" method="post">
		<input type="hidden" name="opcao" value="login">
		<table border="1" class="highlight">
			<tr>
				<td>
					<div class="input-field col s6">
						<i class="material-icons prefix">email</i>
						<input id="email_prefix" type="email" class="validate"  name="email">
						<label for="email_prefix">E-mail</label>
			        </div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="input-field col s6">
						<i class="material-icons prefix">security</i>
						<input id="senha_prefix" type="password" class="validate" name="senha">
						<label for="senha_prefix">Senha</label>
			        </div>
				</td>
			</tr>
		</table>
		<div class="center-align">
		  <button class="btn waves-effect waves-light" type="submit" value="Login">Login
		    <i class="material-icons right">send</i>
		  </button>
		</div>
	</form>
	<table>
		<tr>
			<td class="center-align">
				<a class="waves-effect waves-light btn" href= "usuario?opcao=criar">Registrar um Usuário</a>
			</td>
		</tr>
		<c:if test="${!empty sessionScope.msgAviso }">
			<tr>
				<td class="center-align">
					<font size="6" color="<c:out value="${sessionScope.msgAvisoCor}"/>">
						<c:out value="${sessionScope.msgAviso}"/>
					</font>
				</td>
			</tr>
		</c:if>
	</table>
</div>
	<c:set var="msgAviso" value="" scope="session" />	
</body>
</html>