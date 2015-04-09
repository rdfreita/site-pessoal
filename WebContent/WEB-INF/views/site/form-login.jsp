<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="rdfreitas" %>

<c:import url="../cabecalho-sistema.jsp" />

	<h2>Página de login</h2>
		<form action="efetuaLogin" method="post">
			<p class="input-group">
				<input type="text" name="login" id="login" class="form-control" placeholder="Login" aria-describedby="basic-addon" />
			</p>
			<p class="input-group">
				<input type="password" name="senha" id="senha" class="form-control" placeholder="Senha" aria-describedby="basic-addon2" />
			</p>
			<p>
				<input type="submit" value="Entrar" />
			</p>
		</form>

<c:import url="rodape.jsp" />