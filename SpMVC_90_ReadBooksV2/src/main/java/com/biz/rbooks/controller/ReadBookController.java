package com.biz.rbooks.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

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
import com.biz.rbooks.domain.MemberDTO;
import com.biz.rbooks.domain.ReadBookDTO;
import com.biz.rbooks.service.BooksService;
import com.biz.rbooks.service.ReadBookService;

import lombok.extern.slf4j.Slf4j;

//컨트롤러 메소드가 생성하는 모델 정보 중에서 @SessionAttributes에 지정한 이름과 동일한 이름이 있다면 이를 세션에 저장해준다.
@SessionAttributes({"rbDTO", "bsDTO", "mDTO"})
@Slf4j
//컨트롤러를 선택, 메서드 단위까지 선택 가능
@RequestMapping(value = "/rbook")
@Controller
public class ReadBookController {
	
	// 다른 빈을 찾아 빈 간의 의존성을 자동으로 만족시키도록 하는 수단
	@Autowired
	ReadBookService rbService;
	
	@Autowired
	BooksService bsService;
	
	// @ModelAttribute에 붙은 객체가 자동으로 Model 객체에 추가되고 .jsp까지 전달
	@ModelAttribute("rbDTO")
	public ReadBookDTO newReadBookDTO() {
		
		return new ReadBookDTO(); 
		
	}
	
	@ModelAttribute("bsDTO")
	public BooksDTO newBooksDTO() {
		return new BooksDTO();
	}
	
	@ModelAttribute("bsDTO")
	public MemberDTO newMemberDTO() {
		return new MemberDTO();
	}

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model) {
		List<ReadBookDTO> rbList = rbService.selectAll();
		model.addAttribute("rbList", rbList);
		return "rbook/list";
	}
	
	@RequestMapping(value = "/view", method=RequestMethod.GET)
	public String view(long rb_seq, Model model) {
		ReadBookDTO rbDTO = rbService.findByRBSeq(rb_seq);
		model.addAttribute("rbDTO", rbDTO);
		return "rbook/view";
	}
		
	@RequestMapping(value = "/insert/{b_code}", method = RequestMethod.GET)
	public String insert(@ModelAttribute("rbDTO") ReadBookDTO rbDTO, Model model, @PathVariable("b_code") String b_code, HttpSession httpSession) {

		rbDTO = new ReadBookDTO();
		
		MemberDTO mDTO = (MemberDTO) httpSession.getAttribute("mDTO");
		
		if(mDTO == null) {

			return "redirect:/member/login";
		}
		
		rbDTO.setRb_bcode(b_code);
		
		Date date = new Date();
		SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat st = new SimpleDateFormat("hh:mm:ss");
		
		rbDTO.setRb_date(sd.format(date));
		rbDTO.setRb_stime(st.format(date));
		
		
		model.addAttribute("rbDTO", rbDTO);
		return "rbook/insert";
		
	}
	
	@RequestMapping(value = "/insert/{b_code}", method = RequestMethod.POST)
	public String insert(@ModelAttribute("rbDTO") ReadBookDTO rbDTO, SessionStatus status, @PathVariable("b_code") String b_code) {
		
		rbService.insert(rbDTO);
		status.setComplete();
		return "redirect:/rbook/list";
		
	}

	@RequestMapping(value = "/update/{rb_seq}", method = RequestMethod.GET)
	public String update(@PathVariable("rb_seq") long rb_seq, Model model) {
		
		ReadBookDTO rbDTO = rbService.findByRBSeq(rb_seq);
		model.addAttribute("rbDTO", rbDTO);
		
		return "rbook/insert";

	}
	
	
	@RequestMapping(value = "/update/{rb_seq}", method = RequestMethod.POST)
	public String update(@ModelAttribute("rbDTO") ReadBookDTO rbDTO, SessionStatus status, @PathVariable("rb_seq") long rb_seq) {
		
		int ret = rbService.update(rbDTO);
		status.setComplete();
		
		return "redirect:/rbook/list";
		
		
	}
	
	@RequestMapping(value = "/delete/{rb_seq}", method = RequestMethod.GET)
	public String delete(@PathVariable("rb_seq") long rb_seq, SessionStatus status) {
		
		int ret = rbService.delete(rb_seq);
		
		status.setComplete();
		return "redirect:/rbook/list";
	}
	
	@ResponseBody
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String delete(@RequestParam("rb_seq") long re_seq, SessionStatus status, Model model) {
		
		int ret = rbService.delete(Long.valueOf(re_seq));
		
		status.setComplete();
		return ret + "";
	}
	

}
