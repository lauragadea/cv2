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
import ar.edu.um.model.OtrosAntecedentes;
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
			
			return "modificarCargos";
			
		} else if (action.equals("enviar")) {
			
			System.out.println("crear otros antecedentes");
			cargosService.create(cargos);
	
			cargosService.create(cargos);
			
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
		return "cargos";
	}
	
	/** MODIFICAR OTROS ANTECEDENTES */
	
	@RequestMapping(value = "/modificarCargos", method = RequestMethod.POST)
	public String modificarOtrosAntecedentes(Model model, @RequestParam BigDecimal dni, @Valid Cargos cargos, BindingResult result) {
		
		if (result.hasErrors()) {
			System.out.println("no se valido el formulario");
			List<ObjectError> errors = result.getAllErrors();

			for (Object error : errors) {
				System.out.println(error);
			}
			return "/";
		}

		cargosService.modify(cargos);
		
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
		return "cv";
	}

}