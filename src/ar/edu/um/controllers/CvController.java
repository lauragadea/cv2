package ar.edu.um.controllers;

import java.math.BigDecimal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import ar.edu.um.model.DatosPersonales;
import ar.edu.um.model.Formacion;
import ar.edu.um.model.OtrosAntecedentes;
import ar.edu.um.model.Cargos;
import ar.edu.um.service.CargosService;
import ar.edu.um.service.DatosPersonalesService;
import ar.edu.um.service.FormacionService;
import ar.edu.um.service.OtrosAntecedentesService;


@Controller
public class CvController {
	/*
	private CvService cvService;
	
	
	@Autowired
	public void setCursosService(CvService cvService) {
		this.cvService = cvService;
	}
	
	 */ 
	
	private DatosPersonalesService datosPersonalesService;
	private FormacionService formacionService;
	private OtrosAntecedentesService otrosAntecedentesService;
	private CargosService cargosService;
	
	@Autowired
	public void setDatosPersonalesService(DatosPersonalesService datosPersonalesService) {
		this.datosPersonalesService = datosPersonalesService;
	}
	
	@Autowired
	public void setFormacionService(FormacionService formacionService){
		this.formacionService = formacionService;
	}
	
	@Autowired
	public void setotrosAntecedentesService(OtrosAntecedentesService otrosAntecedentesService){
		this.otrosAntecedentesService = otrosAntecedentesService;
	}	
	
	@Autowired
	public void setCargosService(CargosService cargosService){
		this.cargosService = cargosService;
	}
	
	
	@RequestMapping(value="/registro")
	public String showTest (Model model) {


		return "registro";
	}
	
	@RequestMapping(value="/cv")
	public String cv (Model model){
		
		return "cv";
	}
	
	/*** DATOS 
	 * @throws ParseException ***/
	
	@RequestMapping(value="/datos")
	public String datos(Model model) throws ParseException{
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    String username = auth.getName(); /*trae el usuario logueado en el sistema */
	    System.out.println("USER: " + username);
	    BigDecimal dni = new BigDecimal (username);
	    model.addAttribute("dni", dni);
	      
		DatosPersonales dp = datosPersonalesService.getData(dni);
		
		if (dp == null){
			
			model.addAttribute("dni", dni);
			return "datosEmp";
			
		}else{
			
			System.out.println("dp = " + dp);
			
			model.addAttribute("dni", dp.getDni());
			model.addAttribute("nombre", dp.getNombre());
			model.addAttribute("apellido", dp.getApellido());
			model.addAttribute("sexo", dp.getSexo());
			model.addAttribute("estado_civil", dp.getEstado_civil());
			model.addAttribute("email", dp.getEmail());
			model.addAttribute("fecha_nac", dp.getFecha_nac());
			model.addAttribute("nacionalidad", dp.getNacionalidad());
			model.addAttribute("CUIL_CUIT", dp.getCUIL_CUIT());
			model.addAttribute("domicilio", dp.getDomicilio());
			model.addAttribute("departamento", dp.getDepartamento());
			model.addAttribute("provincia", dp.getProvincia());
			model.addAttribute("pais", dp.getPais());
			
			return "datos";
			
		}
		
	}
	
	/*** DATOS EDITAR 
	 * @throws ParseException ***/
	
	@RequestMapping(value="/datosEditar")
	public String datosEditar(Model model) throws ParseException{
		
		 Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	     String username = auth.getName(); /*trae el usuario logueado en el sistema */
	     System.out.println("USER: " + username);
	     Integer.parseInt(username);
	     BigDecimal dni = new BigDecimal(username);
	      
		DatosPersonales dp = datosPersonalesService.getData(dni);
		
		model.addAttribute("dni", dp.getDni());
		model.addAttribute("nombre", dp.getNombre());
		model.addAttribute("apellido", dp.getApellido());
		model.addAttribute("sexo", dp.getSexo());
		model.addAttribute("estado_civil", dp.getEstado_civil());
		model.addAttribute("email", dp.getEmail());
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	    Date convertedCurrentDate = sdf.parse(dp.getFecha_nac());
	    Calendar cal = Calendar.getInstance();
	    cal.setTime(convertedCurrentDate);
	    
	    int anio = cal.get(Calendar.YEAR);
	    int mes = cal.get(Calendar.MONTH);
	    int dia = cal.get(Calendar.DAY_OF_MONTH);

		
		model.addAttribute("diaa", dia);
		model.addAttribute("mess", mes);
		model.addAttribute("anioo", anio);
		
		System.out.println("dia:" + dia + "mes: " + mes + "anio:" + anio);
		
		model.addAttribute("nacionalidad", dp.getNacionalidad());
		model.addAttribute("CUIL_CUIT", dp.getCUIL_CUIT());
		model.addAttribute("domicilio", dp.getDomicilio());
		model.addAttribute("departamento", dp.getDepartamento());
		model.addAttribute("provincia", dp.getProvincia());
		model.addAttribute("pais", dp.getPais());
		
		return "datosEditar";
	}
	/*
	@RequestMapping(value="/datosEmp")
	public String datosEmp(Model model) throws ParseException{
		
		 Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	     String username = auth.getName(); 
	     System.out.println("USER: " + username);
	     Integer.parseInt(username);
	     BigDecimal dni = new BigDecimal(username);
	      
		DatosPersonales dp = datosPersonalesService.getData(dni);
		
		model.addAttribute("dni", dp.getDni());
		model.addAttribute("nombre", dp.getNombre());
		model.addAttribute("apellido", dp.getApellido());
		model.addAttribute("sexo", dp.getSexo());
		model.addAttribute("estado_civil", dp.getEstado_civil());
		model.addAttribute("email", dp.getEmail());
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	    Date convertedCurrentDate = sdf.parse(dp.getFecha_nac());
	    Calendar cal = Calendar.getInstance();
	    cal.setTime(convertedCurrentDate);
	    
	    int anio = cal.get(Calendar.YEAR);
	    int mes = cal.get(Calendar.MONTH);
	    int dia = cal.get(Calendar.DAY_OF_MONTH);

		
		model.addAttribute("diaa", dia);
		model.addAttribute("mess", mes);
		model.addAttribute("anioo", anio);
		
		System.out.println("dia:" + dia + "mes: " + mes + "anio:" + anio);
		
		model.addAttribute("nacionalidad", dp.getNacionalidad());
		model.addAttribute("CUIL_CUIT", dp.getCUIL_CUIT());
		model.addAttribute("domicilio", dp.getDomicilio());
		model.addAttribute("departamento", dp.getDepartamento());
		model.addAttribute("provincia", dp.getProvincia());
		model.addAttribute("pais", dp.getPais());
		
		return "datosEmp";
	}
*/

	/*** FORMACION ***/
	
	@RequestMapping(value="/formacion")
	public String formacion(Model model){
	
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    String username = auth.getName(); /*trae el usuario logueado en el sistema */
	    System.out.println("USER: " + username);
	    BigDecimal dni = new BigDecimal (username);
	    model.addAttribute("dni", dni);
	
	    Formacion formacion = formacionService.getData(dni);
	    	
	    if (formacion == null){
	     	model.addAttribute("dni", dni);
	    	return "formacionEmp";
	    }else{
	 	   	model.addAttribute("dni", formacion.getDni());
	 		model.addAttribute("nivel_universitario_posgrado", formacion.getNivel_universitario_posgrado());
	 		model.addAttribute("nivel_universitario_posgrado_especializacion", formacion.getNivel_universitario_posgrado_especializacion());
	 		model.addAttribute("nivel_universitario_grado", formacion.getNivel_universitario_grado());
	 		model.addAttribute("nivel_terciario_no_universitario", formacion.getNivel_terciario_no_universitario());
	 		model.addAttribute("especialidad_certificada", formacion.getEspecialidad_certificada());
	 		model.addAttribute("posdoctorado", formacion.getPosdoctorado());
	 		model.addAttribute("cursos_posgrado_y_capacitaciones", formacion.getCursos_posgrado_y_capacitaciones());
	 		model.addAttribute("idiomas", formacion.getIdiomas());
	 			
	 		return "formacion";
	 	}
	}
	
	/*** FORMACION EDITAR ***/
	
	@RequestMapping(value="/formacionEditar")
	public String formacionEditar(Model model){
	
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    String username = auth.getName(); /*trae el usuario logueado en el sistema */
	    System.out.println("USER: " + username);
	    BigDecimal dni = new BigDecimal (username);
	    model.addAttribute("dni", dni);
	     
		Formacion formacion = formacionService.getData(dni);
				
		model.addAttribute("dni", formacion.getDni());
		model.addAttribute("nivel_universitario_posgrado", formacion.getNivel_universitario_posgrado());
		model.addAttribute("nivel_universitario_posgrado_especializacion", formacion.getNivel_universitario_posgrado_especializacion());
		model.addAttribute("nivel_universitario_grado", formacion.getNivel_universitario_grado());
		model.addAttribute("nivel_terciario_no_universitario", formacion.getNivel_terciario_no_universitario());
		model.addAttribute("especialidad_certificada", formacion.getEspecialidad_certificada());
		model.addAttribute("posdoctorado", formacion.getPosdoctorado());
		model.addAttribute("cursos_posgrado_y_capacitaciones", formacion.getCursos_posgrado_y_capacitaciones());
		model.addAttribute("idiomas", formacion.getIdiomas());
		
		return "formacionEditar";
	}
	
	/*** CARGOS ***/
	
	@RequestMapping(value="/cargos")
	public String cargos(Model model){

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    String username = auth.getName(); /*trae el usuario logueado en el sistema */
	    System.out.println("USER: " + username);
	    BigDecimal dni = new BigDecimal (username);
	    model.addAttribute("dni", dni);
	
	    Cargos cargos = cargosService.getData(dni);
	    	
	    if (cargos == null){
	     	model.addAttribute("dni", dni);
	    	return "cargosEmp";
	    }else{
			model.addAttribute("dni", cargos.getDni());
			model.addAttribute("nivel_superior_universitario", cargos.getNivel_superior_universitario());
			model.addAttribute("nivel_terciario_no_universitario", cargos.getNivel_terciario_no_universitario());
			model.addAttribute("nivel_basico", cargos.getNivel_basico());
			model.addAttribute("cursos_posgrado_y_capacitaciones", cargos.getCursos_posgrado_y_capacitaciones());
			model.addAttribute("cargos_organismos_ct", cargos.getCargos_organismos_ct());
			model.addAttribute("categorizacion_programa_incentivos", cargos.getCargos_organismos_ct());
			model.addAttribute("cargos_id_otro", cargos.getCargos_id_otro());
			model.addAttribute("cargos_gestion_institucional", cargos.getCargos_gestion_institucional());
			model.addAttribute("otros_cargos", cargos.getOtros_cargos());
				
	 		return "cargos";
	 	}
	}

	/*** CARGOS EDITAR ***/
	
	@RequestMapping(value="/cargosEditar")
	public String cargosEditar(Model model){
	
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    String username = auth.getName(); /*trae el usuario logueado en el sistema */
	    System.out.println("USER: " + username);
	    BigDecimal dni = new BigDecimal (username);
	    model.addAttribute("dni", dni);
	     
		Cargos cargos = cargosService.getData(dni);
				
		model.addAttribute("dni", cargos.getDni());
		model.addAttribute("nivel_superior_universitario", cargos.getNivel_superior_universitario());
		model.addAttribute("nivel_terciario_no_universitario", cargos.getNivel_terciario_no_universitario());
		model.addAttribute("nivel_basico", cargos.getNivel_basico());
		model.addAttribute("cursos_posgrado_y_capacitaciones", cargos.getCursos_posgrado_y_capacitaciones());
		model.addAttribute("cargos_organismos_ct", cargos.getCargos_organismos_ct());
		model.addAttribute("categorizacion_programa_incentivos", cargos.getCargos_organismos_ct());
		model.addAttribute("cargos_id_otro", cargos.getCargos_id_otro());
		model.addAttribute("cargos_gestion_institucional", cargos.getCargos_gestion_institucional());
		model.addAttribute("otros_cargos", cargos.getOtros_cargos());
		
		return "cargosEditar";
	}
	
	

	@RequestMapping(value="/produccion")
	public String produccion(Model model){
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    String username = auth.getName(); /*trae el usuario logueado en el sistema */
	    System.out.println("USER: " + username);
	    BigDecimal dni = new BigDecimal (username);
	    model.addAttribute("dni", dni);
		return "produccion";
	}
	
	@RequestMapping(value="/antecedentes")
	public String antecedentes(Model model){
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    String username = auth.getName(); /*trae el usuario logueado en el sistema */
	    System.out.println("USER: " + username);
	    BigDecimal dni = new BigDecimal (username);
	    model.addAttribute("dni", dni);
		return "antecedentes";
	}
	
	
	/** OTROS ANTECEDENTES **/
	
	@RequestMapping(value="/otrosantecedentes")
	public String otrosAntecedentes(Model model){
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    String username = auth.getName(); /*trae el usuario logueado en el sistema */
	    System.out.println("USER otros antecedentes: " + username);
	    
	    BigDecimal dni = new BigDecimal (username);
	    model.addAttribute("dni", dni);
	
	    
	    OtrosAntecedentes otrosAntecedentes = otrosAntecedentesService.getData(dni);
	    	
	    if (otrosAntecedentes == null){
	     	model.addAttribute("dni", dni);
	     	
	     	return "otrosantecedentesEmp";
	    	
	    }else{
	 	   	model.addAttribute("dni", otrosAntecedentes.getDni());
	 		model.addAttribute("estancias_pasantias",otrosAntecedentes.getEstancias_pasantias());
	 		model.addAttribute("membresias_asociaciones_ct",otrosAntecedentes.getMembresias_asociaciones_ct());
	 		model.addAttribute("coordinacion_proyectos_cooperacion", otrosAntecedentes.getCoordinacion_proyectos_cooperacion() );
	 		model.addAttribute("premios_distinciones",otrosAntecedentes.getPremios_distinciones() );
	 		model.addAttribute("dato_academico",otrosAntecedentes.getDato_academico() );
	 		model.addAttribute("curriculum_vitae",otrosAntecedentes.getCurriculum_vitae() );
	 		model.addAttribute("participacion_redes_tematicas",otrosAntecedentes.getParticipacion_redes_tematicas());	 			
	 		
	 		return "otrosantecedentes";
	 	}
	}
	
	/*** OTROS ANTECEDENTES EDITAR ***/
	
	@RequestMapping(value="/otrosantecedentesEditar")
	public String otrosantecedentesEditar(Model model){
	
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    String username = auth.getName(); /*trae el usuario logueado en el sistema */
	    System.out.println("USER: " + username);
	    BigDecimal dni = new BigDecimal (username);
	    model.addAttribute("dni", dni);
	     
	    OtrosAntecedentes otrosAntecedentes = otrosAntecedentesService.getData(dni);
				
 	   	model.addAttribute("dni", otrosAntecedentes.getDni());
 		model.addAttribute("estancias_pasantias",otrosAntecedentes.getEstancias_pasantias());
 		model.addAttribute("membresias_asociaciones_ct",otrosAntecedentes.getMembresias_asociaciones_ct());
 		model.addAttribute("coordinacion_proyectos_cooperacion", otrosAntecedentes.getCoordinacion_proyectos_cooperacion() );
 		model.addAttribute("premios_distinciones",otrosAntecedentes.getPremios_distinciones() );
 		model.addAttribute("dato_academico",otrosAntecedentes.getDato_academico() );
 		model.addAttribute("curriculum_vitae",otrosAntecedentes.getCurriculum_vitae() );
 		model.addAttribute("participacion_redes_tematicas",otrosAntecedentes.getParticipacion_redes_tematicas());	 			

		return "otrosantecedentesEditar";
	}
	
}