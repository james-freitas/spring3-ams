<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="page-header">
	<h2>Editar Servi�o - ${servico.descricao}</h2>

	<br />
	<br />
	<sf:form modelAttribute="servico" role="form" action="${pageContext.request.contextPath}/admin/services/update" method="post">
		<sf:errors />
		
		<sf:hidden path="id"/>
		
		<div class="form-group">
			<sf:label path="descricao">Descri��o</sf:label>
			<sf:input path="descricao" class="form-control" type="text" id="descricao" /> 
			<sf:errors path="descricao" cssStyle="color: #a94442;" />
		</div>

		<div class="form-group">
			<sf:label path="preco">Pre�o</sf:label>
			<sf:input path="preco" class="form-control" type="text" id="preco" /> 
			<sf:errors path="preco" cssStyle="color: #a94442;" />
		</div>
		<br />
		
		<div class="form-group">
			<sf:button class="btn btn-primary" type="submit" name="submit" >Atualizar</sf:button>
		</div>
		
	</sf:form>

</div>

