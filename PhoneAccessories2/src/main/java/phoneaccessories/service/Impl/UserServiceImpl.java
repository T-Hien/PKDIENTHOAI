package phoneaccessories.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import phoneaccessories.entity.User;
import phoneaccessories.repository.UserRepository;
import phoneaccessories.service.UserService;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	UserRepository userRepository;
	
	
	@Override
	public User getUserById(String id) {
		return userRepository.findOne(id);
	}
	

	@Override
	public void save (User user)
	{
		userRepository.save(user);
	}

	@Override
	public void updateUser(User user) {
		// TODO Auto-generated method stub
		userRepository.save(user);
	}


	@Override
	public List<User> findAllByStatus(boolean b) {
		// TODO Auto-generated method stub
		return userRepository.findAllByAccountStatus(b);
	}
}
