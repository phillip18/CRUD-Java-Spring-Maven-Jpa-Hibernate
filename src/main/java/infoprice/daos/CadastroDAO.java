package infoprice.daos;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import infoprice.models.Address;

//Fazendo que o spring conheça o CadastroDao
@Transactional
@Repository
public class CadastroDAO {
	
	//Gerenciador das entidades
	@PersistenceContext
	private EntityManager manager;
	
	public void gravar(Address cadastro){
		
		manager.persist(cadastro);
	}

	public List<Address> listar() {
		return manager.createQuery("select p from Address p", Address.class).getResultList();
	}
}
