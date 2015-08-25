package com.codeonblue.sphidb.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.codeonblue.sphidb.model.Servico;
import com.codeonblue.sphidb.service.ServicoService;


@Controller
public class ServicoAdminController {

	@Autowired
	private ServicoService servicoService;
	
	@RequestMapping(value="/admin/services", method=RequestMethod.GET)
	public String index(Model modelServico){
		modelServico.addAttribute("servicos", servicoService.listarTodos());
		return "admin/services/index";
	}
	
	@RequestMapping(value="/admin/services/create", method=RequestMethod.GET)
	public String create(Model model){
		model.addAttribute("servico", new Servico());
		return "admin/services/create";
	}
	
	@RequestMapping(value="admin/services/store", method=RequestMethod.POST)
	public String store(@Valid Servico servico, BindingResult result){
		if(result.hasErrors()){
			return "admin/services/create";
		}
		servicoService.salvar(servico);
		return "redirect:/admin/services";
	}
	
	@RequestMapping(value="admin/services/show/{id}", method=RequestMethod.GET)
	public String show(@PathVariable("id") Integer id, Model model)
	{
		Servico service = servicoService.consultarPorId(id);
		model.addAttribute(service);
		return "admin/services/show";
	}
	
	
	@RequestMapping(value="admin/services/update", method=RequestMethod.POST)
	public String update(@Valid Servico servico, BindingResult result){
		if(result.hasErrors()){
			return "admin/services/show";
		} 
		servicoService.salvar(servico);
		return "redirect:/admin/services";
	}
	
}
