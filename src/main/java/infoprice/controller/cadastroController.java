package infoprice.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import infoprice.daos.CadastroDAO;
import infoprice.models.Address;

@Controller
public class cadastroController {
	
	//Instanciando o controlador de persistencia no banco
	@Autowired(required = true)
	private CadastroDAO cadastroDao;
	
	//Criando rota
	@RequestMapping("/cadastro/form")
	public String form(){
		return "cadastro/form";
	}	
	
	@RequestMapping(value="/cadastro", method=RequestMethod.POST)	// Persistindo os valores no banco
	public ModelAndView gravar(Address address, RedirectAttributes redirecAttributes){
		System.out.println(address);
		cadastroDao.gravar(address);
		redirecAttributes.addFlashAttribute("sucesso", "Cadastro efetuado com Sucesso");
		
		return new ModelAndView("redirect:cadastro/lista"); 
	}
	
	@RequestMapping(value="/cadastro/lista", method=RequestMethod.GET )// Pesquisando os valores no banco
	public ModelAndView listar(){
	    List<Address> address = cadastroDao.listar();
	    ModelAndView modelAndView = new ModelAndView("/cadastro/lista");
	    modelAndView.addObject("address", address);
	    
	    return modelAndView;
	}

}
