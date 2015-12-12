package cn.spring.goods.form;

import lombok.Data;

import java.sql.Timestamp;
@Data
public class GoodsForm {

    private int id;
    private String category;
    private Timestamp date;
    private String name;
    private String tag;
    private String comment;
    private int view;
    private String information;
    private String picture;
    private String price;
    private String type;
    private int limit;

//	private String id;
//	private String type;
//	private String name;
//	private String picture;
//	private String context;
//	private String price;
//	public String getId() {
//		return id;
//	}
//	public void setId(String id) {
//		this.id = id;
//	}
//	public String getType() {
//		return type;
//	}
//	public void setType(String type) {
//		this.type = type;
//	}
//	public String getName() {
//		return name;
//	}
//	public void setName(String name) {
//		this.name = name;
//	}
//	public String getPicture() {
//		return picture;
//	}
//	public void setPicture(String picture) {
//		this.picture = picture;
//	}
//	public String getContext() {
//		return context;
//	}
//	public void setContext(String context) {
//		this.context = context;
//	}
//	public String getPrice() {
//		return price;
//	}
//	public void setPrice(String price) {
//		this.price = price;
//	}
//
}
