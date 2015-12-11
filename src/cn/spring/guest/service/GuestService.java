package cn.spring.guest.service;

import jp.terasoluna.fw.dao.QueryDAO;
import jp.terasoluna.fw.dao.UpdateDAO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.spring.guest.form.GuestForm;

import java.util.Arrays;

@Service
public class GuestService {

	@Autowired
	QueryDAO queryDao;

	@Autowired
	UpdateDAO updateDao;
	
	public GuestForm searchGuest(GuestForm frm) {
		return queryDao.executeForObject("Guest.searchGuest", frm, GuestForm.class);
	}

	public void insertGuest(GuestForm guestForm) {
		updateDao.execute("Guest.insertGuest", guestForm);
        Arrays.asList(new int[]{1});
    }
}
