package com.example.webbanhangver1.model;

public class Item {
    private Product product;
    private int quanity;
    private double price;

    public Item() {
    }

    public Item(Product product, int quanity, double price) {
        this.product = product;
        this.quanity = quanity;
        this.price = price;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getQuanity() {
        return quanity;
    }

    public void setQuanity(int quanity) {
        this.quanity = quanity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}
