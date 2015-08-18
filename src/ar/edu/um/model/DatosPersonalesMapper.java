package ar.edu.um.model;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class DatosPersonalesMapper implements RowMapper{

	 public DatosPersonales mapRow(ResultSet rs, int rowNum) throws SQLException {    
		 DatosPersonales datosPersonales = new DatosPersonales();
		 datosPersonales.setDni(rs.getBigDecimal("dni"));
		 datosPersonales.setNombre(rs.getString("nombre"));
		 datosPersonales.setApellido(rs.getString("apellido"));  
		 datosPersonales.setEmail(rs.getString("email"));
		 
		 return datosPersonales;
		   
	 }    
	}    