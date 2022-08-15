package com.example.webbanhangver1.dao;

import com.example.webbanhangver1.context.DBContext;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DaoContact {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    public void contact(String name,String email,String website,String subject,String message){
        String qr ="insert into Contact values(?,?,?,?,?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(qr);
            ps.setString(1,name);
            ps.setString(2,email);
            ps.setString(3,website);
            ps.setString(4,subject);
            ps.setString(5,message);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
