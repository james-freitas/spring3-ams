<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>


<div class="page-header">
	<h2>Novo Serviço</h2>

	<br />
	<br />
	<sf:form modelAttribute="servico" role="form" action="/admin/services/store" >
		<sf:errors />

		<div class="form-group">
			<sf:label path="descricao">Descrição</sf:label>
			<sf:input path="descricao" class="form-control" type="text" id="descricao" /> 
			<sf:errors path="descricao" cssStyle="color: #a94442;" />
		</div>

		<div class="form-group">
			<sf:label path="preco">Preço</sf:label>
			<sf:input path="preco" class="form-control" type="text" id="preco" /> 
			<sf:errors path="preco" cssStyle="color: #a94442;" />
		</div>
		<br />
		
		<div class="form-group">
			<sf:button class="btn btn-primary" type="submit" name="submit" >Salvar</sf:button>
		</div>


		
	</sf:form>

</div>

