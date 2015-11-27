package cn.spring.cart.service;

import java.util.List;

import jp.terasoluna.fw.dao.QueryDAO;
import jp.terasoluna.fw.dao.UpdateDAO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.spring.cart.form.CartForm;

@Service
public class CartService {

	@Autowired
	QueryDAO queryDao;

	@Autowired
	UpdateDAO updateDao;
	
	public Integer addCart(CartForm frm) {
		Integer result = queryDao.executeForObject("Cart.searchCart", frm, Integer.class);
		if (result == 0) {
			return updateDao.execute("Cart.addCart", frm);
		}
		return 0;
	}
	
	public List<CartForm> searchConditionCartList(CartForm frm) {
		return queryDao.executeForObjectList("Cart.searchConditionCartList", frm);
	}
	
	public Integer delCart(CartForm frm) {
		return updateDao.execute("Cart.delCart", frm);
	}
	
	public Integer account(CartForm frm) {
		return updateDao.execute("Cart.account", frm);
	}
}
