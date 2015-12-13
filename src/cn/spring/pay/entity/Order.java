package cn.spring.pay.entity;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by john on 15-12-13.
 */

@Setter
@Getter
public class Order {
    private int amount;
    private String currency;
    private String subject;
    private String body;
    private String order_no;
    private String channel;
    private String client_ip;

    public Order() {
        this.currency = "cny";
        this.subject = "owner  by  john";
        this.body = "hava  fun  with  shopping ";
        this.channel = "alipay";
    }

    public Map<String, Object> getOrderMap() {
        Map<String, Object> chargeMap = new HashMap<String, Object>();
        chargeMap.put("amount", amount);
        chargeMap.put("currency", currency);
        chargeMap.put("subject", subject);
        chargeMap.put("body", body);
        chargeMap.put("order_no", order_no);
        chargeMap.put("channel",channel);
        chargeMap.put("client_ip", client_ip);
        return chargeMap;
     }
}
