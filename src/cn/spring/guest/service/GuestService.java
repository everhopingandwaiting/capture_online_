package cn.spring.guest.service;

import jp.terasoluna.fw.dao.QueryDAO;
import jp.terasoluna.fw.dao.UpdateDAO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.spring.guest.form.GuestForm;

@Service
public class GuestService {

	@Autowired
	QueryDAO queryDao;

	@Autowired
	UpdateDAO updateDao;
	
	public Integer searchGuest(GuestForm frm) {
		return queryDao.executeForObject("Guest.searchGuest", frm, Integer.class);
	}
}
