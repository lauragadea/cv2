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

import ar.edu.um.model.Produccion;
import ar.edu.um.service.ProduccionService;

@Controller
public class ProduccionController {
private ProduccionService produccionService;
	
	@Autowired
	public void setProduccionService(ProduccionService produccionService) {
		this.produccionService = produccionService;
	}
	

	@RequestMapping(value="/crearproduccion", method=RequestMethod.POST)
	public String creaDatos(Model model, @Valid Produccion produccion,@RequestParam BigDecimal dni, BindingResult result, @RequestParam String action) {
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
			
			model.addAttribute("dni", produccion.getDni());
			
			return "modificarproduccion";
			
		} else if (action.equals("enviar")) {
		
			produccionService.create(produccion);
			
			model.addAttribute("produccion", produccion);
			model.addAttribute("titulo", "produccion");
			
			return "produccion";
		}
		model.addAttribute("titulo", "produccion");
		return "produccion";
	}
	
	
	@RequestMapping(value = "/modificarproduccion", method = RequestMethod.POST)
	public String modificaFormacion(Model model, @RequestParam BigDecimal dni, @Valid Produccion produccion,
			BindingResult result) {
		
		if (result.hasErrors()) {
			System.out.println("no se valido el formulario");
			List<ObjectError> errors = result.getAllErrors();

			for (Object error : errors) {
				System.out.println(error);
			}

			return "/";
		}

		produccionService.modify(produccion);
		
		model.addAttribute("produccion", produccion);
		model.addAttribute("titulo", "produccion");
		
		return "produccion";
	}
	
}