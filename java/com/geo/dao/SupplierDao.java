package com.geo.dao;

import com.geo.model.Supplier;

import java.util.List;


public interface SupplierDao {

    List<Supplier> getSupplierList();

    Supplier getSupplierById(int id);

    void addSupplier(Supplier supplier);

    void editSupplier(Supplier supplier);

    void deleteSupplier(Supplier supplier);
}
