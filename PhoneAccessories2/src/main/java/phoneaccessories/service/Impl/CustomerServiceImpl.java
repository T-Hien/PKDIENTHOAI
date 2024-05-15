package phoneaccessories.service.Impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import phoneaccessories.entity.User;
import phoneaccessories.repository.CustomerRepository;
import phoneaccessories.service.CustomerService;

@Service
public class CustomerServiceImpl implements CustomerService {
    @Autowired
    private CustomerRepository customerRepository;

    @Override
    public User getCustomer() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String account = authentication.getName();
        
        return customerRepository.findByAccount(account); 
    }

    
}
