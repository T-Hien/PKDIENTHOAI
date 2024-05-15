package phoneaccessories.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import phoneaccessories.entity.User;

public interface UserRepository extends JpaRepository<User, String>{
	
	@Transactional
    @Modifying
    @Query("UPDATE User kh SET kh.sdt = :sdt, kh.address = :address WHERE kh.id = :id")
    void updateSdtAndAddressById(@Param("id") String id, @Param("sdt") String sdt, @Param("address") String address);
	
	@Query("SELECT COUNT(c.id) FROM User c")
	Long countUserById();
	List<User> findAllByAccountStatus(boolean b);

}
