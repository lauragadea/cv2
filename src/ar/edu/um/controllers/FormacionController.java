package ar.edu.um.controllers;

import java.math.BigDecimal;
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
import ar.edu.um.model.Formacion;
import ar.edu.um.service.FormacionService;

@Controller
public class FormacionController {

	private FormacionService formacionService;

	@Autowired
	public void setFormacionService(FormacionService formacionService) {
		this.formacionService = formacionService;
	}

	@RequestMapping(value="/crearformacion", method=RequestMethod.POST)
	public String creaDatos(Model model, @Valid Formacion formacion, @RequestParam BigDecimal dni, BindingResult result, @RequestParam String action) {
		if (result.hasErrors()){
			System.out.println("no se valido el formulario");
			List<ObjectError> errors = result.getAllErrors();
			
			for (Object error: errors) {
				System.out.println(error);
			}
			
			return "/";
		}
		
		System.out.println("action: "+ action);
		
		if (action.equals("editar")) {
			
			model.addAttribute("dni", formacion.getDni());
			
			return "modificarformacion";
			
		} else if (action.equals("enviar")) {
		
		
			formacionService.create(formacion);
		
			model.addAttribute("formacion", formacion);
		
			return "formacion";
		}
		
		return "formacion";
	}
		

	@RequestMapping(value = "/modificarformacion", method = RequestMethod.POST)
	public String modificaFormacion(Model model, @RequestParam BigDecimal dni, @Valid Formacion formacion,
			BindingResult result) {
		
		if (result.hasErrors()) {
			System.out.println("no se valido el formulario");
			List<ObjectError> errors = result.getAllErrors();

			for (Object error : errors) {
				System.out.println(error);
			}

			return "/";
		}

		formacionService.modify(formacion);

		model.addAttribute("formacion", formacion);
		

		return "formacion";
	}

}
