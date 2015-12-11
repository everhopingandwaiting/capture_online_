package cn.spring.manager.goods.controller;

import cn.spring.goods.service.GoodsService;
import cn.spring.goods.util.FormUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.spring.goods.form.GoodsForm;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;

@Controller("ManagerGoodsController")
@RequestMapping("/")
public class GoodsController {
	@Autowired
	GoodsService goodsService;

	@RequestMapping(value = "/initEditGoods", method = RequestMethod.GET)
	public String index(Model model, GoodsForm goodsForm) {
		
		return "bg/goodsUpload";
	}

	@RequestMapping(value = "/uploadGoods", method = RequestMethod.POST)
	public String goodsForm(Model model, HttpSession httpSession, @RequestParam(value = "file", required = false)
	MultipartFile file, GoodsForm goodsForm) throws IllegalStateException, IOException {
		String path = httpSession.getServletContext().getRealPath("images");


//		ModelAndView modelAndView = new ModelAndView();
//		modelAndView.setViewName("index");

		if (!file.isEmpty()) {
			File tagfile = new File(path, file.getOriginalFilename());
			if (!tagfile.exists()) {
				tagfile.mkdirs();
			}
			file.transferTo(tagfile);
            goodsForm.setDate(new Timestamp(new Date().getTime()));

			goodsForm.setPicture("images/" + file.getOriginalFilename());
            goodsForm.setComment("");
            goodsForm.setType(new String(goodsForm.getType()/*.getBytes("utf-8"), "utf-8")*/));
            goodsService.insertGoods(goodsForm);
            model = FormUtil.model(goodsForm, goodsService, model);

		}
		return "index";
	}
}
