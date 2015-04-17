package br.com.rdfreitas.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/*import br.com.rdfreitas.dao.JdbcConhecimentoDao;*/
import br.com.rdfreitas.dao.JdbcUsuarioDao;
import br.com.rdfreitas.modelo.Usuario;

@Controller
public class LoginController {
	
private final JdbcUsuarioDao dao;
	
	@Autowired
	public LoginController(JdbcUsuarioDao dao){
		this.dao = dao;
	}
	
	@RequestMapping("loginForm")
	public String loginForm(){
		return "site/form-login";
	}
	
	@RequestMapping("efetuaLogin")
	public String efetuaLogin(Usuario usuario, HttpSession session){
		if(dao.existeUsuario(usuario)){
			session.setAttribute("usuarioLogado", usuario);
			return "menu";
		}
		return "redirect:loginForm";
	}
	
	@RequestMapping("logout")
	public String logout(HttpSession session){
		session.invalidate();
		return "redirect:loginForm";
	}
}
