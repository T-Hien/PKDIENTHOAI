package phoneaccessories.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import phoneaccessories.entity.CardDetail;
import phoneaccessories.entity.CardDetailPk;

public interface Cart_DetailRepository extends JpaRepository<CardDetail,CardDetailPk>{
	 
	 List<CardDetail> findByCartId(String id);
	 void deleteByProductIdAndCartId(String product,String cart);
	 @Modifying
	 @Query("UPDATE CardDetail cd SET cd.quantity = :newQuantity WHERE cd.product.id = :productId AND cd.cart.id = :cartId")
	 void updateQuantityByProductIdAndCartId(@Param("productId") String productId, @Param("cartId") String cartId, @Param("newQuantity") int newQuantity);
	 /*boolean isProductExist(String cartId, String productId);*/
	 
	 //THÊM
	 CardDetail findByCartIdAndProductId(String cartId, String productId);
}
