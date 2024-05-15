package phoneaccessories.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import phoneaccessories.entity.Pays;
import phoneaccessories.repository.PaysRepository;
import phoneaccessories.service.PaysService;

@Service
public class PayServiceImpl implements PaysService{
	
	@Autowired
	PaysRepository PaysRpstr;
	
	@Override
	public List<Pays> getPays(){
		return PaysRpstr.findAll();
	}
	
	@Override
	public Pays getPaysById(String id) {
		return PaysRpstr.findOne(id);
	}

}
