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

import ar.edu.um.model.Formacion;
import ar.edu.um.model.OtrosAntecedentes;
import ar.edu.um.service.OtrosAntecedentesService;


@Controller
public class OtrosAntecedentesController {
	
	private OtrosAntecedentesService otrosAntecedentesService;
	
	@Autowired
	public void setOtrosAntecedentesService(OtrosAntecedentesService otrosAntecedentesService) {
		this.otrosAntecedentesService = otrosAntecedentesService;
	}
	
	@RequestMapping(value="/crearotrosantecedentes", method=RequestMethod.POST)
	public String creaOtrosAntecedentes(Model model, @Valid OtrosAntecedentes otrosAntecedentes, @RequestParam BigDecimal dni, BindingResult result,@RequestParam String action) {
		
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
			
			model.addAttribute("dni", otrosAntecedentes.getDni());
			
			return "modificarOtrosAntecedentes";
			
		} else if (action.equals("enviar")) {
			
			System.out.println("crear otros antecedentes");
			otrosAntecedentesService.create(otrosAntecedentes);
			
			model.addAttribute("otrosAntecedentes", otrosAntecedentes);
			model.addAttribute("titulo", "otrosantecedentes");
		
			return "otrosantecedentes";
		}
		model.addAttribute("titulo", "otrosantecedentes");
		return "otrosantecedentes";
	}
	
		
	/** MODIFICAR OTROS ANTECEDENTES */
		
	@RequestMapping(value = "/modificarOtrosAntecedentes", method = RequestMethod.POST)
	public String modificarOtrosAntecedentes(Model model, @RequestParam BigDecimal dni, @Valid OtrosAntecedentes otrosAntecedentes,
			BindingResult result) {
		
		if (result.hasErrors()) {
			System.out.println("no se valido el formulario");
			List<ObjectError> errors = result.getAllErrors();

			for (Object error : errors) {
				System.out.println(error);
			}
			return "/";
		}

		otrosAntecedentesService.modify(otrosAntecedentes);
 	   	model.addAttribute("otrosAntecedentes", otrosAntecedentes);
 	   model.addAttribute("titulo", "otrosantecedentes");

		return "otrosantecedentes";
	}
}
