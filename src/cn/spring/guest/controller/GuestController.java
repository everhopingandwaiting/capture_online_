package cn.spring.guest.controller;

import javax.servlet.http.HttpSession;

import cn.spring.goods.form.GoodsForm;
import cn.spring.goods.util.FormUtil;
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
	@RequestMapping(value = "/initregister", method = RequestMethod.GET)
	public String initregister(Model model, GuestForm guestForm) {

		return "guest/register";
	}

	@RequestMapping(value = "/contacts", method = RequestMethod.GET)
	public String contacts(Model model, GuestForm guestForm) {

		return "contacts";
	}
	@RequestMapping(value = "/submitLogin", method = RequestMethod.POST)
	public String submitLogin(Model model, GuestForm guestForm, HttpSession session, GoodsForm goodsForm ) {
//		log.info("校验用户信息");
        GuestForm form = guestService.searchGuest(guestForm);
        if (form!=null){
            UVO uvo = new UVO();
            uvo.setUserId(form.getId());
            uvo.setName(form.getName());
            uvo.setRole(form.getRole());

            uvo.setPassword(guestForm.getPassword());
            session.setAttribute("UVO", uvo);
        }

        goodsForm.setType("gallery");
        model = FormUtil.model(goodsForm, goodsService, model);
        return "index";
    }

    @RequestMapping(value = "submitRegister",method = RequestMethod.POST)
	public String submitRegister(Model model,GuestForm guestForm) {

		guestForm.setRole("user");
		guestService.insertGuest(guestForm);

		model.addAttribute("guest", guestForm);
		return "guest/login";
	}

    @RequestMapping(value = "/initLogout", method = RequestMethod.GET)
    public String logout(HttpSession session,GuestForm guest) {
        session.invalidate();
        return "guest/login";
    }
}
