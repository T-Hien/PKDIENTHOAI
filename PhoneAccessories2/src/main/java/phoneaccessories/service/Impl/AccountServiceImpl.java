package phoneaccessories.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import phoneaccessories.entity.Account;
import phoneaccessories.entity.Position;
import phoneaccessories.repository.AccountRepository;
import phoneaccessories.service.AccountService;

@Service
public class AccountServiceImpl implements AccountService {

	@Autowired
	private AccountRepository accountRpst;

	@Override
	public Account findByUsername(String username) {

		return accountRpst.findByUsername(username);
	}

	@Override
	public void save(Account account) {

		account.setStatus(true);

		accountRpst.save(account);

	}

	@Override
	public void delete(Account account) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<String> gellListUnameAccount() {
		return accountRpst.findUsernames();
	}

	@Override
	public void saveStaff(Account account) {
		
		BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
		account.setPasword(bCryptPasswordEncoder.encode(account.getPasword()));
		account.setStatus(true);
		
		accountRpst.save(account);

	}
	
	//THÊM
	//GIO HANG
	@Override
	public Account getAccountById(String id) {
		return accountRpst.findOne(id);
	}
	
	@Override
	public void updatePositionByUser(String username, Position position){
		accountRpst.updatePositionByUsername(username, position);	
	}
	@Override
	public void saveUser(Account account) {
		
		BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
		account.setPasword(bCryptPasswordEncoder.encode(account.getPasword()));
		account.setStatus(true);
		
		accountRpst.save(account);

	}

}
