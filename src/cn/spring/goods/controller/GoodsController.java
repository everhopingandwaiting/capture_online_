package cn.spring.goods.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import cn.spring.goods.util.FormUtil;
import cn.spring.goods.util.SaveToJsonFile;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.spring.goods.form.GoodsForm;
import cn.spring.goods.service.GoodsService;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller("GoodsController")
@RequestMapping("/")
public class GoodsController {

	@Autowired
	GoodsService goodsService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index(Model model, GoodsForm goodsForm,HttpSession httpSession) {
        String path = httpSession.getServletContext().getRealPath("data");
        model = FormUtil.model(goodsForm, goodsService, model);
        List<GoodsForm> goodsFormList = goodsService.searchGoodsList();
        SaveToJsonFile.save(path,goodsFormList);



        return "index";
    }

    @RequestMapping(value = "/initGoods", method = RequestMethod.GET)
	public ModelAndView initGoods(Model model, GoodsForm goodsForm) throws UnsupportedEncodingException {
		ModelAndView modelAndView = new ModelAndView();
		if (goodsForm.getType() == null) {
            model = FormUtil.model(goodsForm, goodsService, model);
			modelAndView.setViewName("index");
		} else {
//			String type=new String(goodsForm.getType().getBytes("iso8859-1"),"utf-8");
			String type = goodsForm.getType().toString();
			System.out.println(type + "&&*&*(^*&%^&%^&$*&^*$^$^&");
			goodsForm.setType(goodsForm.getType());
			model.addAttribute("listGoods", goodsService.searchConditionGoodsList(goodsForm));
			modelAndView.setViewName(type);
		}

		return modelAndView;
	}

	// TODO  merge  openGallery and   openBlog   method  !!  by use   @PathVariable  as:   "/open/{what:blog|gallery}"
	@RequestMapping(value = "/galleryDetail", method = RequestMethod.GET)
	public String openGallery(@RequestParam(value = "goodsId") int id,Model model, GoodsForm goodsForm,HttpServletRequest httpServletRequest) throws UnsupportedEncodingException {

//		String id=new String(httpServletRequest.getParameter("goodsId").toString());
		goodsForm.setId(id);
        List<GoodsForm> goodsForms = goodsService.searchGoodById(goodsForm);
        goodsForm = goodsForms.get(0);
        goodsForm.setView(goodsForm.getView() + 1);
        goodsService.updateGoodsById(goodsForm);
        model.addAttribute("list", goodsForms);
		return "detail";
	}
	@RequestMapping(value = "/blogDetail", method = RequestMethod.GET)
	public String openBlog(@RequestParam(value = "goodsId") int id,Model model, GoodsForm goodsForm,HttpServletRequest httpServletRequest) throws UnsupportedEncodingException {

//		String id=new String(httpServletRequest.getParameter("goodsId").toString());
		goodsForm.setId(id);
        List<GoodsForm> goodsForms = goodsService.searchGoodById(goodsForm);
        goodsForm = goodsForms.get(0);
        goodsForm.setView(goodsForm.getView()+1);
        goodsService.updateGoodsById(goodsForm);
        model.addAttribute("list", goodsForms);
		return "detail";
	}

    @RequestMapping(value = "/GlobalSearch", method = RequestMethod.POST)
    public ModelAndView showGlobalSearchForm(HttpSession httpSession,@RequestParam(value = "searchValue") String
            value, Model
            model,
                                             GoodsForm
            goodsForm) {
        ModelAndView modelAndView = new ModelAndView();
//        String path = httpSession.getServletContext();

        return modelAndView;
    }
}
