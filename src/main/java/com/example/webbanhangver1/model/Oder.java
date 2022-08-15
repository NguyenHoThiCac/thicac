package com.example.webbanhangver1.model;

public class Oder {
    private int OderID;
    private String date;
    private int userID;
    private double totalMoney;

    public Oder() {
    }

    public Oder(int oderID, String date, int userID, double totalMoney) {
        OderID = oderID;
        this.date = date;
        this.userID = userID;
        this.totalMoney = totalMoney;
    }

    public int getOderID() {
        return OderID;
    }

    public void setOderID(int oderID) {
        OderID = oderID;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public double getTotalMoney() {
        return totalMoney;
    }

    public void setTotalMoney(double totalMoney) {
        this.totalMoney = totalMoney;
    }
}
