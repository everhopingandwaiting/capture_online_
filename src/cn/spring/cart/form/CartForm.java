package cn.spring.cart.form;

import lombok.Data;

import java.sql.Timestamp;
@Data
public class CartForm {
	private int id;
	private int goodsId;
	private int guestId;
	private String goodsType;
	private String goodsName;
	private String goodsPicture;
	private String goodsContext;
	private int goodsPrice;
	private Timestamp goodsDate;
    private String goodsUUID;


}
