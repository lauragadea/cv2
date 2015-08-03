package ar.edu.um.service;

import java.math.BigDecimal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ar.edu.um.dao.OtrosAntecedentesDAO;
import ar.edu.um.model.OtrosAntecedentes;


@Service("otrosAntecedentesService")
public class OtrosAntecedentesService {

	private OtrosAntecedentesDAO otrosantecedentesDao;
	

	@Autowired
	public void setOtrosAntecedentesDAO(OtrosAntecedentesDAO otrosantecedentesDao) {
		this.otrosantecedentesDao = otrosantecedentesDao;
	}
	
	public void create(OtrosAntecedentes otrosAntecedentes){
		otrosantecedentesDao.create(otrosAntecedentes);
	}

	public OtrosAntecedentes getData(BigDecimal dni) {
		return otrosantecedentesDao.getData(dni);
	}
	
	public void modify(OtrosAntecedentes otrosAntecedentes){
		otrosantecedentesDao.modify(otrosAntecedentes);
	}
}
