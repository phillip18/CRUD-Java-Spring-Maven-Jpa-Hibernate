package infoprice.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import infoprice.models.Address;

//Fazendo que o spring conheça o CadastroDao
@Transactional
@Repository
public class CadastroDAO {

	// Gerenciador das entidades
	@PersistenceContext
	private EntityManager manager;
	
	public void gravar(Address cadastro) {

		manager.persist(cadastro);
	}

	public List<Address> listar() {
		return manager.createQuery("select p from Address p", Address.class).getResultList();
	}

	public void remove(Address address) {
		Address deleteaddr= find(Address.getId());
	      manager.remove(deleteaddr);
	}

	public Address find(int id) {
		return manager.find(Address.class, id);
	}
	
	public void edit(Address address) {
		manager.merge(address);
	}
}
