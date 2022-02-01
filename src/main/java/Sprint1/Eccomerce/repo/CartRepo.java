package Sprint1.Eccomerce.repo;




import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
//import org.springframework.data.jpa.repository.JpaRepository;
//import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import Sprint1.Eccomerce.Entity.CartModel;

@Repository
public interface CartRepo extends JpaRepository<CartModel,Integer> {

	//@Override
	//List<UserModel> findAll();
	List<CartModel> findByName(String name);
	//List<CartModel> findByName(String name);
	//List<UserModel> deletByid(int id);
	//List<Usermodel> findById();
	
	
	
	
	
}

