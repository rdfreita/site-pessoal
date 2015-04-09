<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="rdfreitas" %>

<c:import url="../cabecalho-sistema.jsp" />
<c:import url="../header.jsp" />

		<section class="main">
			<form action="cadastraConhecimento" method="post">
				<p class="input-group col-md-3 row">
					<input type="text" name="quantidade" id="quantidade" class="form-control" placeholder="Quantidade de conhecimento" aria-describedby="basic-addon2" />
					<span class="input-group-addon" id="basic-addon2">%</span>
				</p>
				<p class="input-group col-md-5 row">
					<label for="conhecimento">Conhecimento</label>
					<input type="text" name="conhecimento" id="conhecimento" placeholder="Ex.: HTML" class="form-control" />
				</p>
				<p class="botao-submit row">
					<input type="submit" value="Cadastrar" />
				</p>
			</form>
		</section>
	</div>
	
<c:import url="../rodape-sistema.jsp" />