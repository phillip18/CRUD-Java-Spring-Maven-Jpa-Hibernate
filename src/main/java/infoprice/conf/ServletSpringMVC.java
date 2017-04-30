// Classe basica de configuração do Spring
package infoprice.conf;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class ServletSpringMVC  extends AbstractAnnotationConfigDispatcherServletInitializer {

	@Override
	protected Class<?>[] getRootConfigClasses() {
		return null;
	}
	
	//Pede um array de classes de configura��es
	@Override
	protected Class<?>[] getServletConfigClasses() {
		return new Class[] {AppWebConfiguration.class, JPAConfiguration.class};
	}
	
	//Mapeamentos que queremos que nosso servlet atenda
	@Override
	protected String[] getServletMappings() {
		return new String[] {"/"};
	}
		

}
