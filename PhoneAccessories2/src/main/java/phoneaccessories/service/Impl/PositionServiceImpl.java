package phoneaccessories.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import phoneaccessories.entity.Position;
import phoneaccessories.repository.PositionRepository;
import phoneaccessories.service.PositionService;

@Service
public class PositionServiceImpl implements PositionService{
	
	@Autowired PositionRepository positionRepository;
	
	@Override
	public Position findOneByName(String name) {
		return positionRepository.findOneByName(name) ;
	}

	@Override
	public void save(Position position) {
		positionRepository.save(position);
		
	}

	//THÊM
		@Override
		public Position getPositionById(String id) {
			return positionRepository.findOne(id);
		}

}
