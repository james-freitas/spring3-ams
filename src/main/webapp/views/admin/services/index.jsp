<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="page-header">
	<h2>Servi�os</h2>

	<a href="<c:url value='/admin/services/create' />" class="btn btn-success">Novo Servi�o</a>
	<br />
	<br />
	<table class="table">
		<tr>
			<th>ID</th>
			<th>Descri��o</th>
			<th>Pre�o</th>
			<th>A��es</th>
		</tr>
		<c:forEach items="${servicos}" var="servico">
			<tr>
				<td>${servico.id}</td>
				<td>${servico.descricao}</td>
				<td>${servico.preco}</td>
				<td>
					<a href="<c:url value='/admin/services/show/${servico.id}' />" class="btn btn-default">Editar</a>
					<a href="<c:url value='/admin/services/destroy/${servico.id}' />" class="btn btn-danger">Excluir</a>
					
				</td>
			</tr>
		</c:forEach>		
	</table>		
</div>

