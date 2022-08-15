package com.example.webbanhangver1.dao;

import com.example.webbanhangver1.context.DBContext;
import com.example.webbanhangver1.model.Account;
import com.example.webbanhangver1.model.Cart;
import com.example.webbanhangver1.model.Item;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;

public class DaoOder {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

        public void addOder(Account account, Cart cart){
            LocalDate curDate = java.time.LocalDate.now();
            String date = curDate.toString();

            try {

                String qr = "Insert into Oder values(?,?,?)";
                conn = new DBContext().getConnection();
                ps = conn.prepareStatement(qr);
                ps.setString(1,date);
                ps.setInt(2,account.getAccountID());
                ps.setDouble(3,cart.getTotalMoney());
                ps.executeUpdate();
                //lay ra id cua oder vua add
                String qr2="select top 1 OderID from Oder order by OderID desc";
                conn = new DBContext().getConnection();
                PreparedStatement ps2 = conn.prepareStatement(qr2);
                rs = ps2.executeQuery();
                //them vao bang oderdetail
                while (rs.next()){
                    int oid = rs.getInt(1);
                    for (Item i : cart.getItems()
                    ) {
                        String qr3 = "Insert into Oder_Detail values(?,?,?,?)";
                        conn = new DBContext().getConnection();
                        PreparedStatement ps3 = conn.prepareStatement(qr3);
                        ps3.setInt(1,oid);
                        ps3.setInt(2,i.getProduct().getProductID());
                        ps3.setInt(3,i.getQuanity());
                        ps3.setDouble(4,i.getPrice());
                        ps3.executeUpdate();
                    }
                }

            }catch (Exception e){

            }

        }


    public static void main(String[] args) {
        LocalDate curDate = java.time.LocalDate.now();
        String date = curDate.toString();
        System.out.println(date);
    }
}
