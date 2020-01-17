package com.biz.rbooks.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.biz.rbooks.domain.BooksDTO;
import com.biz.rbooks.service.BooksService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@SessionAttributes({"bsDTO"})
@RequestMapping(value = "/books")
@Controller
public class BooksController {
	
	/*
	
	@Autowired
	BooksService bsService;
	
	@ModelAttribute("bsDTO")
	public BooksDTO newBooksDTO() {
		return new BooksDTO();
	}
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model) {
		List<BooksDTO> bsList = bsService.selectAll();
		model.addAttribute("bsList", bsList);
		return "books/list";
	}
	
	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public String insert(@ModelAttribute("bsDTO") BooksDTO bsDTO, Model model) {

		bsDTO = new BooksDTO();
		
		Date date = new Date();
		SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd");
		bsDTO.setB_year(sd.format(date));
		
		model.addAttribute("bsDTO", bsDTO);
		return "books/insert";
		
	}
	
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insert(@ModelAttribute("bsDTO") BooksDTO bsDTO, SessionStatus status) {
		
		bsService.insert(bsDTO);
		status.setComplete();
		return "redirect:/books/list";
		
	}
	
	
	@RequestMapping(value = "/update/{b_code}", method = RequestMethod.GET)
	public String update(@PathVariable("b_code") String b_code, Model model) {
		
		BooksDTO bsDTO = bsService.findByBCode(b_code);
		model.addAttribute("bsDTO", bsDTO);
		
		return "books/insert";
		

	}
	
	
	@RequestMapping(value = "/update/{b_code}", method = RequestMethod.POST)
	public String update(@ModelAttribute("bsDTO") BooksDTO bsDTO, SessionStatus status) {
		
		int ret = bsService.update(bsDTO);
		status.setComplete();
		
		return "redirect:/books/list";
		
		
	}
	
	@RequestMapping(value = "/delete/{b_code}", method = RequestMethod.GET)
	public String delete(@PathVariable String b_code, SessionStatus status) {
		
		int ret = bsService.delete(b_code);
		
		status.setComplete();
		return "redirect:/books/list";
	}
	
	@ResponseBody
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String delete(@RequestParam("b_code") String b_code, SessionStatus status, Model model) {
		
		int ret = bsService.delete(b_code);
		
		status.setComplete();
		return ret + "";
	}
	
	*/
}
