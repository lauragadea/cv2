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

import ar.edu.um.model.Cargos;
import ar.edu.um.service.CargosService;


@Controller
public class CargosController{

	private CargosService cargosService;
	
	@Autowired
	public void setCargosService(CargosService cargosService) {
		this.cargosService = cargosService;
	}
	
	@RequestMapping(value="/crearcargos", method=RequestMethod.POST)
	public String creaCargos(Model model, @Valid Cargos cargos, @RequestParam BigDecimal dni, BindingResult result,@RequestParam String action) {
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
			
			model.addAttribute("dni", cargos.getDni());
			
			return "modificarcargos";
			
		} else if (action.equals("enviar")) {
		
	
			cargosService.create(cargos);
			
			model.addAttribute("cargos", cargos);
			model.addAttribute("titulo", "cargos");
			return "cargos";
		}
		model.addAttribute("titulo", "cargos");
		return "cargos";
	}
	
	/** MODIFICAR CARGOS */
	
	@RequestMapping(value = "/modificarcargos", method = RequestMethod.POST)
	public String modificarCargos(Model model, @RequestParam BigDecimal dni, @Valid Cargos cargos, BindingResult result) {
		
		if (result.hasErrors()) {
			System.out.println("no se valido el formulario");
			List<ObjectError> errors = result.getAllErrors();

			for (Object error : errors) {
				System.out.println(error);
			}
			return "/";
		}

		cargosService.modify(cargos);
		
		model.addAttribute("cargos", cargos);
		model.addAttribute("titulo", "cargos");
		
		return "cargos";
	}

}