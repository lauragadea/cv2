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

import ar.edu.um.model.Cargos;
import ar.edu.um.model.OtrosAntecedentes;

@Component("cargosDao")
public class CargosDAO {
	
	private NamedParameterJdbcTemplate jdbc;
	
	@Autowired
	public void setDatasource(DataSource jdbc) {
		this.jdbc = new NamedParameterJdbcTemplate(jdbc);
	}
	

	/*Crear datos cargos*/
	public boolean create(Cargos cargos) {
		System.out.println(cargos.toString());
		BeanPropertySqlParameterSource params = new BeanPropertySqlParameterSource(cargos);
		return jdbc.update("insert into cargos (dni, nivel_superior_universitario, nivel_terciario_no_universitario, nivel_basico, cursos_posgrado_y_capacitaciones, cargos_organismos_ct, categorizacion_programa_incentivos, cargos_id_otro, cargos_gestion_institucional, otros_cargos)"
				+ " values (:dni, :nivel_superior_universitario, :nivel_terciario_no_universitario, :nivel_basico, :cursos_posgrado_y_capacitaciones, :cargos_organismos_ct, :categorizacion_programa_incentivos, :cargos_id_otro, :cargos_gestion_institucional, :otros_cargos)", params) == 1;

	}
	
	public Cargos getData(BigDecimal dni) {
		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("dni", dni);
		  
		try {
			return jdbc.queryForObject("select * from cargos where dni = :dni ", params, new RowMapper<Cargos>() {
	
						public Cargos mapRow(ResultSet rs, int rowNum) throws SQLException {
	
						
							Cargos cargos = new Cargos();
							
							cargos.setDni(rs.getBigDecimal("dni"));
							cargos.setNivel_superior_universitario(rs.getString("nivel_superior_universitario"));
							cargos.setNivel_terciario_no_universitario(rs.getString("nivel_terciario_no_universitario"));
							cargos.setNivel_basico(rs.getString("nivel_basico"));
							cargos.setCursos_posgrado_y_capacitaciones(rs.getString("cursos_posgrado_y_capacitaciones"));
							cargos.setCargos_organismos_ct(rs.getString("cargos_organismos_ct"));
							cargos.setCategorizacion_programa_incentivos(rs.getString("categorizacion_programa_incentivos"));
							cargos.setCargos_id_otro(rs.getString("cargos_id_otro"));
							cargos.setCargos_gestion_institucional(rs.getString("cargos_gestion_institucional"));
							cargos.setOtros_cargos(rs.getString("otros_cargos"));

							return cargos;
						}
	
					});
		}
		catch(EmptyResultDataAccessException erdae) {
			System.out.println("en formacionDAO devuelve null");
			return null;
		}
	}
	
	
	public boolean modify(Cargos cargos) {

		BeanPropertySqlParameterSource params = new BeanPropertySqlParameterSource(cargos);
		return jdbc.update("update cargos set "
				+ "nivel_superior_universitario=nivel_superior_universitario:,"
				+ "nivel_terciario_no_universitario=nivel_terciario_no_universitario:,"
				+ "nivel_basico=nivel_basico:, "
				+ "cursos_posgrado_y_capacitaciones=cursos_posgrado_y_capacitaciones:, "
				+ "cargos_organismos_ct=cargos_organismos_ct:, "
				+ "categorizacion_programa_incentivos=categorizacion_programa_incentivos:, "
				+ "cargos_id_otro=cargos_id_otro:,"
				+ "cargos_gestion_institucional=cargos_gestion_institucional:,"
				+ "otros_cargos=otros_cargos:", params) == 1;
	}
}

