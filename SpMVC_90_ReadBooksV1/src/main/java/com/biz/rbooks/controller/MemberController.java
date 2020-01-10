package com.biz.rbooks.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.biz.rbooks.domain.MemberDTO;
import com.biz.rbooks.service.MemberService;

@RequestMapping(value = "/member")
@Controller
public class MemberController {
	
	private final MemberService mService;
	
	@Autowired
	public MemberController(MemberService mService) {
		this.mService = mService;
	}
	
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "body/login";
	}
	
	// @ResponseBody
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(MemberDTO mDTO, Model model, HttpSession httpSession) {
		
		// String u_id = memberVO.getU_id();
		// String u_password = memberVO.getU_password();
		
		mDTO = mService.loginCheck(mDTO);
		if(mDTO != null) {
			httpSession.setAttribute("MEMBER", mDTO);
			// return "LOGIN_OK";
		} else {
			httpSession.removeAttribute("MEMBER");
			// return "LOGIN_FAIL";
		}
		

		return "redirect:/image/list";
		
	}
	
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession httpSession) {
		
		httpSession.removeAttribute("MEMBER");
		return "redirect:/image/list";
	}
	
}
