package cn.spring.guest.form;

import lombok.Data;

@Data
public class GuestForm {

	private int id;
	private String password;
	private String phone;
	private String email;
	private String role;

    private String name;

}
