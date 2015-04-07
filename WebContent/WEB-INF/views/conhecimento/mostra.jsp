<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="rdfreitas" %>

<c:import url="../cabecalho-sistema.jsp" />
	<div class="container">
		<header>
			<h1>Alterar o conhecimento de ${conhecimento.conhecimento}</h1>
		</header>
		<section class="main">
			<form action="alteraConhecimento" method="post">
				<input type="hidden" name="id" value="${conhecimento.id}" />
				<p class="input-group">
					<input type="text" name="quantidade" id="quantidade" value="${conhecimento.quantidade}" class="form-control" placeholder="Quantidade de conhecimento" aria-describedby="basic-addon2" />
					<span class="input-group-addon" id="basic-addon2">%</span>
				</p>
				<p>
					<label for="conhecimento">Conhecimento</label>
					<input type="text" name="conhecimento" id="conhecimento" value="${conhecimento.conhecimento}" placeholder="Ex.: HTML" class="form-control" />
				</p>
				<p>
					<input type="submit" value="Alterar" />
				</p>
			</form>
		</section>
	</div>
<c:import url="../rodape.jsp" />