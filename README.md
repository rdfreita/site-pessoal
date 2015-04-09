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
	<div class="progress-bar progress-bar-label" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 70%;">Javascript - 70%</div>
</div>
```
No exemplo acima, onde tem o número "70" e a tecnologia "Javascript", fiz um programa com o Spring MVC onde preencho um formulário com essas duas informações e populo essa informação tornando o processo dinâmico.

O código agora fica assim.

```
<c:forEach items="${skills}" var="conhecimento">
	<rdfreitas:progressBar quantidade="${conhecimento.quantidade}" conhecimento="${conhecimento.conhecimento}" />
</c:forEach>
				
```

## Instalando as ferramentas para o desenvolvimento ##

Para utilizar o Gruntjs, precisamos antes instalar o **npm**, um pacote de gerenciamento do *Node Js* - Os passos podem ser visto no link [http://gruntjs.com/getting-started] (http://gruntjs.com/getting-started).

Depois do Gruntjs instalado, adicionar o [plugin do Sass] (https://www.npmjs.com/package/grunt-contrib-sass) para edição do CSS e minificação do arquivo CSS. Para essa tarefa é necessário que você tenha o Ruby e o Sass instalado na sua máquina. Se você utiliza o OS x ou Linux, provavelmente você já tem o Ruby instalado. Teste com "ruby -v" no seu terminal. Se realmente já estiver instalado o Ruby na sua máquina, execute "gem install sass" no seu terminal para instalar o Sass.

Para instalar o Sass no Windows, [clique aqui] (http://sass-lang.com/install).

Precisamos também do jQuery para utilizar com o Bootstrap. O jQuery pode ser adquirido no link [http://jquery.com] (http://jquery.com).