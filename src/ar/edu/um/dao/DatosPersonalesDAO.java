package ar.edu.um.dao;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Component;

import ar.edu.um.model.DatosPersonales;
import ar.edu.um.model.DatosPersonalesMapper;
import ar.edu.um.model.User;

@Component("datosPersonalesDao")
public class DatosPersonalesDAO {
	private NamedParameterJdbcTemplate jdbc;

	@Autowired
	public void setDatasource(DataSource jdbc) {
		this.jdbc = new NamedParameterJdbcTemplate(jdbc);
	}

	// trae los datos de la bd
	public DatosPersonales getData(long dni) {

		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("dni", dni);

		try {
			return jdbc.queryForObject(
					"select * from datos_personales where dni = :dni ", params,
					new RowMapper<DatosPersonales>() {

						public DatosPersonales mapRow(ResultSet rs, int rowNum)
								throws SQLException {

							DatosPersonales dp = new DatosPersonales();

							dp.setDni(rs.getBigDecimal("dni"));
							dp.setNombre(rs.getString("nombre"));
							dp.setApellido(rs.getString("apellido"));
							dp.setSexo(rs.getString("sexo"));
							dp.setEstado_civil(rs.getString("estado_civil"));
							dp.setEmail(rs.getString("email"));
							dp.setFecha_nac(rs.getDate("fecha_nac"));
							dp.setNacionalidad(rs.getString("nacionalidad"));
							dp.setCUIL_CUIT(rs.getString("CUIL_CUIT"));
							dp.setDomicilio(rs.getString("domicilio"));
							dp.setDepartamento(rs.getString("departamento"));
							dp.setProvincia(rs.getString("provincia"));
							dp.setPais(rs.getString("pais"));

							return dp;
						}

					});
		} catch (EmptyResultDataAccessException erdae) {
			return null;
		}
	}

	// trae todos los usuarios
	public List<DatosPersonales> getAllData() {

		List<DatosPersonales> datosPersonales = (List<DatosPersonales>) jdbc.query("select * from datos_personales", new DatosPersonalesMapper());  
	
		return datosPersonales;
	}

	/* Crear datos personales nuevos */
	public boolean create(DatosPersonales datosPersonales) {

		BeanPropertySqlParameterSource params = new BeanPropertySqlParameterSource(
				datosPersonales);
		return jdbc
				.update("insert into datos_personales (dni, nombre, apellido, sexo, estado_civil, email, fecha_nac, nacionalidad, CUIL_CUIT, domicilio, departamento, provincia, pais) values (:dni, :nombre, :apellido, :sexo, :estado_civil, :email, :fecha_nac, :nacionalidad, :CUIL_CUIT, :domicilio, :departamento, :provincia, :pais)",
						params) == 1;

	}

	/* modificar datos */
	public boolean modify(DatosPersonales datosPersonales) {

		BeanPropertySqlParameterSource params = new BeanPropertySqlParameterSource(
				datosPersonales);
		return jdbc
				.update("update datos_personales set nombre=:nombre, apellido=:apellido, sexo=:sexo, estado_civil=:estado_civil, email=:email, fecha_nac=:fecha_nac, nacionalidad=:nacionalidad, CUIL_CUIT=:CUIL_CUIT, domicilio=:domicilio, departamento=:departamento, provincia=:provincia, pais=:pais WHERE dni=:dni",
						params) == 1;

	}

}
