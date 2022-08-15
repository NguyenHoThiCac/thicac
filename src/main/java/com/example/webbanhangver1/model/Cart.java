package com.example.webbanhangver1.model;

import java.util.ArrayList;
import java.util.List;

public class Cart {
    private List<Item> items;

    public Cart() {
        items = new ArrayList<>();
    }

    public Cart(List<Item> items) {
        this.items = items;
    }

    public List<Item> getItems() {
        return items;
    }

    public void setItems(List<Item> items) {
        this.items = items;
    }
    private Item getItemByID(int id){
        for (Item i : items){
            if (i.getProduct().getProductID()==id)
                return i; //kiem tra productid trong sp vs productid trong gio hang
        }return null;
    }
    public int getQuantityByID(int id){
        return getItemByID(id).getQuanity(); //tra ve so luong khi biet id
    }

    public void addItem(Item t){
        //da ton tai trong Cart
        if (getItemByID(t.getProduct().getProductID())!=null){
            Item i =getItemByID(t.getProduct().getProductID());
            i.setQuanity(i.getQuanity()+t.getQuanity()); //them so luong
        }else
            //chua ton tai trong Cart
        items.add(t);
    }
    public void removeItem(int id){ //product id
        if (getItemByID(id)!=null){
            items.remove(getItemByID(id));
        }
    }
    public double getTotalMoney(){ // lay ra tong tien
        double t = 0;
        for (Item i :items) {
            t +=i.getQuanity()*i.getPrice();
        }
        return t;

    }
}
