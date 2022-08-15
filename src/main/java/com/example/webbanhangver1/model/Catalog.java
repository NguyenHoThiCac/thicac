package com.example.webbanhangver1.model;

public class Catalog {
    private int catalogID;
    private String cname;
    private int parentID;

    public Catalog(int catalogID, String cname, int parentID) {
        this.catalogID = catalogID;
        this.cname = cname;
        this.parentID = parentID;
    }

    public int getCatalogID() {
        return catalogID;
    }

    public void setCatalogID(int catalogID) {
        this.catalogID = catalogID;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public int getParentID() {
        return parentID;
    }

    public void setParentID(int parentID) {
        this.parentID = parentID;
    }

    @Override
    public String toString() {
        return "Catalog{" +
                "catalogID=" + catalogID +
                ", name='" + cname + '\'' +
                ", parentID=" + parentID +
                '}';
    }
}
