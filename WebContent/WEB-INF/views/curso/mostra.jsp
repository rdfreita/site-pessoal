<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="rdfreitas" %>

<c:import url="../cabecalho-sistema.jsp" />
	<div class="container">
		<header>
			<h1>Alterar o curso de ${curso.curso}</h1>
		</header>
		<section class="main">
			<form action="alteraCurso" method="post">
				<input type="hidden" name="id" value="${curso.id}" />
				<p class="input-group">
					<input type="text" name="curso" id="curso" value="${curso.curso}" class="form-control" aria-describedby="basic-addon2" />
				</p>
				<p>
					<input type="text" name="ano" id="ano" value="${curso.ano}" class="form-control" />
				</p>
				<p>
					<input type="text" name="periodo" id="periodo" value="${curso.periodo}" class="form-control" />
				<p>
					Finalizado 
				<c:if test="${curso.finalizado eq false}">
					<input type="checkbox" name="finalizado" id="finalizado" class="form-control" />
				</c:if>
				<c:if test="${curso.finalizado eq true}">
					<input type="checkbox" name="finalizado" id="finalizado" class="form-control" checked="checked" />
				</c:if>
					<input type="submit" value="Alterar" />
				</p>
			</form>
		</section>
	</div>
<c:import url="../rodape-sistema.jsp" />