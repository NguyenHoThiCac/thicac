package com.example.webbanhangver1.model;

public class Contact {
    private int contactID;
    private String name;
    private String email;
    private String website;
    private String subject;
    private String message;

    public Contact(int contactID, String name, String email, String website, String subject, String message) {
        this.contactID = contactID;
        this.name = name;
        this.email = email;
        this.website = website;
        this.subject = subject;
        this.message = message;
    }

    public int getContactID() {
        return contactID;
    }

    public void setContactID(int contactID) {
        this.contactID = contactID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
