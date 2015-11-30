package cn.spring.goods.controller;

import java.io.UnsupportedEncodingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.spring.goods.form.GoodsForm;
import cn.spring.goods.service.GoodsService;

import javax.servlet.http.HttpServletRequest;

@Controller("GoodsController")
@RequestMapping("/")
public class GoodsController {

	@Autowired
	GoodsService goodsService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(Model model) {
		model.addAttribute("list", goodsService.searchGoodsList());
		return "index";
	}
	
	@RequestMapping(value = "/initGoods", method = RequestMethod.GET)
	public String initGoods(Model model, GoodsForm goodsForm) throws UnsupportedEncodingException {
		if(goodsForm.getType() == null) {
			model.addAttribute("list", goodsService.searchGoodsList());
		} else {
//			String type=new String(goodsForm.getType().getBytes("iso8859-1"),"utf-8");
			String type = goodsForm.getType().toString();
			System.out.println(type+"&&*&*(^*&%^&%^&$*&^*$^$^&");
			goodsForm.setType(goodsForm.getType());
			model.addAttribute("list", goodsService.searchConditionGoodsList(goodsForm));
		}
		return "index";
	}
	@RequestMapping(value = "/openGoods", method = RequestMethod.GET)
	public String openGoods(Model model, GoodsForm goodsForm,HttpServletRequest httpServletRequest) throws UnsupportedEncodingException {

		String id=new String(httpServletRequest.getParameter("goodsId").toString());
		goodsForm.setId(id);
		model.addAttribute("list", goodsService.searchGoodById(goodsForm));
		return "detail";
	}
}
