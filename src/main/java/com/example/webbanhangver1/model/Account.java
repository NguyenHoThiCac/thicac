package com.example.webbanhangver1.model;

public class Account {
    private int accountID;
    private String userName;
    private String aName;
    private String email;
    private String passWord;
    private String phone;
    private int role;

    public Account(int accountID, String userName, String aName, String email, String passWord, String phone, int role) {
        this.accountID = accountID;
        this.userName = userName;
        this.aName = aName;
        this.email = email;
        this.passWord = passWord;
        this.phone = phone;
        this.role = role;
    }

    public int getAccountID() {
        return this.accountID;
    }

    public void setAccountID(int accountID) {
        this.accountID = accountID;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getaName() {
        return aName;
    }

    public void setaName(String aName) {
        this.aName = aName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Override
    public String toString() {
        return "Account{" +
                "accountID=" + accountID +
                ", userName='" + userName + '\'' +
                ", aName='" + aName + '\'' +
                ", email='" + email + '\'' +
                ", passWord='" + passWord + '\'' +
                ", phone='" + phone + '\'' +
                ", role=" + role +
                '}';
    }
}
