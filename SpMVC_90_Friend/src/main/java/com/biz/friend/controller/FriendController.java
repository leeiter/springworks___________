package com.biz.friend.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.biz.friend.domain.FriendVO;
import com.biz.friend.service.FriendService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Controller
public class FriendController {
	
	private final FriendService fService;
	
	@ModelAttribute("friendVO")
	public FriendVO makeFriendVO() {
		return new FriendVO();
	}

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String selectAll(Model model) {
		List<FriendVO> friendList = fService.selectAll();
		model.addAttribute("FRIEND_LIST", friendList);
		return "home";
	}
	
	@RequestMapping(value = "/input", method = RequestMethod.GET)
	public String input(Model model) {
		FriendVO friendVO = new FriendVO();
		model.addAttribute("friendVO", friendVO);
		model.addAttribute("BODY", "FRIEND_INPUT");
		return "home";
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String save(@ModelAttribute FriendVO friendVO) {
		fService.save(friendVO);
		return "redirect:/list";
	}
	
	@RequestMapping(value = "/update/{f_seq}", method = RequestMethod.GET)
	public String update(@ModelAttribute FriendVO friendVO, @PathVariable("f_seq") String f_seq, Model model) {
		friendVO = fService.findBySeq(Long.valueOf(f_seq));
		model.addAttribute("friendVO", friendVO);
		model.addAttribute("BODY", "FRIEND_INPUT");
		return "home";
	}
	
	@RequestMapping(value = "/update/{f_seq}", method = RequestMethod.POST)
	public String update(@ModelAttribute FriendVO friendVO) {
		fService.save(friendVO);
		return "redirect:/list";
	}

	@RequestMapping(value = "/delete/{f_seq}", method = RequestMethod.GET)
	public String delete(@PathVariable("f_seq") String f_seq) {
		int ret = fService.delete(Long.valueOf(f_seq));
		return "redirect:/list";
	}
	
	
	
	
	
	
	
	

}
