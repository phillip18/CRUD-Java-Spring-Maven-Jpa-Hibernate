package infoprice.conf;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import infoprice.controller.HomeController;
import infoprice.daos.CadastroDAO;

@EnableWebMvc // habilitando o Spring dentro do projeto
@ComponentScan(basePackageClasses = { HomeController.class, CadastroDAO.class }) // Mostrando
																					// os
																					// controller
																					// para
																					// o
																					// Spring
public class AppWebConfiguration extends WebMvcConfigurerAdapter {

	// Toda classe gerenciada pelo spring e um Bean
	@Bean
	public InternalResourceViewResolver internalResourceViewResolver() {
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setPrefix("/WEB-INF/views/");
		resolver.setSuffix(".jsp");

		return resolver;
	}

	@Override
	public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
		configurer.enable();
	}
}