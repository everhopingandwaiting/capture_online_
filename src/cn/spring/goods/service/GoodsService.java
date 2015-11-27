package cn.spring.goods.service;

import java.util.List;

import jp.terasoluna.fw.dao.QueryDAO;
import jp.terasoluna.fw.dao.UpdateDAO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.spring.goods.form.GoodsForm;

@Service
public class GoodsService {

	@Autowired
	QueryDAO queryDao;

	@Autowired
	UpdateDAO updateDao;
	
	public List<GoodsForm> searchGoodsList() {
		return queryDao.executeForObjectList("Goods.searchGoodsList", null);
	}
	
	public List<GoodsForm> searchConditionGoodsList(GoodsForm frm) {
		System.out.println(frm.getType()+"*^*&%^&$%^*$*^$*^;;; service ");
		return queryDao.executeForObjectList("Goods.searchConditionGoodsList", frm);
	}
	public List<GoodsForm> searchGoodById(GoodsForm form)
	{
		return queryDao.executeForObjectList("Goods.searchGoodById",form);

	}

	public void insertGoods(GoodsForm goodsForm) {
		updateDao.execute("Goods.insertGoods", goodsForm);

	}
}
