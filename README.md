# Meu site pessoal

Esse projeto é fruto da Jornada Backend que estou fazendo na Caelum e com fins de estudos e melhoria do meu site pessoal como minha vitrine, estou fazendo esse projeto em Java, utilizando primeiro o framework Spring MVC.

Backend - Spring MVC, JSP
Frontend - Bootstrap e Sass
Automação de tarefas - Gruntjs
Banco de dados - MySql
Servidor - Tomcat
IDE - Eclipse

A idéia é facilitar a edição da página que utiliza componentes do Bootstrap. A parte dinâmica do site é a parte de conhecimentos onde para gerar as barras de porcentagem, utilizo o código:

```
<div class="progress">
	<div class="progress-bar progress-bar-label" role="progressbar" aria-valuenow="**70**" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: **70**%;">**Javascript** - **70**%</div>
</div>
```
O que esta em negrito são as variáveis, onde utilizo o Spring MVC para popular essa informação.

## Instalando as ferramnetas para o desenvolvimento ##

Para utilizar o Gruntjs, precisamos antes instalar o **npm**, um pacote de gerenciamento do *Node Js* - Os passos podem ser visto no link [http://gruntjs.com/getting-started] (http://gruntjs.com/getting-started).