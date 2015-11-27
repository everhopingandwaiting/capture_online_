package cn.spring.common.component;

import java.util.List;

import jp.terasoluna.fw.dao.QueryDAO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.spring.web.form.Item;

@Service
public class ItemListComponent {

	@Autowired
	QueryDAO queryDao;
	
	public List<Item> getProvinceList() {
		return queryDao.executeForObjectList("Common.selectProvince", null);
	}

}
