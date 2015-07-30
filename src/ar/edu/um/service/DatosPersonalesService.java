package ar.edu.um.service;

import java.math.BigDecimal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ar.edu.um.dao.DatosPersonalesDAO;
import ar.edu.um.model.DatosPersonales;

@Service("datosPersonalesService")
public class DatosPersonalesService {
	private DatosPersonalesDAO datosPersonalesDao;
	

	@Autowired
	public void setDatosPersonalesDao(DatosPersonalesDAO datosPersonalesDao) {
		this.datosPersonalesDao = datosPersonalesDao;
	}
	
	public void create(DatosPersonales datosPersonales){
		datosPersonalesDao.create(datosPersonales);
	}
	
	public DatosPersonales getData(BigDecimal dni){
		return datosPersonalesDao.getData(dni);
	}
	
	public void modify(DatosPersonales datosPersonales){
		datosPersonalesDao.modify(datosPersonales);
	}
}
