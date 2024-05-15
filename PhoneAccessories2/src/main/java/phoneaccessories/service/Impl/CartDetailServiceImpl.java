package phoneaccessories.service.Impl;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import phoneaccessories.entity.CardDetail;
import phoneaccessories.entity.CardDetailPk;
import phoneaccessories.repository.Cart_DetailRepository;
import phoneaccessories.service.CartDetailService;

@Service
public class CartDetailServiceImpl implements CartDetailService{
	
	@Autowired
	Cart_DetailRepository cart_detail;
	
	@Override
	public CardDetail save(CardDetail detailsProduct) {
		return cart_detail.save(detailsProduct);
	}

	
	//Thêm
	@Override
	@Transactional
	public void deleteByProductIdAndCartId(String productId, String cartId) {
		cart_detail.deleteByProductIdAndCartId(productId, cartId);;
	}
	
	@Override
	@Transactional
	public void updateQuantityByProductIdAndCartId(String productId, String cartId, int newQuantity) {
		cart_detail.updateQuantityByProductIdAndCartId(productId, cartId,newQuantity);;
	}


	/*@Override
	public boolean isProductExist(String cartId, String productId) {
		// TODO Auto-generated method stub
		return cart_detail.isProductExist(cartId, productId);
	}*/
	@Override
	public CardDetail getCardDetailByIds(CardDetailPk ids) {
		// TODO Auto-generated method stub
		return cart_detail.findByCartIdAndProductId(ids.getCard(), ids.getProduct());
	} 

}
