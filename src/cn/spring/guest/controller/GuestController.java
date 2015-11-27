package cn.spring.guest.controller;

import javax.servlet.http.HttpSession;

import lombok.extern.slf4j.Slf4j;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.spring.goods.service.GoodsService;
import cn.spring.guest.form.GuestForm;
import cn.spring.guest.service.GuestService;
import cn.spring.web.form.UVO;

@Slf4j
@Controller("GuestController")
@RequestMapping("/")
public class GuestController {
	
	@Autowired
	GuestService guestService;
	
	@Autowired
	GoodsService goodsService;
	
	@RequestMapping(value = "/initLogin", method = RequestMethod.GET)
	public String initLogin(Model model, GuestForm guestForm) {
		return "guest/login";
	}
	
	@RequestMapping(value = "/submitLogin", method = RequestMethod.POST)
	public String submitLogin(Model model, GuestForm guestForm, HttpSession session) {
//		log.info("校验用户信息");
		if(guestService.searchGuest(guestForm) == 1) {
			UVO uvo = new UVO();
			uvo.setUserId(guestForm.getId());
			uvo.setPassword(guestForm.getPassword());
			session.setAttribute("UVO", uvo);
		} 
		model.addAttribute("list", goodsService.searchGoodsList());
		return "index";
	}
}
