package br.com.rdfreitas.controller;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.rdfreitas.dao.CursoDao;
import br.com.rdfreitas.modelo.Cursos;

@Transactional
@Controller
public class CursoController {

		@Autowired
		CursoDao dao;
		
		@RequestMapping("novoCurso")
		public String form(){
			return "curso/cadastro-curso";
		}
		@RequestMapping("cadastraCurso")
		public String adiciona(Cursos curso){
			dao.adiciona(curso);
			return "curso/adicionado";
		}
}
