package com.biz.rbooks.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.biz.rbooks.domain.BooksDTO;
import com.biz.rbooks.service.BooksService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping(value = "/books")
@Controller
public class BooksController {
	
	@Autowired
	BooksService bsService;
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model) {
		List<BooksDTO> bsList = bsService.selectAll();
		model.addAttribute("bsList", bsList);
		return "home";
	}
	
	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public String insert() {
		
		return "books/insert";
		
	}

}
