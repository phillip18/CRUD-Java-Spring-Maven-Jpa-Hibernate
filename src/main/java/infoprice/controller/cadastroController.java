package infoprice.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import infoprice.daos.CadastroDAO;
import infoprice.models.Address;
import java.util.Collection;
import java.util.List;

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
	public String gravar(Address address){
		System.out.println(address);
		cadastroDao.gravar(address);

		return "cadastro/ok";	
	}
	
	@RequestMapping(value="/cadastro/lista", method=RequestMethod.GET )// Pesquisando os valores no banco
	public ModelAndView listar(){
	    List<Address> address = cadastroDao.listar();
	    ModelAndView modelAndView = new ModelAndView("/cadastro/lista");
	    modelAndView.addObject("address", address);
	    
	    return modelAndView;
	}

}
