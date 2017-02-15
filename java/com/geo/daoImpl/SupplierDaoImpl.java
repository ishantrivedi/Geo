package com.geo.daoImpl;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.geo.dao.SupplierDao;
import com.geo.model.Supplier;

import java.util.List;


@Repository
@EnableTransactionManagement
public class SupplierDaoImpl implements SupplierDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Transactional
    public List<Supplier> getSupplierList() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Supplier");
        List<Supplier> supplierList = query.list();
        session.flush();

        return supplierList;
    }

	@Transactional
    public Supplier getSupplierById(int id) {
        Session session = sessionFactory.getCurrentSession();
        Supplier supplier = (Supplier) session.get(Supplier.class, id);
        session.flush();
        return supplier;
	}

	@Transactional
	public void addSupplier(Supplier supplier) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(supplier);
        session.flush();
	}

	@Transactional
	public void editSupplier(Supplier supplier) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(supplier);
        session.flush();
	}

	@Transactional
	public void deleteSupplier(Supplier supplier) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(supplier);
        session.flush();
	}
}
