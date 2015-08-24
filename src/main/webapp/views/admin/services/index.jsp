<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="page-header">
	<h2>Serviços</h2>

	<a href="<c:url value='/admin/services/create' />" class="btn btn-success">Novo Serviço</a>
	<br />
	<br />
	<table class="table">
		<tr>
			<th>ID</th>
			<th>Descrição</th>
			<th>Preço</th>
		</tr>
		<c:forEach items="${servicos}" var="servico">
			<tr>
				<td>${servico.id}</td>
				<td>${servico.descricao}</td>
				<td>${servico.preco}</td>
			</tr>
		</c:forEach>		
	</table>		
</div>

