<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="rdfreitas" %>

<c:import url="../cabecalho-sistema.jsp" />
<c:import url="../header.jsp" />

		<section class="main">
			<form action="cadastraCurso" method="post">
				<p class="input-group col-md-3 row">
					<input type="text" name="curso" id="curso" class="form-control" placeholder="Qual o curso feito?" aria-describedby="basic-addon2" />
				</p>
				<p class="input-group col-md-5 row">
					<input type="text" name="ano" id="ano" placeholder="Qual o ano que foi feito o curso?" class="form-control" />
				</p>
				<p class="botao-submit row">
					<input type="submit" value="Cadastrar curso" />
				</p>
			</form>
		</section>
	
<c:import url="../rodape-sistema.jsp" />