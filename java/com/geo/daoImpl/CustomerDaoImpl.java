package com.geo.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.geo.dao.CustomerDao;
import com.geo.model.Cart;
import com.geo.model.Customer;
import com.geo.model.Role;


@Repository
@EnableTransactionManagement
public class CustomerDaoImpl implements CustomerDao{

    @Autowired
    private SessionFactory sessionFactory;

    @Transactional
    public void addCustomer(Customer customer) {
        Session session = sessionFactory.getCurrentSession();

        customer.getBillingAddress().setCustomer(customer);
        customer.getShippingAddress().setCustomer(customer);

        session.saveOrUpdate(customer);
        session.saveOrUpdate(customer.getBillingAddress());
        session.saveOrUpdate(customer.getShippingAddress());
        System.out.println("data saved.....");
        
        
        /*Customer newCustomer = new Customer();
        newCustomer.setCustomerName(customer.getCustomerName());
        newCustomer.setPassword(customer.getPassword());
        newCustomer.setEnabled(true);
        newCustomer.setCustomerId(customer.getCustomerId());
*/
        Role newAuthority = new Role();
        newAuthority.setUserName(customer.getUsername());
        newAuthority.setAuthority("ROLE_USER");
        //session.saveOrUpdate(newCustomer);
        session.saveOrUpdate(newAuthority);

        Cart newCart = new Cart();
        newCart.setCustomer(customer);
        customer.setCart(newCart);
        session.saveOrUpdate(customer);
        session.saveOrUpdate(newCart);

        session.flush();
    }

    @Transactional
    public Customer getCustomerById (int customerId) {
		Session session = sessionFactory.getCurrentSession();
		Customer customer = (Customer) session.get(Customer.class, customerId);
		session.flush();
		return customer;
/*        Session session = sessionFactory.getCurrentSession();
        return (Customer) session.get(Customer.class, customerId);*/
    }

    @Transactional
    public List<Customer> getAllCustomers() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Customer");
        List<Customer> customerList = query.list();

        return customerList;
    }

    @Transactional
    public Customer getCustomerByCustomername (String customername) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Customer where customername = ?");
        query.setString(0, customername);

        return (Customer) query.uniqueResult();
    }

    @Transactional
	public List<Customer> getCustomerList() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Customer");
		List<Customer> customerList = query.list();
		session.flush();

		return customerList;
	}

/*	@Transactional
	public void addCustomer(Customer customer) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(customer);
		Role r1=new Role();
		r1.setAuthority("ROLE_USER");
		r1.setCustomername(customer.getcustomername());
		session.saveOrUpdate(r1);
		session.flush();
	}*/
	
    @Transactional
	public void editCustomer(Customer customer) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(customer);
		session.flush();
	}

    @Transactional
	public void deleteCustomer(Customer customer) {
		Session session = sessionFactory.getCurrentSession();
		session.delete(customer);
		session.flush();
	}

    @Transactional
	public int validateCustomer(String getcustomername, String getpassword) {
		// TODO Auto-generated method stub
		return 0;
	}

    @Transactional
	public void approveCustomer(Customer customer) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(customer);
		session.flush();
	}
}
