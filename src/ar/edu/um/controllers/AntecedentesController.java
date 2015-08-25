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

import ar.edu.um.model.Antecedentes;
import ar.edu.um.service.AntecedentesService;

@Controller
public class AntecedentesController {
	private AntecedentesService antecedentesService;

	@Autowired
	public void setAntecedentesService(AntecedentesService antecedentesService) {
		this.antecedentesService = antecedentesService;
	}

	
	
	@RequestMapping(value = "/crearantecedentes", method = RequestMethod.POST)
	public String creaCargos(Model model, @Valid Antecedentes antecedentes,@RequestParam BigDecimal dni,
			BindingResult result, @RequestParam String action) {
		if (result.hasErrors()) {
			System.out.println("no se valido el formulario");
			List<ObjectError> errors = result.getAllErrors();

			for (Object error : errors) {
				System.out.println(error);
			}

			return "/";
		}

		System.out.println("action: "+ action);
		
		if (action.equals("editar")) {
			
			model.addAttribute("dni", antecedentes.getDni());
			
			return "modificarcargos";
			
		} else if (action.equals("enviar")) {
		
			antecedentesService.create(antecedentes);

			model.addAttribute("antecedentes", antecedentes);
			model.addAttribute("titulo", "antecedentes");

			return "antecedentes";
		}
		model.addAttribute("titulo", "antecedentes");
		return "antecedentes";
	}
	
	
/** MODIFICAR ANTECEDENTES */
	
	@RequestMapping(value = "/modificarantecedentes", method = RequestMethod.POST)
	public String modificarAntcedentes(Model model, @RequestParam BigDecimal dni, @Valid Antecedentes antecedentes, BindingResult result) {
		
		if (result.hasErrors()) {
			System.out.println("no se valido el formulario");
			List<ObjectError> errors = result.getAllErrors();

			for (Object error : errors) {
				System.out.println(error);
			}
			return "/";
		}
		antecedentesService.modify(antecedentes);
		
		
		model.addAttribute("dni", antecedentes.getDni());
		model.addAttribute("antecedentes", antecedentes);
		model.addAttribute("titulo", "antecedentes");
		
		return "antecedentes";
	}

}