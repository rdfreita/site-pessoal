<header>
		<h2>Sistema do site rdfreitas.com.br</h2>
		<p class="boas-vindas">Bem-vindo, ${usuarioLogado.login}</p>
		<nav class="navbar navbar-default">
		  <div class="container-fluid">
		    <!-- Brand and toggle get grouped for better mobile display -->
		    <div class="navbar-header">
		      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      <a class="navbar-brand" href="#">Idei4</a>
		    </div>
		
		    <!-- Collect the nav links, forms, and other content for toggling -->
		    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		      <ul class="nav navbar-nav">
		        <li class="dropdown">
		          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Conhecimentos <span class="caret"></span></a>
		          <ul class="dropdown-menu" role="menu">
		            <li><a href="listaConhecimentos">Lista de Conhecimentos</a></li>
		            <li><a href="novoConhecimento">Adicionar Conhecimento</a></li>
		          </ul>
		        </li>
		        <li class="dropdown">
		          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Cursos <span class="caret"></span></a>
		          <ul class="dropdown-menu" role="menu">
		            <li><a href="listaCursos">Lista de Cursos</a></li>
		            <li><a href="novoCurso">Adicionar Cursos</a></li>
		          </ul>
		        </li>
		      </ul>
		      <ul class="nav navbar-nav navbar-right">
		        <a href="logout"><button type="button" class="btn btn-default navbar-btn">Logout</button></a>
		      </ul>
		    </div><!-- /.navbar-collapse -->
		  </div><!-- /.container-fluid -->
		</nav>
	</header>
