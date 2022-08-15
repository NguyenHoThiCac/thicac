package com.example.webbanhangver1.dao;

import com.example.webbanhangver1.context.DBContext;
import com.example.webbanhangver1.model.Blog;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class DaoBlog {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    public List<Blog> getAllBlog(int index){
        List<Blog> list = new ArrayList<>();
        String qr = "select * from Blog order by BlogID\n" +
                "OFFSET ? rows FETCH next 12 rows only";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(qr);
            ps.setInt(1,(index-1)*3);
            rs = ps.executeQuery();
            while (rs.next()){
                list.add(new Blog(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7)

                ));
            }
        }catch (Exception e){
        }
        return list;
    }
    public Blog getBlogByID(String BlogID){
        String qr = "select * from Blog where BlogID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(qr);
            ps.setString(1,BlogID);
            rs = ps.executeQuery();
            while (rs.next()){
                return new Blog(
                                rs.getInt(1),
                                rs.getString(2),
                                rs.getString(3),
                                rs.getString(4),
                                rs.getString(5),
                                rs.getString(6),
                        rs.getString(7)

                );
            }
        }catch (Exception e){
        }
        return null;
    }
    public int getTotalBlog(){
        String qr = "select COUNT(*) from Blog";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(qr);
            rs = ps.executeQuery();
            while (rs.next()){
                return rs.getInt(1);
            }
        }catch (Exception e){

        }
        return 0;

    }

    public static void main(String[] args) {
        DaoBlog daoBlog = new DaoBlog();
        List<Blog> list = daoBlog.getAllBlog(1);
        Blog blog = daoBlog.getBlogByID("1");
        System.out.println(list);
        System.out.println("in blog by id");
        System.out.println(blog);
        System.out.println("in total blog");
        System.out.println(daoBlog.getTotalBlog());

    }

    public void addBlog(String name, String aname, String demo, String detail, String image1) {
        LocalDate curDate = java.time.LocalDate.now();
        String date = curDate.toString();
        String qr = "Insert into Blog values(?,?,?,?,?,?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(qr);
            ps.setString(1, name);
            ps.setString(2, aname);
            ps.setString(3, date);
            ps.setString(4, demo);
            ps.setString(5, detail);
            ps.setString(6, image1);
            ps.executeUpdate();
        }catch (Exception e){
        }
    }
}
