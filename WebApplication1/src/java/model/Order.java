/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author tkoko
 */
public class Order {

    ArrayList<OrderDetail> orderDetails = new ArrayList<>();

    public float getTotal() {
        float sum = 0;
        for (OrderDetail details : orderDetails) {
            sum += details.getTotal();
        }
        return sum;
    }

    public int getSize() {
        return orderDetails.size();
    }

    public ArrayList<OrderDetail> getOrderDetails() {
        return orderDetails;
    }

    public void setOrderDetails(ArrayList<OrderDetail> orderDetails) {
        this.orderDetails = orderDetails;
    }

}
