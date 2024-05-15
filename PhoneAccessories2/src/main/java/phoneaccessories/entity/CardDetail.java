package phoneaccessories.entity;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.Table;


@Entity
@Table(name = "CHITIETGIOHANG")
public class CardDetail {
	@EmbeddedId
	private CardDetailPk id;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@MapsId("product")
	@JoinColumn(name ="MASANPHAM")
	private Product product;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@MapsId("cart")
	@JoinColumn(name = "MAGIOHANG")
	private Cart cart;
	
	@Column(name = "SOLUONG")
	private int quantity;
	
	public CardDetail() {
		super();
	}
	
	public CardDetail(CardDetailPk id, int quantity, Product product, Cart cart) {
		super();
		this.id = id;
		this.quantity = quantity;
		this.product = product;
		this.cart = cart;
	}
	
	
	public CardDetail(CardDetailPk id, Product product, Cart cart, int quantity) {
		super();
		this.id = id;
		this.product = product;
		this.cart = cart;
		this.quantity = quantity;
	}


	public CardDetailPk getId() {
		return id;
	}

	public void setId(CardDetailPk id) {
		this.id = id;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

}
