<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="rdfreitas" %>

<c:import url="cabecalho.jsp" />

		<article class="container-fluid">
		<!-- início do header -->
			<header>
				<nav class="navbar navbar-default navbar-fixed-top">
					<div class="navbar-header">
						
						<button class="navbar-toggle" type="button" data-target=".navbar-collapse" data-toggle="collapse">Menu</button>
					</div>
					<ul class="nav navbar-nav collapse navbar-collapse">
						<li class="active"><a href="#">Perfil <span class="sr-only">(current)</span></a></li>
						<li><a href="#">Experiência</a></li>
						<li><a href="#">Conhecimentos</a></li>
						<li><a href="#">Portfolio</a></li>
					</ul>
				</nav>
				<section class="meu-perfil clearfix">
					<div class="page-header">
						<h1>Rodrigo Freitas</h1>
					</div>
					<section class="perfil col-md-7">
						<p class="titulo-perfil well">Quem sou eu</p>
						<p>Desenvolvedor Front-End desde 2005, pós-graduado em Designer de Interfaces pela Unicarioca. Grande conhecimento em HTML e CSS e há um tempo utilizando os frameworks CSS, Less e Sass.</p>
						<p>Recentemente fiz cursos visando a melhoria com a utilização de Javascript onde comecei a utilizar AngularJS e com isso fui buscar um maior conhecimento de NodeJS, ExpressJS e MongoDB. Procuro sempre trabalhar com grids para que as páginas sempre seja "responsivas", ou seja, que se adequem a qualquer dispositivo. Utilizo atualmente nos meus projetos o "zen-grid" que utiliza o Sass para o desenvolvimento</p>
						<p>Já coordenei uma equipe de Front-End onde para melhoria da produção e organização do setor implementei a utilização do Redmine para gerenciamento de projetos e chamados do dia-a-dia e também implementei o uso do Kanban para melhoria do desenvolvimento das lojas e páginas HTML.</p>
					</section>
					<section class="contato col-md-5">
						<ul>
							<li class="telefone">(21) 975-775-481</li>
							<li class="email">rdfreita@gmail.com</li>
						</ul>
					</section>
				</section>
			</header>
			<!-- Fim do header -->
			<!-- Inicio da seção formação -->
			<section class="formacao clearfix">
				<div class="titulos-formacao">
					<ul>
						<li class="titulo-anos col-md-4">Ano</li>
						<li class="titulo-cursos col-md-4">Formações/Cursos</li>
						<li class="titulo-experiencias col-md-4">Experiência</li>
					</ul>
				</div>
				<section class="ano2015">
					<div class="ano-container col-md-4">
						<p class="ano">2015</p>
					</div>
					<div class="cursos col-md-4">
						<ul>
							<c:forEach items="${aulas}" var="curso">
								<c:if test="${curso.ano == 2015}">
									<c:if test="${not empty curso.finalizado}">
										<li>${curso.curso}</li>
									</c:if>
									<c:if test="${empty curso.finalizado}">
										<li>${curso.curso} - ${curso.periodo}</li>
									</c:if>
								</c:if>
							</c:forEach>							
						</ul>
					</div>
					<div class="experiencias col-md-4">
						<ul>
							<li>Idei4 - Soluções Web
								<ul>
									<li>Desenvolvimento da loja online da Via Verde</li>
									<li>Desenvolvimento da loja online da Tre Amici</li>
									<li>Desenvolvimento do site da loja Z-Shirts</li>
								</ul>
							</li>
						</ul>
					</div>
				</section>
				<section class="ano2014">
					<div class="ano-container col-md-4">
						<p class="ano">2014</p>
					</div>
					<div class="cursos col-md-4">
						<ul>
							<li>Curso Programação front-end com JavaScript e jQuery (Caelum)</li>
							<li>Curso Gerenciamento ágil de projetos de Software com Scrum (Caelum)</li>
						</ul>
					</div>
					<div class="experiencias col-md-4">
						<ul>
							<li>Innersite (Coordenador da área de Helpdesk)
								<ul>
									<li>Coordenação da Equipe de helpdesk dando suporte para todas as atribuições e demandas junto aos clientes.</li>
									<li>Extração de relatórios do Redmine para apresentação mensal junto a gerência.</li>
									<li>Distribuição das atribuições dos analistas utilizando ferramentas da metodologia Scrum (Trello) junto com a ferramenta de chamados e projetos, Redmine.</li>
									<li>Desenvolvimento e suporte a criação de lojas com framework Magento.</li>
								</ul>
							</li>
						</ul>
					</div>
				</section>
				<section class="ano2013">
					<div class="ano-container col-md-4">
						<p class="ano">2013</p>
					</div>
					<div class="cursos col-md-4 col-xs-12">
						<ul>
							<li>CSS3 - Less e Sass Avançado (Treinaweb)</li>
						</ul>
					</div>
					<div class="experiencias col-md-4">
						<ul>
							<li>Nova.com (Analista Frontend)
								<ul>
									<li>Responsável pelo Frontend da loja da Nike (www.nike.com.br) no Brasil e pela ferramenta administrativa da loja.</li>
									<li>Fiz a reformulação de todo frontend da loja e da ferramenta implementando padrões de código e ajeitando todo o css utlizando o framework sass com zen grid.</li>
									<li>Reformulação do cms da loja da Nike, tornando a ferramenta responsiva, acessível a todos os dispositivos.</li>
								</ul>
							</li>
							<li>Compra Fácil (Coordenador da área de Frontend)
								<ul>
									<li>Coordenação da Equipe de Front End do Compra Fácil dando suporte para todas as atribuições e demandas da Empresa na área.</li>
									<li>Gerenciamento de projetos de novas lojas de parcerias do Compra Fácil, como Globomarcas e Ipirangashop.</li>
									<li>Gerenciamento das demandas abertas para ajustes de CSS, HTML, CSS3, HTML5 e JavaScript das lojas parceiras e lojas do Compra Fácil.</li>
									<li>Análise do desempenho da área de Front End para confecção de relatórios gerenciais.</li>
									<li>Extração de relatórios do Redmine para apresentação mensal junto a gerência.</li>
									<li>Distribuição das atribuições dos analistas utilizando ferramentas da metodologia Scrum/Kanban (Trello) junto com a ferramenta de chamados e projetos, Redmine, onde o aumento de produtividade dos analistas chegou a 80% depois da aplicação da metodologia.</li>
								</ul>
							</li>
						</ul>
					</div>
				</section>
				<section class="ano2012">
					<div class="ano-container col-md-4">
						<p class="ano">2012</p>
					</div>
					<div class="cursos col-md-4 col-xs-12">

					</div>
					<div class="experiencias col-md-4">
						<ul>
							<li>Compra Fácil (Supervisor da área de Frontend)
								<ul>
									<li>Gerenciamento de projetos de novas lojas de parcerias do Compra Fácil, como Globomarcas e Ipirangashop.</li>
									<li>Gerenciamento das demandas abertas para ajustes de CSS, HTML, CSS3, HTML5 e JavaScript das lojas parceiras e lojas do Compra Fácil.</li>
									<li>Análise do desempenho da área de Front End para confecção de relatórios gerenciais.</li>
									<li>Implementação da ferramenta Redmine para gerenciamento das demandas de Front End.</li>
									<li>Configuração e adequação do Redmine para os moldes da empresa.</li>
									<li>Implementação da ferramenta Redmine para diversas áreas da empresa.</li>
									<li>Extração de relatórios do Redmine para apresentação mensal junto a gerência.</li>
								</ul>
							</li>
						</ul>
					</div>
				</section>
				<section class="ano2010">
					<div class="ano-container col-md-4">
						<p class="ano">2010</p>
					</div>
					<div class="cursos col-md-4">

					</div>
					<div class="experiencias col-md-4">
						<ul>
							<li>Compra Fácil (Analista Pleno de Frontend)
								<ul>
									<li>Suporte em CSS, CSS3, HTML e HTML5 as lojas do Compra Fácil e parcerias</li>
									<li>Desenvolvi o HTML e CSS das lojas de nicho do Compra Fácil</li>
									<li>Participei do projeto da loja do Shopping Credicard</li>
									<li>Participei de projetos de melhorias e inovações na loja do Compra Fácil</li>
								</ul>
							</li>
						</ul>
					</div>
				</section>
				<section class="ano2006">
					<div class="ano-container col-md-4">
						<p class="ano">2006</p>
					</div>
					<div class="cursos col-md-4">

					</div>
					<div class="experiencias col-md-4">
						<ul>
							<li>LAMCE/UFRJ (Analista Web)
								<ul>
									<li>Participei do projeto de implementação do primeiro site utilizando tecnologia Flash</li>
									<li>Iniciei o projeto da nova página utilizando HTML5, CSS3, utilizando conceitos de acessibilidade e usabilidade</li>
									<li>Fiz aplicações utilizando XML, PHP e Actionscript 2.0</li>
									<li>Participei do projeto de confecção do cd interativo para distribuição em um congresso da ANP e laboratórios da UFRJ
									</li>
								</ul>
							</li>
						</ul>
					</div>
				</section>
				<section class="ano2005">
					<div class="ano-container col-md-4">
						<p class="ano">2005</p>
					</div>
					<div class="cursos col-md-4">
						<ul>
							<li>Pós Graduação - Design de Interfaces (Unicarioca).</li>
						</ul>
					</div>
					<div class="experiencias col-md-4">
						<ul>
							<li>Gameness (Webdesigner)
								<ul>
									<li>Administrei o site www.gamenes.com.br e a loja virtual da Gameness, criando banners promocionais, confeccionando o álbum virtual da empresa e atualizando as páginas do site.</li>
									<li>Criava as imagens dos produtos no Photoshop e adicionava a loja e fazia manutenção do site e da loja.</li>
									<li>Fazia o e-mail marketing da loja e os sites dos atletas patrocinados pela loja.</li>
								</ul>
							</li>
						</ul>
					</div>
				</section>

			</section>
			<!-- Fim da seção formação -->
			<!-- Início da seção conhecimento -->
			<section class="classeConhecimento clearfix">
				<h2>Conhecimentos</h2>
				<div class="col-md-10">
				
				<c:forEach items="${tecnologia}" var="conhecimento">
					<rdfreitas:progressBar quantidade="${conhecimento.quantidade}" conhecimento="${conhecimento.conhecimento}" />
				</c:forEach>
				</div>
			</section>
			<!-- Fim da seção conhecimento -->
			<!-- Início da seção portfolio -->
			<section class="portfolio clearfix">
				<h2>Portfolio</h2>
				<ul class="media-list">
					<li class="media col-md-11 projeto">
						<div class="media-body">
							<span class="titulo-portfolio">Z-Shirts</span>
							<span class="descricao-portfolio">
								Site de loja de venda de camisas.<br />
								<ul>
									<li>HTML</li>
									<li>CSS</li>
									<li>jQuery</li>
								</ul>
							</span>
							<span class="url-portfolio"><a href="http://www.zshirts.com.br">www.zshirts.com.br</a></span>
						</div>
						<div class="media-right">
							<a href="#">
								<img src="css/images/zshirts.jpg" alt="Z-Shirts" class="imagem-portfolio media-object" />
							</a>
						</div>
					</li>
					<li class="media col-md-11 projeto">
						<div class="media-body">
							<span class="titulo-portfolio">Via Verde Online</span>
							<span class="descricao-portfolio">
								E-commerce de venda de produtos naturais.<br />
								<ul>
									<li>Magento</li>
									<li>PHP</li>
									<li>jQuery</li>
									<li>HTML</li>
									<li>SASS</li>
									<li>Gruntjs</li>
								</ul>
							</span>
							<span class="url-portfolio"><a href="http://www.viaverdeonline.com.br">www.viaverdeonline.com.br</a></span>
						</div>
						<div class="media-right">
							<a href="#">
								<img src="css/images/viaverde.jpg" alt="Via Verde Online" class="imagem-portfolio media-object" />
							</a>
						</div>
					</li>
					<li class="media col-md-11 projeto">
						<div class="media-body">
							<span class="titulo-portfolio">Tre Amici</span>
							<span class="descricao-portfolio">
								E-commerce de venda de blusas para o público feminino.<br />
								<ul>
									<li>Magento</li>
									<li>PHP</li>
									<li>jQuery</li>
									<li>HTML</li>
									<li>CSS</li>
								</ul>
							</span>
							<span class="url-portfolio"><a href="http://www.treamici.com.br">www.treamici.com.br</a></span>
						</div>
						<div class="media-right">
							<a href="#">
								<img src="css/images/treamici.jpg" alt="Tre Amici" class="imagem-portfolio media-object" />
							</a>
						</div>
					</li>
				</ul>
			</section>
			<!-- Fim da seção portfolio -->
		</article>

<c:import url="rodape.jsp" />