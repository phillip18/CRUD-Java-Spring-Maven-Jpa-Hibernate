package infoprice.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import antlr.collections.List;
import infoprice.daos.CadastroDAO;
import infoprice.models.Address;


@Controller
public class cadastroController {
	
	//Instanciando o controlador de persist�ncia no banco
	@Autowired(required = true)
	private CadastroDAO cadastroDao;
	
	//Criando rota
	@RequestMapping("/cadastro/form")
	public String form(){
		return "cadastro/form";
	}
	
	public ModelAndView listar(){
	    List<Address> produtos = cadastroDAO.listar();
	    ModelAndView modelAndView = new ModelAndView("/cadastro/lista");
	    modelAndView.addObject("address", produtos);
	    return modelAndView;
	}
	
	@RequestMapping("/cadastro")	// Persistindo os valores no banco
	public String gravar(Address address){
		System.out.println(address);
		cadastroDao.gravar(address);

		return "cadastro/ok";	
	}
	
	public String listar(){
		List<Address> address = cadastroDao.listar();
	}
}
