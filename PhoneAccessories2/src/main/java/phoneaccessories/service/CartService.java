package phoneaccessories.service;

import java.util.List;

import phoneaccessories.entity.Cart;
import phoneaccessories.entity.User;

public interface CartService {

	//Cart getCartbyUser(User user);
	
	List<Cart> getCartByUser(User user);

	
	Cart getCartbyUserAndIdCart(User user, String cart);
	//List<Cart> getCartByIdCartAndUser(User user, String IdCart);

	public Cart getIdCartByIdUser(String userId);
	
	List<String> getCartIdByUser(User user);

	List<Cart> getListCarts();
}
