package cn.spring.cart.controller;

import javax.servlet.http.HttpSession;

import lombok.extern.slf4j.Slf4j;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.spring.cart.form.CartForm;
import cn.spring.cart.service.CartService;
import cn.spring.goods.service.GoodsService;
import cn.spring.web.form.UVO;

@Slf4j
@Controller("CartController")
@RequestMapping("/")
public class CartController {

	@Autowired
	CartService cartService;
	
	@Autowired
	GoodsService goodsService;
	
	@RequestMapping(value = "/addCart", method = RequestMethod.GET)
	public String addCart(Model model, CartForm cartForm, HttpSession session) {
//		log.info("加入购物车");
		UVO uvo = (UVO)session.getAttribute("UVO");
		if (uvo != null) {
			cartForm.setGuestId(uvo.getUserId());
			String id =  String.valueOf(System.currentTimeMillis());
			cartForm.setId(id);
			cartService.addCart(cartForm);
		}
		model.addAttribute("list", goodsService.searchGoodsList());
		return "index";
	}
	
	@RequestMapping(value = "/initCart", method = RequestMethod.GET)
	public String initCart(Model model, CartForm cartForm, HttpSession session) {
//		log.info("初始化购物车");
		UVO uvo = (UVO)session.getAttribute("UVO");
		if (uvo != null) {
			cartForm.setGuestId(uvo.getUserId());
			model.addAttribute("list", cartService.searchConditionCartList(cartForm));
			return "cart/cartList";
		}
		return "index";
	}
	
	@RequestMapping(value = "/delCart", method = RequestMethod.GET)
	public String delCart(Model model, CartForm cartForm, HttpSession session) {
//		log.info("从购物车删除");
			cartService.delCart(cartForm);
			UVO uvo = (UVO)session.getAttribute("UVO");
			if (uvo != null) {
				cartForm.setGuestId(uvo.getUserId());
				model.addAttribute("list", cartService.searchConditionCartList(cartForm));
				return "cart/cartList";
			}
		return "index";
	}
	
	@RequestMapping(value = "/account", method = RequestMethod.GET)
	public String account(Model model, CartForm cartForm) {
//		log.info("从购物车删除，结算");
		cartService.account(cartForm);
			
		return "cart/cartEnd";
	}
}
