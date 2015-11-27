package cn.spring.manager.goods.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.spring.goods.form.GoodsForm;

@Controller("ManagerGoodsController")
@RequestMapping("/")
public class GoodsController {

	@RequestMapping(value = "/initEditGoods", method = RequestMethod.GET)
	public String index(Model model, GoodsForm goodsForm) {
		
		return "manager/goodsEdit";
	}
}
