package com.geo.dao;

import com.geo.model.CustomerOrder;

public interface CustomerOrderDao {

    void addCustomerOrder(CustomerOrder customerOrder);

	double getCustomerOrderGrandTotal(int cartId);

}
