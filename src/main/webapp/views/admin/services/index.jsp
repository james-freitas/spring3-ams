<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="page-header">
	<h2>Serviços</h2>

	
	<a href="<c:url value='/create' />" class="btn btn-success">Novo Serviço</a>
	<br />
	<br />
	<table class="table">
		<tr>
			<td>ID</td>
			<td>Descrição</td>
			<td>Preço</td>
		</tr>
		<c:forEach items="${servicos}" var="servico">
			<td>${servico.id}</td>
			<td>${servico.descricao}</td>
			<td>${servico.preco}</td>
		</c:forEach>		
	</table>		
</div>




<!-- <p class="lead">Feel free to browse in the menu options of this -->
<!-- 	responsive web application.</p> -->
<!-- <p> -->
<!-- 	Visit the <a href="http://codeonblue.com.br">Code On Blue portal</a> -->
<!-- 	for more information about our work. -->
<!-- </p> -->
<!-- <p> -->
<!-- 	<a class="btn btn-warning" href="j_spring_security_logout">Logout >></a>	 -->
<!-- </p> -->