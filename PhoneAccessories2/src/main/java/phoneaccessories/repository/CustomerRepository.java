package phoneaccessories.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import phoneaccessories.entity.*;

public interface CustomerRepository extends JpaRepository<User, String> {
    User findByAccount(String account);

	
}
