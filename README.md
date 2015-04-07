# Meu site pessoal

Esse projeto � fruto da Jornada Backend que estou fazendo na Caelum e com fins de estudos e melhoria do meu site pessoal como minha vitrine, estou fazendo esse projeto em Java, utilizando primeiro o framework Spring MVC.

Backend - Spring MVC, JSP

Frontend - Bootstrap e Sass

Automa��o de tarefas - Gruntjs

Banco de dados - MySql

Servidor - Tomcat

IDE - Eclipse

A id�ia � facilitar a edi��o da p�gina que utiliza componentes do Bootstrap. A parte din�mica do site � a parte de conhecimentos onde para gerar as barras de porcentagem, utilizo o c�digo:

```
<div class="progress">
	<div class="progress-bar progress-bar-label" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 70%;">Javascript - 70%</div>
</div>
```
No exemplo acima, onde tem o n�mero "70" e a tecnologia "Javascript", fiz um programa com o Spring MVC onde preencho um formul�rio com essas duas informa��es e populo essa informa��o tornando o processo din�mico.

```
<c:forEach items="${skills}" var="conhecimento">
	<rdfreitas:progressBar quantidade="${conhecimento.quantidade}" conhecimento="${conhecimento.conhecimento}" />
</c:forEach>
				
```
O c�digo agora fica assim.

## Instalando as ferramnetas para o desenvolvimento ##

Para utilizar o Gruntjs, precisamos antes instalar o **npm**, um pacote de gerenciamento do *Node Js* - Os passos podem ser visto no link [http://gruntjs.com/getting-started] (http://gruntjs.com/getting-started).