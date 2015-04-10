package br.com.rdfreitas.controller;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.rdfreitas.dao.ConhecimentoDao;
import br.com.rdfreitas.dao.CursoDao;
import br.com.rdfreitas.modelo.Conhecimento;
import br.com.rdfreitas.modelo.Cursos;

@Transactional
@Controller
public class MainController {

	ConhecimentoDao daoConhecimento;
	CursoDao daoCurso;
	
	@RequestMapping("/")
	public String lista(Model model){
		List<Conhecimento> conhecimentos = daoConhecimento.listaConhecimentos();
		model.addAttribute("skills", conhecimentos);
		
		List<Cursos> cursos = daoCurso.listaCursos();
		model.addAttribute("modulos", cursos);

		return "site/index";
	}
	
}
