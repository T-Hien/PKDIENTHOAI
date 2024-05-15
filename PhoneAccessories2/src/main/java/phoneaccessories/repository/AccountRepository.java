package phoneaccessories.repository;

import java.util.List;

import javax.transaction.TransactionScoped;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import phoneaccessories.entity.Account;
import phoneaccessories.entity.Position;

public interface AccountRepository extends JpaRepository<Account, String> {
	@Query("SELECT t.username FROM Account t")
	List<String> findUsernames();
	
	Account findByUsername (String username);
	
	@TransactionScoped
	 @Modifying
	 @Query("UPDATE Account ac SET ac.position = :position WHERE ac.username = :username")
	void updatePositionByUsername(@Param("username") String username,@Param("position") Position position);
	
}
