<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="rdfreitas" %>

<c:import url="../cabecalho-sistema.jsp" />
<c:import url="../header.jsp" />
	
	<div class="panel panel-default panel-info col-md-10">
	  <!-- Default panel contents -->
		<div class="panel-heading">Rodrigo Freitas - Lista de conhecimentos</div>
		
		
		<!-- Table -->
		<table class="table">
			<thead>
				<tr>
					<th>Conhecimento</th>
					<th>% de conhecimento</th>
					<th>Editar</th>
					<th>Remover</th>
				</tr>
			</thead>
			<tfoot></tfoot>
			<tbody>
				<c:forEach items="${skills}" var="conhecimento">
					<tr>
						<td>${conhecimento.conhecimento}</td>
						<td>${conhecimento.quantidade}</td>
						<td><a href="mostraConhecimento?id=${conhecimento.id}"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a></td>
						<td><a href="removeConhecimento?id=${conhecimento.id}"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a></td>
				</c:forEach>
			</tbody>
		</table>
	</div>
<c:import url="../rodape-sistema.jsp" />