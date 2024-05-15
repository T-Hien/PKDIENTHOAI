package phoneaccessories.service;

import java.util.List;

import phoneaccessories.entity.Pays;


public interface PaysService {
	List<Pays> getPays();
	
	Pays getPaysById(String id);

}
