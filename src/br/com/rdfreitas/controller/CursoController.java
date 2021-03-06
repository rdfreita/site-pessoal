package br.com.rdfreitas.controller;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.rdfreitas.dao.CursoDao;
import br.com.rdfreitas.modelo.Conhecimento;
import br.com.rdfreitas.modelo.Curso;

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
		public String adiciona(Curso curso){
			dao.adiciona(curso);
			return "curso/adicionado";
		}
		@RequestMapping("listaCursos")
		public String listaCursos(Model model){
			List<Curso> cursos = dao.listaCursos();
			model.addAttribute("modulos", cursos);
			return "curso/lista";
		}
		@RequestMapping("removeCurso")
		public String remove(Curso curso){
			dao.remove(curso);
			return "redirect:listaCursos";
		}
		
		@RequestMapping("mostraCurso")
		public String mostra(Long id, Model model){
			model.addAttribute("curso", dao.buscaPorId(id));
			return "curso/mostra";
		}
		
		@RequestMapping("alteraCurso")
		public String altera(Curso curso){
			dao.altera(curso);
			return "redirect:listaCursos";
		}
}
