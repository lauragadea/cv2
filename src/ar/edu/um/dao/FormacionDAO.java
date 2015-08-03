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

import ar.edu.um.model.Formacion;

@Component("formacionDao")
public class FormacionDAO {
	
	private NamedParameterJdbcTemplate jdbc;
	
	@Autowired
	public void setDatasource(DataSource jdbc) {
		this.jdbc = new NamedParameterJdbcTemplate(jdbc);
	}
	

	/*Crear datos formacion*/
	public boolean create(Formacion formacion) {

		BeanPropertySqlParameterSource params = new BeanPropertySqlParameterSource(formacion);
		return jdbc.update("insert into formacion (dni, nivel_universitario_posgrado, nivel_universitario_posgrado_especializacion, nivel_universitario_grado, nivel_terciario_no_universitario, especialidad_certificada, posdoctorado, cursos_posgrado_y_capacitaciones, idiomas) values (:dni, :nivel_universitario_posgrado, :nivel_universitario_posgrado_especializacion, :nivel_universitario_grado, :nivel_terciario_no_universitario, :especialidad_certificada, :posdoctorado, :cursos_posgrado_y_capacitaciones, :idiomas)", params) == 1;

	}
	

	public Formacion getData(BigDecimal dni) {

		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("dni", dni);
		
	      
		try {
			return jdbc.queryForObject("select * from formacion where dni = :dni ", params, new RowMapper<Formacion>() {
	
						public Formacion mapRow(ResultSet rs, int rowNum) throws SQLException {
	
						
							Formacion formacion = new Formacion();
							
							formacion.setDni(rs.getBigDecimal("dni"));
							formacion.setNivel_universitario_posgrado(rs.getString("nivel_universitario_posgrado"));
							formacion.setNivel_universitario_posgrado_especializacion(rs.getString("nivel_universitario_posgrado_especializacion"));
							formacion.setNivel_universitario_grado(rs.getString("nivel_universitario_grado"));
							formacion.setNivel_terciario_no_universitario(rs.getString("nivel_terciario_no_universitario"));
							formacion.setEspecialidad_certificada(rs.getString("especialidad_certificada"));
							formacion.setPosdoctorado(rs.getString("posdoctorado"));
							formacion.setCursos_posgrado_y_capacitaciones(rs.getString("cursos_posgrado_y_capacitaciones"));
							formacion.setIdiomas(rs.getString("idiomas"));
			
	
							return formacion;
						}
	
					});
		}
		catch(EmptyResultDataAccessException erdae) {
			System.out.println("en formacionDAO devuelve null");
			return null;
		}
		
	}
	
	
	public boolean modify(Formacion formacion) {

		BeanPropertySqlParameterSource params = new BeanPropertySqlParameterSource(formacion);
		return jdbc.update("update formacion set nivel_universitario_posgrado=:nivel_universitario_posgrado, nivel_universitario_posgrado_especializacion=:nivel_universitario_posgrado_especializacion, nivel_universitario_grado=:nivel_universitario_grado, nivel_terciario_no_universitario=:nivel_terciario_no_universitario, especialidad_certificada=:especialidad_certificada, posdoctorado=:posdoctorado, cursos_posgrado_y_capacitaciones=:cursos_posgrado_y_capacitaciones, idiomas=:idiomas WHERE dni=:dni", params) == 1;

	}
}
