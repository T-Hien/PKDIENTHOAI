package phoneaccessories.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import phoneaccessories.entity.Order;
import phoneaccessories.repository.OrderRepository;
import phoneaccessories.service.OrderService;

@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderRepository orderRepository;
	
	@Override
	public List<Order> getListOrder() {
		return orderRepository.findAll();
	}

	@Override
	public Order findOneByCart_Id(String idc) {
		return orderRepository.findOneByCart_Id(idc);
	}

	@Override
	public Order findOneById(Long ido) {
		return orderRepository.findOne(ido);
	}

	@Override
	public void save(Order order) {
		orderRepository.save(order);
		
	}
	//@Override
   // public Order getOrderByCustomerId(Long  orderId, String customerId) {
        
       // return orderRepository.findByIdAndCustomerId(orderId, customerId);
   // }
	
}
