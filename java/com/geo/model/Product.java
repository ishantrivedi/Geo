package com.geo.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;
import javax.validation.constraints.Min;
import java.io.Serializable;


@Entity
public class Product implements Serializable{

    private static final long serialVersionUID = -3532377236419382983L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int ProductId;

    @NotEmpty (message = "The product name must not be null.")

    private String ProductName;
    private String ProductCategory;
    private String ProductDescription;

    @Min(value = 0, message = "The product price must not be less then zero.")
    private double ProductPrice;
    private String ProductCondition;
    private String ProductStatus;

    @Min(value = 0, message = "The product unit must not be less than zero.")
    private int Stock;
    private String ProductManufacturer;

    @Transient
    private MultipartFile ProductImage;


    @OneToMany(mappedBy = "product", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JsonIgnore
//    private List<CartItem> cartItemList;

    public int getProductId() {
        return ProductId;
    }

    public void setProductId(int ProductId) {
        this.ProductId = ProductId;
    }

    public String getProductName() {
        return ProductName;
    }

    public void setProductName(String ProductName) {
        this.ProductName = ProductName;
    }

    public String getProductCategory() {
        return ProductCategory;
    }

    public void setProductCategory(String ProductCategory) {
        this.ProductCategory = ProductCategory;
    }

    public String getProductDescription() {
        return ProductDescription;
    }

    public void setProductDescription(String ProductDescription) {
        this.ProductDescription = ProductDescription;
    }

    public double getProductPrice() {
        return ProductPrice;
    }

    public void setProductPrice(double productPrice) {
        this.ProductPrice = productPrice;
    }

    public String getProductCondition() {
        return ProductCondition;
    }

    public void setProductCondition(String productCondition) {
        this.ProductCondition = productCondition;
    }

    public String getProductStatus() {
        return ProductStatus;
    }

    public void setProductStatus(String ProductStatus) {
        this.ProductStatus = ProductStatus;
    }

    public int getStock() {
        return Stock;
    }

    public void setStock(int Stock) {
        this.Stock = Stock;
    }

    public String getProductManufacturer() {
        return ProductManufacturer;
    }

    public void setProductManufacturer(String ProductManufacturer) {
        this.ProductManufacturer = ProductManufacturer;
    }

    public MultipartFile getProductImage() {
        return ProductImage;
    }

    public void setProductImage(MultipartFile ProductImage) {
        this.ProductImage = ProductImage;
    }


/*    public List<CartItem> getCartItemList() {
        return cartItemList;
    }

    public void setCartItemList(List<CartItem> cartItemList) {
        this.cartItemList = cartItemList;
    }*/
}
