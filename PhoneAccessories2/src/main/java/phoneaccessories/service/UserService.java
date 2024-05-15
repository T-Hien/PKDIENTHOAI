package phoneaccessories.service;

import java.util.List;

import phoneaccessories.entity.User;


public interface UserService {
	User getUserById(String id);
	public void save(User user);
	void updateUser(User user);
	List<User> findAllByStatus(boolean b);

}
