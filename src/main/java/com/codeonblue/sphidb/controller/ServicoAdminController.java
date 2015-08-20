package com.codeonblue.sphidb.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	
}
