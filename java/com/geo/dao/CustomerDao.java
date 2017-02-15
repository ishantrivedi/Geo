package com.geo.dao;

import java.util.List;

import com.geo.model.Customer;


public interface CustomerDao {

	List<Customer> getCustomerList();

    Customer getCustomerById(int id);

    void addCustomer(Customer customer);

    void editCustomer(Customer customer);

    void deleteCustomer(Customer customer);

    public Customer getCustomerByCustomername(String customername);//added from customercontrollerlogin

	int validateCustomer(String getcustomername, String getpassword); //added from customercontrollerlogin

	void approveCustomer(Customer customer);

	/*void BillingAddress(Customer customer); //added from homecontroller registration
*/
}
