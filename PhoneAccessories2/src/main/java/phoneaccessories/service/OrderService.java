package phoneaccessories.service;

import java.util.List;

import phoneaccessories.entity.Order;

public interface OrderService {
	List<Order> getListOrder();
	Order findOneByCart_Id(String idc);
	Order findOneById(Long ido);
	void save(Order order);
	//Order getOrderByCustomerId(Long orderId, String customerId);
}
