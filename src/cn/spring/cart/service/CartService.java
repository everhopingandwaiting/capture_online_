package cn.spring.cart.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

import jp.terasoluna.fw.dao.QueryDAO;
import jp.terasoluna.fw.dao.UpdateDAO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.spring.cart.form.CartForm;
import org.thymeleaf.util.ArrayUtils;

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

    public Integer deleteSelected(int[] ids) {
        List<Integer> list1= IntStream.of(ids).boxed().collect(Collectors.toList());
        return updateDao.execute("Cart.DelSelected", list1);
    }
}
