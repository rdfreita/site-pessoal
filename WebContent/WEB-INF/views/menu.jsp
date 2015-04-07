<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="rdfreitas" %>

<c:import url="cabecalho-sistema.jsp" />

	<h2>Página inicial do cadastro de conhecimentos</h2>
	<p>Bem-vindo, ${usuarioLogado.login}</p>
	<p><a href="lista">Clique aqui</a> para acessar a lista de tarefas.</p>

<c:import url="rodape.jsp" />