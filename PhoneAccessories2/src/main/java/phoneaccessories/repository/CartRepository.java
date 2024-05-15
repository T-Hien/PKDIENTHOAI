package phoneaccessories.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import phoneaccessories.entity.Cart;
import phoneaccessories.entity.Category;
import phoneaccessories.entity.User;

public interface CartRepository extends JpaRepository<Cart, String>{

	//Cart findByUser(User user);
	
	//@Query("SELECT c FROM Cart c WHERE c.user = :user")
	List<Cart> findByUser(@Param("user") User user);

	
	@Query("SELECT COUNT(c.id) FROM Cart c")
	Long countCartById();
	
	//List<Cart> findCartByIdUser(String user);
	
	
	@Query("SELECT c FROM Cart c WHERE c.user = :user AND c.id = :id")
	Cart findByUserAndIdCart(@Param("user") User user, @Param("id") String cartId);
	
	@Query("SELECT c FROM Cart c WHERE c.user.id = :userId")
    public Cart findByIdUser(@Param("userId") String userId);

	List<String> findCartIdByUser(@Param("user") User user);
	Category findById(String id);
}
