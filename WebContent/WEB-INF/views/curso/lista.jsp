<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="rdfreitas" %>

<c:import url="../cabecalho-sistema.jsp" />
<c:import url="../header.jsp" />
	
	<div class="panel panel-default panel-info col-md-10">
	  <!-- Default panel contents -->
		<div class="panel-heading">Rodrigo Freitas - Lista de cursos</div>
		
		
		<!-- Table -->
		<table class="table">
			<thead>
				<tr>
					<th>Curso</th>
					<th>Ano</th>
					<th>Período</th>
					<th>Finalizado?</th>
					<th>Editar</th>
					<th>Remover</th>
				</tr>
			</thead>
			<tfoot></tfoot>
			<tbody>
				<c:forEach items="${modulos}" var="curso">
					<tr>
						<td>${curso.curso}</td>
						<td>${curso.ano}</td>
						<c:if test="${curso.finalizado eq false}">
							<td>${curso.periodo}</td>
							<td class="finalizado"><span class="glyphicon glyphicon-remove-sign" aria-hidden="true"></span></td>
						</c:if>
						<c:if test="${curso.finalizado eq true}">
							<td>${curso.periodo}</td>
							<td class="finalizado"><span class="glyphicon glyphicon-ok-sign" aria-hidden="true"></span></td>
						</c:if>
						<td><a href="mostraCurso?id=${curso.id}"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a></td>
						<td><a href="removeCurso?id=${curso.id}"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a></td>
				</c:forEach>
			</tbody>
		</table>
	</div>
<c:import url="../rodape-sistema.jsp" />