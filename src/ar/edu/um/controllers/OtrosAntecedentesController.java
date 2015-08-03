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
	public String creaCargos(Model model, @Valid OtrosAntecedentes otrosAntecedentes, @RequestParam BigDecimal dni, BindingResult result,@RequestParam String action) {
		
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
			
			model.addAttribute("dni", otrosAntecedentes.getDni());
			model.addAttribute("estancias_pasantias", otrosAntecedentes.getEstancias_pasantias());
			model.addAttribute("membresias_asociaciones_ct", otrosAntecedentes.getMembresias_asociaciones_ct());
			model.addAttribute("coordinacion_proyectos_cooperacion", otrosAntecedentes.getCoordinacion_proyectos_cooperacion());
			model.addAttribute("premios_distinciones", otrosAntecedentes.getPremios_distinciones());
			model.addAttribute("dato_academico",otrosAntecedentes.getDato_academico());
			model.addAttribute("curriculum_vitae", otrosAntecedentes.getCurriculum_vitae());
			model.addAttribute("participacion_redes_tematicas",otrosAntecedentes.getParticipacion_redes_tematicas());
				
			return "otrosAntecedentes";
		}
		
		return "otrosAntecedentes";
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
 	   	model.addAttribute("dni", otrosAntecedentes.getDni());
 		model.addAttribute("estancias_pasantias",otrosAntecedentes.getEstancias_pasantias());
 		model.addAttribute("membresias_asociaciones_ct",otrosAntecedentes.getMembresias_asociaciones_ct());
 		model.addAttribute("coordinacion_proyectos_cooperacion", otrosAntecedentes.getCoordinacion_proyectos_cooperacion() );
 		model.addAttribute("premios_distinciones",otrosAntecedentes.getPremios_distinciones() );
 		model.addAttribute("dato_academico",otrosAntecedentes.getDato_academico() );
 		model.addAttribute("curriculum_vitae",otrosAntecedentes.getCurriculum_vitae() );
 		model.addAttribute("participacion_redes_tematicas",otrosAntecedentes.getParticipacion_redes_tematicas());	 			

		return "cv";
	}
}
