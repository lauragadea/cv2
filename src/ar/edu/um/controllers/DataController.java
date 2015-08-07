package ar.edu.um.controllers;

import java.math.BigDecimal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import  java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import ar.edu.um.model.DatosPersonales;
import ar.edu.um.service.DatosPersonalesService;

@Controller
public class DataController {

	private DatosPersonalesService datosPersonalesService;

	@Autowired
	public void setDatosPersonalesService(
			DatosPersonalesService datosPersonalesService) {
		this.datosPersonalesService = datosPersonalesService;
	}

	@RequestMapping(value = "/creardatos", method = RequestMethod.POST)
	public String creaDatos(Model model, @RequestParam BigDecimal dni,
			@RequestParam String dia, @RequestParam String mes,
			@RequestParam String anio, @Valid DatosPersonales dp,
			@RequestParam String action,
			BindingResult result) throws ParseException {
		if (result.hasErrors()) {
			System.out.println("no se valido el formulario");
			List<ObjectError> errors = result.getAllErrors();

			for (Object error : errors) {
				System.out.println(error);
			}

			return "/";
		}

		
		if (action.equals("editar")) {
			
			model.addAttribute("dni", dp.getDni());
			return "modificardatos";
			
		} else if (action.equals("enviar")) {
			
			String fecha = anio + "-" + mes + "-" + dia;

			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Date fecha_nac = sdf.parse(fecha);
			
			dp.setFecha_nac(fecha_nac);
			datosPersonalesService.create(dp);
			model.addAttribute("datosPersonales", dp);		
			model.addAttribute("dni", dp.getDni());
			model.addAttribute("titulo", "datos");
			return "datos";
			
		}
		model.addAttribute("titulo", "datos");
		return "datos";
		
	}
	
	
	@RequestMapping(value = "/modificardatos", method = RequestMethod.POST)
	public String modificaDatos(Model model, @RequestParam BigDecimal dni,
			@RequestParam String dia, @RequestParam String mes,
			@RequestParam String anio, @Valid DatosPersonales dp,
			BindingResult result) throws ParseException {
		if (result.hasErrors()) {
			System.out.println("no se valido el formulario");
			List<ObjectError> errors = result.getAllErrors();

			for (Object error : errors) {
				System.out.println(error);
			}

			return "/";
		}
		
		Map<Integer, String> meses = new HashMap<Integer, String>();
		meses.put(new Integer(1), "Enero");
		meses.put(new Integer(2), "Febrero");
		meses.put(new Integer(3), "Marzo");
		meses.put(new Integer(4), "Abril");
		meses.put(new Integer(5), "Mayo");
		meses.put(new Integer(6), "Junio");
		meses.put(new Integer(7), "Julio");
		meses.put(new Integer(8), "Agosto");
		meses.put(new Integer(9), "Septiembre");
		meses.put(new Integer(10), "Octubre");
		meses.put(new Integer(11), "Noviembre");
		meses.put(new Integer(12), "Diciembre");

		model.addAttribute("meses", meses);

		String fecha = anio + "-" + mes + "-" + dia;

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date fecha_nac = sdf.parse(fecha);
		
		dp.setFecha_nac(fecha_nac);
		datosPersonalesService.modify(dp);
		
		model.addAttribute("datosPersonales", dp);
		model.addAttribute("dni", dp.getDni());
		
		return "datos";
	}

}
