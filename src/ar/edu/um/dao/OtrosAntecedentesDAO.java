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

import ar.edu.um.model.OtrosAntecedentes;

@Component("otrosantecedentesDao")
public class OtrosAntecedentesDAO {
private NamedParameterJdbcTemplate jdbc;
	
	@Autowired
	public void setDatasource(DataSource jdbc) {
		this.jdbc = new NamedParameterJdbcTemplate(jdbc);
	}
	

	/*Crear otros antecedentes*/
	public boolean create(OtrosAntecedentes otrosAntecedentes) {
		
		BeanPropertySqlParameterSource params = new BeanPropertySqlParameterSource(otrosAntecedentes);
		return jdbc.update("insert into otros_antecedentes (dni, participacion_organizacion_eventos, membresias_asociaciones_ct, coordinacion_proyectos_cooperacion, premios_distinciones, dato_academico, curriculum_vitae, participacion_redes_tematicas)"
				+ " values (:dni, :participacion_organizacion_eventos, :membresias_asociaciones_ct, :coordinacion_proyectos_cooperacion, :premios_distinciones, :dato_academico, :curriculum_vitae, :participacion_redes_tematicas)", params) == 1;

	}


	public OtrosAntecedentes getData(long dni) {
		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("dni", dni);
		  
		try {
			return jdbc.queryForObject("select * from otros_antecedentes where dni = :dni ", params, new RowMapper<OtrosAntecedentes>() {
	
						public OtrosAntecedentes mapRow(ResultSet rs, int rowNum) throws SQLException {
	
						
							OtrosAntecedentes otrosAntecedentes = new OtrosAntecedentes();
							
							otrosAntecedentes.setDni(rs.getBigDecimal("dni"));
							otrosAntecedentes.setParticipacion_organizacion_eventos(rs.getString("participacion_organizacion_eventos"));
							otrosAntecedentes.setMembresias_asociaciones_ct(rs.getString("membresias_asociaciones_ct"));
							otrosAntecedentes.setCoordinacion_proyectos_cooperacion(rs.getString("coordinacion_proyectos_cooperacion"));
							otrosAntecedentes.setPremios_distinciones(rs.getString("premios_distinciones"));
							otrosAntecedentes.setDato_academico(rs.getString("dato_academico"));
							otrosAntecedentes.setCurriculum_vitae(rs.getString("curriculum_vitae"));
							otrosAntecedentes.setParticipacion_redes_tematicas(rs.getString("participacion_redes_tematicas"));
							
							return otrosAntecedentes;
						}
	
					});
		}
		catch(EmptyResultDataAccessException erdae) {
			System.out.println("en formacionDAO devuelve null");
			return null;
		}
	}
	
	
	public boolean modify(OtrosAntecedentes otrosAntecedentes) {

		BeanPropertySqlParameterSource params = new BeanPropertySqlParameterSource(otrosAntecedentes);
		return jdbc.update("update otros_antecedentes set "
				+ "participacion_organizacion_eventos=:participacion_organizacion_eventos,"
				+ "membresias_asociaciones_ct=:membresias_asociaciones_ct,"
				+ "coordinacion_proyectos_cooperacion=:coordinacion_proyectos_cooperacion, "
				+ "premios_distinciones=:premios_distinciones, "
				+ "dato_academico=:dato_academico, "
				+ "curriculum_vitae=:curriculum_vitae, "
				+ "participacion_redes_tematicas=:participacion_redes_tematicas", params) == 1;
	}
}
