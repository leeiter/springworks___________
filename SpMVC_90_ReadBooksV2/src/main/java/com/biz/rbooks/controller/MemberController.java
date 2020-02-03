package com.biz.rbooks.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.biz.rbooks.domain.MemberDTO;
import com.biz.rbooks.service.MemberService;

import lombok.extern.slf4j.Slf4j;

@SessionAttributes({"mDTO"})
@Slf4j
@RequestMapping(value = "/member")
@Controller
public class MemberController {
	
	@Autowired
	MemberService mService;
	
	@ModelAttribute("mDTO")
	public MemberDTO newMemberDTO() {
		return new MemberDTO();
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(@ModelAttribute("mDTO") MemberDTO mDTO, Model model) {
		
		mDTO = new MemberDTO();
		
		String m_id = mDTO.getM_id();
		String m_password = mDTO.getM_password();

		mDTO.setM_id(m_id);
		mDTO.setM_password(m_password);

		
		model.addAttribute("mDTO", mDTO);
		
		
		return "member/login";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@ModelAttribute("mDTO") MemberDTO mDTO, Model model, SessionStatus status) {
		
		mService.insert(mDTO);
		
		model.addAttribute("mDTO", mDTO);
		
		status.setComplete();

		return "redirect:/rbook/list";
		
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession httpSession) {
		
		httpSession.removeAttribute("mDTO");
		return "redirect:/rbook/list";
	}

}
