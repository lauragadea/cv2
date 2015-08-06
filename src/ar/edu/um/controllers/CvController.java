package ar.edu.um.controllers;

import java.math.BigDecimal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;

import ar.edu.um.model.Antecedentes;
import ar.edu.um.model.Cargos;
import ar.edu.um.model.DatosPersonales;
import ar.edu.um.model.Formacion;
import ar.edu.um.model.OtrosAntecedentes;
import ar.edu.um.service.AntecedentesService;
import ar.edu.um.model.Produccion;
import ar.edu.um.service.CargosService;
import ar.edu.um.service.DatosPersonalesService;
import ar.edu.um.service.FormacionService;
import ar.edu.um.service.OtrosAntecedentesService;
import ar.edu.um.service.ProduccionService;

@Controller
public class CvController {

	private DatosPersonalesService datosPersonalesService;
	private FormacionService formacionService;
	private OtrosAntecedentesService otrosAntecedentesService;
	private CargosService cargosService;

	private AntecedentesService antecedentesService;

	private ProduccionService produccionService;

	@Autowired
	public void setDatosPersonalesService(
			DatosPersonalesService datosPersonalesService) {
		this.datosPersonalesService = datosPersonalesService;
	}

	@Autowired
	public void setFormacionService(FormacionService formacionService) {
		this.formacionService = formacionService;
	}

	@Autowired
	public void setOtrosAntecedentesService(
			OtrosAntecedentesService otrosAntecedentesService) {
		this.otrosAntecedentesService = otrosAntecedentesService;
	}

	@Autowired
	public void setCargosService(CargosService cargosService) {
		this.cargosService = cargosService;
	}

	@Autowired
	public void setAntecedentesService(AntecedentesService antecedentesService) {
		this.antecedentesService = antecedentesService;

	}

	@Autowired
	public void setProduccionService(ProduccionService produccionService) {
		this.produccionService = produccionService;

	}

	@RequestMapping(value = "/registro")
	public String showTest(Model model) {

		return "registro";
	}

	@RequestMapping(value = "/cv")
	public String cv(Model model) {

		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName(); /*
										 * trae el usuario logueado en el
										 * sistema
										 */
		System.out.println("USER: " + username);
		BigDecimal dni = new BigDecimal(username);
		model.addAttribute("dni", dni);

		return "cv";
	}

	/***
	 * DATOS
	 * 
	 * @throws ParseException
	 ***/

	@RequestMapping(value = "/datos")
	public String datos(Model model) throws ParseException {

		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName(); /*
										 * trae el usuario logueado en el
										 * sistema
										 */
		System.out.println("USER: " + username);
		BigDecimal dni = new BigDecimal(username);
		model.addAttribute("dni", dni);

		DatosPersonales dp = datosPersonalesService.getData(dni);

		if (dp == null) {

			model.addAttribute("dni", dni);
			model.addAttribute("objeto", false);

		} else {
			model.addAttribute("objeto", true);
			model.addAttribute("datosPersonales", dp);
			model.addAttribute("titulo", "datos");
		}
		return "datos";
	}

	/***
	 * DATOS EDITAR
	 * 
	 * @throws ParseException
	 ***/

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat sdf = new SimpleDateFormat("MM-dd-yyyy");
		sdf.setLenient(true);
		binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, true));
	}

	@RequestMapping(value = "/datosEditar")
	public String datosEditar(Model model) throws ParseException {

		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName(); /*
										 * trae el usuario logueado en el
										 * sistema
										 */
		System.out.println("USER: " + username);
		Integer.parseInt(username);
		BigDecimal dni = new BigDecimal(username);
		model.addAttribute("dni", dni);
		DatosPersonales dp = datosPersonalesService.getData(dni);

		model.addAttribute("datosPersonales", dp);

		Calendar cal = Calendar.getInstance();
		cal.setTime(dp.getFecha_nac());
		int anio = cal.get(Calendar.YEAR);
		int mes = cal.get(Calendar.MONTH);
		int dia = cal.get(Calendar.DAY_OF_MONTH);

		model.addAttribute("diaa", dia);
		model.addAttribute("mess", mes);
		model.addAttribute("anioo", anio);

		System.out.println("dia:" + dia + "mes: " + mes + "anio:" + anio);
		model.addAttribute("titulo", "datos");

		return "datosEditar";
	}

	/*** FORMACION ***/

	@RequestMapping(value = "/formacion")
	public String formacion(Model model) {

		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName(); /*
										 * trae el usuario logueado en el
										 * sistema
										 */
		System.out.println("USER: " + username);
		BigDecimal dni = new BigDecimal(username);
		model.addAttribute("dni", dni);

		Formacion formacion = formacionService.getData(dni);

		if (formacion == null) {
			model.addAttribute("dni", dni);
			model.addAttribute("objeto", false);

		} else {

			model.addAttribute("objeto", true);
			model.addAttribute("formacion", formacion);
			model.addAttribute("titulo", "formacion");

		}
		return "formacion";
	}

	/*** FORMACION EDITAR ***/

	@RequestMapping(value = "/formacionEditar")
	public String formacionEditar(Model model) {

		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName(); /*
										 * trae el usuario logueado en el
										 * sistema
										 */
		System.out.println("USER: " + username);
		BigDecimal dni = new BigDecimal(username);
		model.addAttribute("dni", dni);

		Formacion formacion = formacionService.getData(dni);

		model.addAttribute("formacion", formacion);
		model.addAttribute("titulo", "formacion");

		return "formacionEditar";
	}

	/*** CARGOS ***/

	@RequestMapping(value = "/cargos")
	public String cargos(Model model) {

		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName(); /*
										 * trae el usuario logueado en el
										 * sistema
										 */
		System.out.println("USER: " + username);
		BigDecimal dni = new BigDecimal(username);
		model.addAttribute("dni", dni);

		Cargos cargos = cargosService.getData(dni);

		if (cargos == null) {
			model.addAttribute("dni", dni);
			model.addAttribute("objeto", false);

		} else {

			model.addAttribute("objeto", true);

			model.addAttribute("cargos", cargos);
			model.addAttribute("titulo", "cargos");

		}
		return "cargos";
	}

	/*** CARGOS EDITAR ***/

	@RequestMapping(value = "/cargosEditar")
	public String cargosEditar(Model model) {

		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName(); /*
										 * trae el usuario logueado en el
										 * sistema
										 */
		System.out.println("USER: " + username);
		BigDecimal dni = new BigDecimal(username);
		model.addAttribute("dni", dni);

		Cargos cargos = cargosService.getData(dni);

		model.addAttribute("cargos", cargos);
		model.addAttribute("titulo", "cargos");

		return "cargosEditar";
	}

	/** PRODUCCION **/

	@RequestMapping(value = "/produccion")
	public String produccion(Model model) {

		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName(); /*
										 * trae el usuario logueado en el
										 * sistema
										 */
		System.out.println("USER produccion: " + username);

		BigDecimal dni = new BigDecimal(username);
		model.addAttribute("dni", dni);

		Produccion produccion = produccionService.getData(dni);

		if (produccion == null) {
			model.addAttribute("dni", dni);
			model.addAttribute("objeto", false);

		} else {

			model.addAttribute("objeto", true);

			model.addAttribute("produccion", produccion);
			model.addAttribute("titulo", "produccion");

		}
		return "produccion";
	}

	/*** PRODUCCION EDITAR ***/

	@RequestMapping(value = "/produccionEditar")
	public String produccionEditar(Model model) {

		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName(); /*
										 * trae el usuario logueado en el
										 * sistema
										 */
		System.out.println("USER produciconeditar: " + username);
		BigDecimal dni = new BigDecimal(username);
		model.addAttribute("dni", dni);

		Produccion produccion = produccionService.getData(dni);
		model.addAttribute("produccion", produccion);
		model.addAttribute("titulo", "produccion");

		return "produccionEditar";
	}

	@RequestMapping(value = "/antecedentes")
	public String antecedentes(Model model) {

		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName(); /*
										 * trae el usuario logueado en el
										 * sistema
										 */
		System.out.println("USER otros antecedentes: " + username);

		BigDecimal dni = new BigDecimal(username);
		model.addAttribute("dni", dni);

		Antecedentes antecedentes = antecedentesService.getData(dni);

		if (antecedentes == null) {
			model.addAttribute("dni", dni);
			model.addAttribute("objeto", false);

		} else {

			model.addAttribute("objeto", true);

			model.addAttribute("antecedentes", antecedentes);
			model.addAttribute("titulo", "antecedentes");

		}

		return "antecedentes";
	}

	@RequestMapping(value = "/antecedentesEditar")
	public String antecedentesEditar(Model model) {

		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName(); /*
										 * trae el usuario logueado en el
										 * sistema
										 */
		System.out.println("USER: " + username);
		BigDecimal dni = new BigDecimal(username);
		model.addAttribute("dni", dni);

		Antecedentes antecedentes = antecedentesService.getData(dni);
		model.addAttribute("antecedentes", antecedentes);

		model.addAttribute("titulo", "antecedentes");

		return "antecedentesEditar";
	}

	/** OTROS ANTECEDENTES **/

	@RequestMapping(value = "/otrosantecedentes")
	public String otrosAntecedentes(Model model) {

		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName(); /*
										 * trae el usuario logueado en el
										 * sistema
										 */
		System.out.println("USER otros antecedentes: " + username);

		BigDecimal dni = new BigDecimal(username);
		model.addAttribute("dni", dni);

		OtrosAntecedentes otrosAntecedentes = otrosAntecedentesService
				.getData(dni);

		if (otrosAntecedentes == null) {
			model.addAttribute("dni", dni);
			model.addAttribute("objeto", false);

		} else {

			model.addAttribute("objeto", true);

			model.addAttribute("otrosAntecedentes", otrosAntecedentes);
			model.addAttribute("titulo", "otrosantecedentes");

		}
		return "otrosantecedentes";
	}

	/*** OTROS ANTECEDENTES EDITAR ***/

	@RequestMapping(value = "/otrosantecedentesEditar")
	public String otrosantecedentesEditar(Model model) {

		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName(); /*
										 * trae el usuario logueado en el
										 * sistema
										 */
		System.out.println("USER: " + username);
		BigDecimal dni = new BigDecimal(username);
		model.addAttribute("dni", dni);

		OtrosAntecedentes otrosAntecedentes = otrosAntecedentesService
				.getData(dni);

		model.addAttribute("otrosAntecedentes", otrosAntecedentes);
		model.addAttribute("titulo", "otrosantecedentes");

		return "otrosantecedentesEditar";
	}

}