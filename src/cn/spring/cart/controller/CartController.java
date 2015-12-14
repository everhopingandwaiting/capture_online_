package cn.spring.cart.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import cn.spring.cart.form.OrderForm;
import cn.spring.goods.form.GoodsForm;
import cn.spring.goods.util.FormUtil;
import cn.spring.pay.entity.ApiKey;
import cn.spring.pay.entity.Order;
import cn.spring.pay.trade.ChargeOrder;
import com.pingplusplus.model.Charge;
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
import org.springframework.web.bind.annotation.RequestParam;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
import java.util.UUID;
import java.util.stream.Collectors;

@Slf4j
@Controller("CartController")
@RequestMapping("/")
public class CartController {
    private Order order;
    private OrderForm orderForm;
    private List<CartForm> cartForms;
    @Autowired
	CartService cartService;
	
	@Autowired
	GoodsService goodsService;
	
	@RequestMapping(value = "/addCart", method = RequestMethod.GET)
	public String addCart(Model model, CartForm cartForm, HttpSession session) {
//		log.info("加入购物车");
		UVO uvo = (UVO)session.getAttribute("UVO");
		if (uvo != null) {
			cartForm.setGoodsUUID(UUID.randomUUID().toString().replaceAll("\\-","").substring(1, 20));
			cartForm.setGoodsDate(new Timestamp(new Date().getTime()));
			cartForm.setGuestId(uvo.getUserId());
//			String id =  String.valueOf(System.currentTimeMillis());

			cartService.addCart(cartForm);
            model.addAttribute("list", cartService.searchConditionCartList(cartForm));
            return "cart/cartList";
		}
        model = FormUtil.model(new GoodsForm(), goodsService, model);
        return "index";
    }
	
	@RequestMapping(value = "/initCart", method = RequestMethod.GET)
	public String initCart(Model model, CartForm cartForm, HttpSession session) {
//		log.info("初始化购物车");
        UVO uvo = (UVO)session.getAttribute("UVO");
		if (uvo != null) {

			cartForm.setGuestId(uvo.getUserId());
			model.addAttribute("list", cartService.searchConditionCartList(cartForm));
           //init  orderForm
            orderForm = new OrderForm();
            orderForm.setGuest_id(uvo.getUserId());
            cartForm.setGuestId(uvo.getUserId());
           cartForms= cartService.searchConditionCartList(cartForm);
            orderForm.setAmount(cartForms.stream().mapToInt
                    (CartForm::getGoodsPrice).sum());
            orderForm.setUuid(UUID.randomUUID().toString().replaceAll("\\-","").substring(1, 20));
            model.addAttribute("order", orderForm);
            return "cart/cartList";
		}
        model = FormUtil.model(new GoodsForm(), goodsService, model);
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
        model = FormUtil.model(new GoodsForm(), goodsService, model);
        return "index";
	}
    @RequestMapping(value = "/deleteSelected", params = "deleteIDS",method = RequestMethod.GET)
    public String deleteSelected(@RequestParam("id") int []ids ,Model model, CartForm cartForm, HttpSession session) {
		log.info("从购物车删除");
        if (ids.length > 0) {
            cartService.deleteSelected(ids);
        }
        UVO uvo = (UVO)session.getAttribute("UVO");
        if (uvo != null) {
            cartForm.setGuestId(uvo.getUserId());
            model.addAttribute("list", cartService.searchConditionCartList(cartForm));
            return "cart/cartList";
        }
        model = FormUtil.model(new GoodsForm(), goodsService, model);
        return "index";
    }

    /**
     *
     * @param model
     * @param cartForm
     * @param session
     * @param request
     * @return
     */
	@RequestMapping(value = "/account", method = RequestMethod.GET)
	public Charge account(Model model, CartForm cartForm,HttpSession session,HttpServletRequest request) {
		log.info("从购物车--> OrderForm ，结算");
        UVO uvo = (UVO)session.getAttribute("UVO");
        cartForm.setGuestId(uvo.getUserId());
        orderForm.setOrder_date(new Timestamp(new Date().getTime()));
        cartService.CartToOrder(orderForm);
        model.addAttribute("order", orderForm);
//        return "cart/cartEnd";
        //
//        start  request  server  ping++
        order = new Order();
        order.setAmount(orderForm.getAmount());
        order.setOrder_no(orderForm.getUuid());
        order.setClient_ip(getRemoteHost(request));
        ChargeOrder chargeOrder = new ChargeOrder();
       log.info("----start charge ");
           Charge charge= chargeOrder.charge(order, new ApiKey());
        log.info("search charge ");
        chargeOrder.retrieve(charge.getId());
        log.info("list charge");
        chargeOrder.all();
        cartService.CartStatusUpdate(cartForms.stream()
                .mapToInt(CartForm::getId)
                .boxed()
                .collect(Collectors.toList()));
        return charge;
    }

    /**
     *
     * @return
     */
    @RequestMapping(value = "/cart/cartEnd")
    public String cartEndForm() {


        orderForm.setId(cartService.searchOrderByDate(orderForm).getId());
        orderForm.setStatus("PAY_YES");
        cartService.OrderStatusUpdate(orderForm);
        return "cart/cartEnd";
    }

    /**
     *
     * @param request
     * @return
     */
    public String getRemoteHost(javax.servlet.http.HttpServletRequest request){
        String ip = request.getHeader("x-forwarded-for");
        if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)){
            ip = request.getHeader("Proxy-Client-IP");
        }
        if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)){
            ip = request.getHeader("WL-Proxy-Client-IP");
        }
        if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)){
            ip = request.getRemoteAddr();
        }
        return ip.equals("0:0:0:0:0:0:0:1")?"127.0.0.1":ip;
    }
}
