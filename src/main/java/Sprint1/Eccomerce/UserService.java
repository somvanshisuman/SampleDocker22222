package Sprint1.Eccomerce;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Sprint1.Eccomerce.repo.User;
import Sprint1.Eccomerce.repo.UserRepository;



@Service
public class UserService {
	@Autowired
	private UserRepository repo;
	  
	  public User login(String username, String password) 
	  {
		  User user = repo.findByUsernameAndPassword(username, password);
	   return user;
	  }
}
