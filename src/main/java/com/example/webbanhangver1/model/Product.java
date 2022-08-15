package com.example.webbanhangver1.model;

public class Product {
    private int productID;
    private  String name;
    private  String detail;
    private  double price;
    private String image1;
    private String image2;
    private String image3;
    private double priceNew;
    private String color;
    private int sale;

    public Product(int productID, String name, String detail, double price, String image1, String image2, String image3, double priceNew, String color,int sale) {
        this.productID = productID;
        this.name = name;
        this.detail = detail;
        this.price = price;
        this.image1 = image1;
        this.image2 = image2;
        this.image3 = image3;
        this.priceNew = priceNew;
        this.color = color;
        this.sale = sale;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getImage1() {
        return image1;
    }

    public void setImage1(String image1) {
        this.image1 = image1;
    }

    public String getImage2() {
        return image2;
    }

    public void setImage2(String image2) {
        this.image2 = image2;
    }

    public String getImage3() {
        return image3;
    }

    public void setImage3(String image3) {
        this.image3 = image3;
    }

    public double getPriceNew() {
        return priceNew;
    }

    public void setPriceNew(double priceNew) {
        this.priceNew = priceNew;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public int getSale() {
        return sale;
    }

    public void setSale(int sale) {
        this.sale = sale;
    }

    @Override
    public String toString() {
        return "Product{" +
                "productID=" + productID +
                ", name='" + name + '\'' +
                ", detail='" + detail + '\'' +
                ", price=" + price +
                ", image1='" + image1 + '\'' +
                ", image2='" + image2 + '\'' +
                ", image3='" + image3 + '\'' +
                ", priceNew=" + priceNew +
                ", color='" + color + '\'' +
                ", sale=" + sale +
                '}';
    }
}
