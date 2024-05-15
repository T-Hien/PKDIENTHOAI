package phoneaccessories.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name ="HINHTHUCTHANHTOAN")
public class Pays {
	@Id
	@Column(name ="MATHANHTOAN")
	private String id;
	
	@Column(name = "KIEUTHANHTOAN", length = 100)
	private String typePay;
	
	public Pays() {
		// TODO Auto-generated constructor stub
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTypePay() {
		return typePay;
	}

	public void setTypePay(String typePay) {
		this.typePay = typePay;
	}

	
	
	
}
