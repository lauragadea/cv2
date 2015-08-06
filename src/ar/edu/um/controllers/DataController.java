package ar.edu.um.controllers;

import java.math.BigDecimal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import  java.util.Date;
import java.util.List;

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
		
		String fecha = anio + "-" + mes + "-" + dia;

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date fecha_nac = sdf.parse(fecha);
		
		dp.setFecha_nac(fecha_nac);
		datosPersonalesService.modify(dp);
		
		model.addAttribute("datosPersonales", dp);
		
		

		return "datos";
	}

}
