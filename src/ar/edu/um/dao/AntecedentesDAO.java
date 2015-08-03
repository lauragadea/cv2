package ar.edu.um.dao;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Component;

import ar.edu.um.model.Antecedentes;
import ar.edu.um.model.DatosPersonales;

@Component("antecedentesDao")
public class AntecedentesDAO {
private NamedParameterJdbcTemplate jdbc;
	
	@Autowired
	public void setDatasource(DataSource jdbc) {
		this.jdbc = new NamedParameterJdbcTemplate(jdbc);
	}
	

	/*Crear datos cargos*/
	public boolean create(Antecedentes antecedentes) {
		
		BeanPropertySqlParameterSource params = new BeanPropertySqlParameterSource(antecedentes);
		return jdbc.update("insert into antecedentes (dni, becario, tesista_doctoral, tesista_maestria, tesista_grado, investigadores, pasantes_id_y_facademica, personal_apoyo_id, financiamiento_cientifico_tecnologico, actividades_divulgacion, extension_rural_industrial, prestacion_servicios_sociales, produccion_divulgacion_artistica, otro_tipo_actividad, evaluacion_personal, evaluacion_programas, evaluacion_institucional, otro_tipo_evaluacion, becas, estancias_pasantias, operacion_mantenimiento, produccion, normalizacion, ejercicio_profesion_ambito_no_academico, otra_actividad_cyt)"
				+ " values (:dni, :becario, :tesista_doctoral, :tesista_maestria, :tesista_grado, :investigadores, :pasantes_id_y_facademica, :personal_apoyo_id, :financiamiento_cientifico_tecnologico, :actividades_divulgacion, :extension_rural_industrial, :prestacion_servicios_sociales, :produccion_divulgacion_artistica, :otro_tipo_actividad, :evaluacion_personal, :evaluacion_programas, :evaluacion_institucional, :otro_tipo_evaluacion, :becas, :estancias_pasantias, :operacion_mantenimiento, :produccion, :normalizacion, :ejercicio_profesion_ambito_no_academico, :otra_actividad_cyt)", params) == 1;

	}
	
	//trae los datos de la bd
		public Antecedentes getData(BigDecimal dni) {

			MapSqlParameterSource params = new MapSqlParameterSource();
			params.addValue("dni", dni);
			

		      
			try {
				return jdbc.queryForObject("select * from antecedentes where dni = :dni ", params, new RowMapper<Antecedentes>() {
		
							public Antecedentes mapRow(ResultSet rs, int rowNum) throws SQLException {
		
							
								Antecedentes antecedentes = new Antecedentes();
								
								antecedentes.setActividades_divulgacion(rs.getString("actividades_divulgacion"));
								antecedentes.setBecario(rs.getString("becario"));
								antecedentes.setBecas(rs.getString("becas"));
								antecedentes.setDni(rs.getBigDecimal("dni"));
								antecedentes.setEjercicio_profesion_ambito_no_academico(rs.getString("ejercicio_profesion_ambito_no_academico"));
								antecedentes.setEstancias_pasantias(rs.getString("estancias_pasantias"));
								antecedentes.setEvaluacion_institucional(rs.getString("evaluacion_institucional"));
								antecedentes.setEvaluacion_personal(rs.getString("evaluacion_personal"));
								antecedentes.setEvaluacion_programas(rs.getString("evaluacion_programas"));
								antecedentes.setExtension_rural_industrial(rs.getString("extension_rural_industrial"));
								antecedentes.setFinanciamiento_cientifico_tecnologico(rs.getString("financiamiento_cientifico_tecnologico"));
								antecedentes.setInvestigadores(rs.getString("investigadores"));
								
								return antecedentes;
							}
		
						});
			}
			   catch(EmptyResultDataAccessException erdae) {
			       return null;
			   }
		}
}
