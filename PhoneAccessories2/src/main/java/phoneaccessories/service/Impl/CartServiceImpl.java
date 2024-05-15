package phoneaccessories.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import phoneaccessories.entity.Cart;
import phoneaccessories.entity.User;
import phoneaccessories.repository.CartRepository;
import phoneaccessories.service.CartService;
@Service
public class CartServiceImpl implements CartService{
	@Autowired
	CartRepository carterespository;
	/*
	@Override
	public Cart getCartbyUser(User user) {
	    return carterespository.findByUser(user);
	}*/
	
	//CART
	@Override
	public List<Cart> getCartByUser(User user){
		return carterespository.findByUser(user);
	}

	
	@Override
	public Cart getCartbyUserAndIdCart(User user, String cart) {
		return carterespository.findByUserAndIdCart(user,cart);
	}

	@Override
	public Cart getIdCartByIdUser(String userId) {
		// TODO Auto-generated method stub
		return carterespository.findByIdUser(userId);
	}
	
	@Override
	public List<String> getCartIdByUser(User user){
		return carterespository.findCartIdByUser(user);
	}
	
	@Override
	public List<Cart> getListCarts(){
		return carterespository.findAll();
	}

}
