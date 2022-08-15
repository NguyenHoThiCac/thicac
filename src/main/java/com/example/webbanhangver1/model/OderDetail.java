package com.example.webbanhangver1.model;

public class OderDetail {
    private int OID, pID;
    private  int quantity;
    private double price;

    public OderDetail() {
    }

    public OderDetail(int OID, int pID, int quantity, double price) {
        this.OID = OID; //OderID
        this.pID = pID; //productID
        this.quantity = quantity;
        this.price = price;
    }

    public int getOID() {
        return OID;
    }

    public void setOID(int OID) {
        this.OID = OID;
    }

    public int getpID() {
        return pID;
    }

    public void setpID(int pID) {
        this.pID = pID;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}
