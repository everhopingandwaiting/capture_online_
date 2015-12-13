package cn.spring.cart.form;

import lombok.Getter;
import lombok.Setter;

import java.sql.Timestamp;

/**
 * Created by john on 15-12-13.
 */
@Getter
@Setter
public class OrderForm {
    private int id;
    private int guest_id;
    private int amount;
    private String uuid;
    private Timestamp order_date;
    private String status;

    public OrderForm() {
        this.status = "PAY_NO";
    }
}
