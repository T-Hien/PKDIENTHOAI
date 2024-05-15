package phoneaccessories.service;

import phoneaccessories.entity.CardDetail;
import phoneaccessories.entity.CardDetailPk;


public interface CartDetailService {
	CardDetail save(CardDetail CardDetail);
	void deleteByProductIdAndCartId(String productId, String cartId);
	void updateQuantityByProductIdAndCartId(String productId, String cartId, int newQuantity);
	/*boolean isProductExist(String cartId, String productId);*/

	//THEM
	CardDetail getCardDetailByIds(CardDetailPk ids); 
}
