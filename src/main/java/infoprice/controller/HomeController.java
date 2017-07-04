package infoprice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//Definindo para o Spring que esta classe � um controller
@Controller
public class HomeController {
	
	//Definindo que este metodo atende a um determinado path ou endere�o
	@RequestMapping("/")
	private String index() {
		return "home";
	}

}
