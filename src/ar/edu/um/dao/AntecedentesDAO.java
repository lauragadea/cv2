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
import ar.edu.um.model.Cargos;
import ar.edu.um.model.DatosPersonales;

@Component("antecedentesDao")
public class AntecedentesDAO {
	
	private NamedParameterJdbcTemplate jdbc;
	
	@Autowired
	public void setDatasource(DataSource jdbc) {
		this.jdbc = new NamedParameterJdbcTemplate(jdbc);
	}
	

	/*Crear antcedentes*/
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
								
								antecedentes.setDni(rs.getBigDecimal("dni"));
								antecedentes.setBecario(rs.getString("becario"));
								antecedentes.setTesista_doctoral(rs.getString("tesista_doctoral"));
								antecedentes.setTesista_maestria(rs.getString("tesista_maestria"));
								antecedentes.setTesista_grado(rs.getString("tesista_grado"));
								antecedentes.setInvestigadores(rs.getString("investigadores"));
								antecedentes.setPasantes_id_y_facademica(rs.getString("pasantes_id_y_facademica"));
								antecedentes.setPersonal_apoyo_id(rs.getString("personal_apoyo_id"));
								antecedentes.setFinanciamiento_cientifico_tecnologico(rs.getString("financiamiento_cientifico_tecnologico"));
								antecedentes.setActividades_divulgacion(rs.getString("actividades_divulgacion"));
								antecedentes.setExtension_rural_industrial(rs.getString("extension_rural_industrial"));
								antecedentes.setPrestacion_servicios_sociales(rs.getString("prestacion_servicios_sociales"));
								antecedentes.setProduccion_divulgacion_artistica(rs.getString("produccion_divulgacion_artistica"));
								antecedentes.setOtro_tipo_actividad(rs.getString("otro_tipo_actividad"));
								antecedentes.setEvaluacion_personal(rs.getString("evaluacion_personal"));
								antecedentes.setEvaluacion_programas(rs.getString("evaluacion_programas"));
								antecedentes.setEvaluacion_institucional(rs.getString("evaluacion_institucional"));
								antecedentes.setOtro_tipo_evaluacion(rs.getString("otro_tipo_evaluacion"));
								antecedentes.setBecas(rs.getString("becas"));
								antecedentes.setEstancias_pasantias(rs.getString("estancias_pasantias"));
								antecedentes.setOperacion_mantenimiento(rs.getString("operacion_mantenimiento"));
								antecedentes.setProduccion(rs.getString("produccion"));
								antecedentes.setNormalizacion(rs.getString("normalizacion"));
								antecedentes.setEjercicio_profesion_ambito_no_academico(rs.getString("ejercicio_profesion_ambito_no_academico"));
								antecedentes.setOtra_actividad_cyt(rs.getString("otra_actividad_cyt"));
								
						
								
								return antecedentes;
							}
		
						});
			}
			   catch(EmptyResultDataAccessException erdae) {
				   System.out.println("en antecedentesDAO devuelve null");
			       return null;
			   }
		}
		
		
		public boolean modify(Antecedentes antecedentes) {

			BeanPropertySqlParameterSource params = new BeanPropertySqlParameterSource(antecedentes);
			return jdbc.update("update antecedentes set becario=:becario, tesista_doctoral=:tesista_doctoral, tesista_maestria=:tesista_maestria, tesista_grado=:tesista_grado, investigadores=:investigadores, pasantes_id_y_facademica=:pasantes_id_y_facademica, personal_apoyo_id=:personal_apoyo_id, financiamiento_cientifico_tecnologico=:financiamiento_cientifico_tecnologico, actividades_divulgacion=:actividades_divulgacion, extension_rural_industrial=:extension_rural_industrial, prestacion_servicios_sociales=:prestacion_servicios_sociales, produccion_divulgacion_artistica=:produccion_divulgacion_artistica, otro_tipo_actividad=:otro_tipo_actividad, evaluacion_personal=:evaluacion_personal, evaluacion_programas=:evaluacion_programas, evaluacion_institucional=:evaluacion_institucional, otro_tipo_evaluacion=:otro_tipo_evaluacion, becas=:becas, estancias_pasantias=:estancias_pasantias, operacion_mantenimiento=:operacion_mantenimiento, produccion=:produccion, normalizacion=:normalizacion, ejercicio_profesion_ambito_no_academico=:ejercicio_profesion_ambito_no_academico, otra_actividad_cyt=:otra_actividad_cyt", params) == 1;
		}
}
