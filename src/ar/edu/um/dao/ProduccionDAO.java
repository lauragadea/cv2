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
import ar.edu.um.model.Produccion;

@Component("produccionDao")
public class ProduccionDAO {
private NamedParameterJdbcTemplate jdbc;
	
	@Autowired
	public void setDatasource(DataSource jdbc) {
		this.jdbc = new NamedParameterJdbcTemplate(jdbc);
	}
	

	/*Crear datos formacion*/
	public boolean create(Produccion produccion) {

		BeanPropertySqlParameterSource params = new BeanPropertySqlParameterSource(produccion);
		return jdbc.update("insert into produccion (dni, articulos_revistas_con_referato, articulos_revistas_sin_referato, libros, partes_libros, trabajos_eventos_ct_publicados, trabajos_eventos_ct_no_publicados, demas_producciones_ct, con_titulo_prop_int, sin_titulo_prop_int, servicio_ct, informe_tecnico, musical_sonora, visual, audiovisual, corporal_teatral, genero_literario_narrativo, genero_literario_dramatico, genero_literario_guion, otro_tipo, otra_produccion) values (:dni, :articulos_revistas_con_referato, :articulos_revistas_sin_referato, :libros, :partes_libros, :trabajos_eventos_ct_publicados, :trabajos_eventos_ct_no_publicados, :demas_producciones_ct, :con_titulo_prop_int, :sin_titulo_prop_int, :servicio_ct, :informe_tecnico, :musical_sonora, :visual, :audiovisual, :corporal_teatral, :genero_literario_narrativo, :genero_literario_dramatico, :genero_literario_guion, :otro_tipo, :otra_produccion)", params) == 1;
	}


	public Produccion getData(long dni) {
		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("dni", dni);
		  
		try {
			return jdbc.queryForObject("select * from produccion where dni = :dni ", params, new RowMapper<Produccion>() {
	
						public Produccion mapRow(ResultSet rs, int rowNum) throws SQLException {
	
						
							Produccion produccion = new Produccion();
							
							produccion.setDni(rs.getBigDecimal("dni"));
							produccion.setArticulos_revistas_con_referato(rs.getString("articulos_revistas_con_referato"));
							produccion.setArticulos_revistas_sin_referato(rs.getString("articulos_revistas_sin_referato"));
							produccion.setLibros(rs.getString("libros"));
							produccion.setPartes_libros(rs.getString("partes_libros"));
							produccion.setTrabajos_eventos_ct_publicados(rs.getString("trabajos_eventos_ct_publicados"));
							produccion.setTrabajos_eventos_ct_no_publicados(rs.getString("trabajos_eventos_ct_no_publicados"));
							produccion.setDemas_producciones_ct(rs.getString("demas_producciones_ct"));
							produccion.setCon_titulo_prop_int(rs.getString("con_titulo_prop_int"));
							produccion.setSin_titulo_prop_int(rs.getString("sin_titulo_prop_int"));
							produccion.setServicio_ct(rs.getString("servicio_ct"));
							produccion.setInforme_tecnico(rs.getString("informe_tecnico"));
							produccion.setMusical_sonora(rs.getString("musical_sonora"));
							produccion.setVisual(rs.getString("visual"));
							produccion.setAudiovisual(rs.getString("audiovisual"));
							produccion.setCorporal_teatral(rs.getString("corporal_teatral"));
							produccion.setGenero_literario_narrativo(rs.getString("genero_literario_narrativo"));
							produccion.setGenero_literario_dramatico(rs.getString("genero_literario_dramatico"));
							produccion.setGenero_literario_guion(rs.getString("genero_literario_guion"));
							produccion.setOtro_tipo(rs.getString("otro_tipo"));
							produccion.setOtra_produccion(rs.getString("otra_produccion"));
							
							return produccion;
						}
				});
			
			}
			catch(EmptyResultDataAccessException erdae) {
				System.out.println("en formacionDAO devuelve null");
				return null;
			}
		}
			
		public boolean modify(Produccion produccion) {

			BeanPropertySqlParameterSource params = new BeanPropertySqlParameterSource(produccion);
			return jdbc.update("update produccion set "
					+ "articulos_revistas_con_referato=:articulos_revistas_con_referato,"
					+ "articulos_revistas_sin_referato=:articulos_revistas_sin_referato,"
					+ "libros=:libros, "
					+ "partes_libros=:partes_libros, "
					+ "trabajos_eventos_ct_publicados=:trabajos_eventos_ct_publicados, "
					+ "trabajos_eventos_ct_no_publicados=:trabajos_eventos_ct_no_publicados, "
					+ "demas_producciones_ct=:demas_producciones_ct,"
					+ "con_titulo_prop_int=:con_titulo_prop_int,"
					+ "sin_titulo_prop_int=:sin_titulo_prop_int,"
					+ "servicio_ct=:servicio_ct,"
					+ "informe_tecnico=:informe_tecnico,"
					+ "musical_sonora=:musical_sonora,"
					+ "visual=:visual,"
					+ "audiovisual=:audiovisual,"
					+ "corporal_teatral=:corporal_teatral,"
					+ "genero_literario_narrativo=:genero_literario_narrativo,"
					+ "genero_literario_dramatico=:genero_literario_dramatico,"
					+ "genero_literario_guion=:genero_literario_guion,"
					+ "otro_tipo=:otro_tipo,"
					+ "otra_produccion=:otra_produccion", params) == 1;
		}
}
