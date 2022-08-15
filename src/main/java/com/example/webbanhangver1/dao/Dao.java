package com.example.webbanhangver1.dao;

import com.example.webbanhangver1.context.DBContext;
import com.example.webbanhangver1.model.Catalog;
import com.example.webbanhangver1.model.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class Dao {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Product> getAllProduct(int index){
        List<Product> list = new ArrayList<>();
        String qr = "select * from Product order by ProductID\n" +
                "OFFSET ? rows FETCH next 12 rows only";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(qr);
            ps.setInt(1,(index-1)*12);
            rs = ps.executeQuery();
            while (rs.next()){
               list.add(new Product(
                       rs.getInt(1),
                       rs.getString(2),
                       rs.getString(3),
                       rs.getDouble(4),
                       rs.getString(5),
                       rs.getString(6),
                       rs.getString(7),
                       rs.getDouble(8),
                       rs.getString(9),
                       rs.getInt(10)
               ));
            }
        }catch (Exception e){
        }
        return list;
    }
    public List<Product> getProductByCatalogID(String catalogID){
        List<Product> list = new ArrayList<>();
        String qr = "select * from Product where CatalogID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(qr);
            ps.setString(1,catalogID);
            rs = ps.executeQuery();
            while (rs.next()){
               list.add(new Product(
                       rs.getInt(1),
                       rs.getString(2),
                       rs.getString(3),
                       rs.getDouble(4),
                       rs.getString(5),
                       rs.getString(6),
                       rs.getString(7),
                       rs.getDouble(8),
                       rs.getString(9)
                       ,rs.getInt(10)

               ));
            }
        }catch (Exception e){
        }
        return list;
    }
    public List<Product> searchByName(String txtSearch){
        List<Product> list = new ArrayList<>();
        String qr = "select * from Product where Name like ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(qr);
            ps.setString(1,"%"+txtSearch+"%");
            rs = ps.executeQuery();
            while (rs.next()){
               list.add(new Product(
                       rs.getInt(1),
                       rs.getString(2),
                       rs.getString(3),
                       rs.getDouble(4),
                       rs.getString(5),
                       rs.getString(6),
                       rs.getString(7),
                       rs.getDouble(8),
                       rs.getString(9)
                       ,rs.getInt(10)

               ));
            }
        }catch (Exception e){
        }
        return list;
    }
    public Product getProductByID(String productID){
        String qr = "select * from Product where ProductID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(qr);
            ps.setString(1,productID);
            rs = ps.executeQuery();
            while (rs.next()){
               return new Product(
                       rs.getInt(1),
                       rs.getString(2),
                       rs.getString(3),
                       rs.getDouble(4),
                       rs.getString(5),
                       rs.getString(6),
                       rs.getString(7),
                       rs.getDouble(8),
                       rs.getString(9)
                       ,rs.getInt(10)

               );
            }
        }catch (Exception e){
        }
        return null;
    }

    public List<Product> getCheepProduct(){
        List<Product> list = new ArrayList<>();
        String qr = "select top 30 * from Product order by Sale desc";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(qr);
            rs = ps.executeQuery();
            while (rs.next()){
                list.add(new Product(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getDouble(8),
                        rs.getString(9)
                        ,rs.getInt(10)

                ));
            }
        }catch (Exception e){
        }
        return list;
    }
    public List<Product> getNewProduct(){
        List<Product> list = new ArrayList<>();
        String qr = "select top 30* from Product\n" +
                "order by ProductID desc";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(qr);
            rs = ps.executeQuery();
            while (rs.next()){
                list.add(new Product(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getDouble(8),
                        rs.getString(9)
                        ,rs.getInt(10)

                ));
            }
        }catch (Exception e){
        }
        return list;
    }
    public int getTotalProduct(){
        String qr = "select COUNT(*) from Product";
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
    public int getTotalProduct(int sid){
        String qr = "select COUNT(*) from Product where SellID = ? ";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(qr);
            ps.setInt(1,sid);
            rs = ps.executeQuery();
            while (rs.next()){
                return rs.getInt(1);
            }
        }catch (Exception e){

        }
        return 0;

    }

    public List<Catalog> getAllCatalog(){
        List<Catalog> listC = new ArrayList<>();
        String qr = "select  * from Catalog";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(qr);
            rs = ps.executeQuery();
            while (rs.next()){
                listC.add(new Catalog(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3)
                ));
            }
        }catch (Exception e){
        }
        return listC;
    }
    public List<Product> getProductBySellID(int sellID){
        List<Product> list = new ArrayList<>();
        String qr = "select * from Product where SellID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(qr);
            ps.setInt(1,sellID);
            rs = ps.executeQuery();
            while (rs.next()){
                list.add(new Product(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getDouble(8),
                        rs.getString(9)
                        ,rs.getInt(10)

                ));
            }
        }catch (Exception e){
        }
        return list;
    }
    public  void deleteProduct(String pid) {
        String qr = "delete from Product where ProductID = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(qr);
            ps.setString(1, pid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public void insertProduct(String name, Double price, String image1, String image2, String image3, String detail, String color, int catalog, int sid) {
            String query = "Insert into Product values(?,?,?,?,?,?,?,?,?,?,?)";
            try {
                conn = new DBContext().getConnection();//mo ket noi voi sql
                ps = conn.prepareStatement(query);
                ps.setString(1, name);
                ps.setString(2, detail);
                ps.setDouble(3, price);
                ps.setString(4, image1);
                ps.setString(5, image2);
                ps.setString(6, image3);
                ps.setDouble(7, 0);
                ps.setString(8, color);
                ps.setInt(9, 0);
                ps.setInt(10, catalog);
                ps.setInt(11, sid);
                ps.executeUpdate();
            } catch (Exception e) {
            }
    }
    public List<Product> getAllProduct(int index, int sid){
        List<Product> list = new ArrayList<>();
        String qr = "select * from Product " +
                "where SellID =?\n" +
                "order by ProductID\n" +
                "OFFSET ? rows FETCH next 10 rows only";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(qr);
            ps.setInt(1,sid);
            ps.setInt(2,(index-1)*10);
            rs = ps.executeQuery();
            while (rs.next()){
                list.add(new Product(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getDouble(8),
                        rs.getString(9),
                        rs.getInt(10)
                ));
            }
        }catch (Exception e){
        }
        return list;
    }
    public void editProduct(String name, String detail, Double price, String image1, String image2, String image3, String color, int sale, int catalog, int sid, String pid) {
        String query = "update product\n"
                + "set [Name] = ?,\n"
                + "[Detail] = ?,\n"
                + "Price = ?,\n"
                + "Image1 = ?,\n"
                + "Image2 = ?,\n"
                + "Image3 = ?,\n"
                +"PriceNew = ?,\n"
                +"Color = ?,\n"
                +"Sale = ?,\n"
                +"CatalogID = ?,\n"
                +"SellID = ?\n"
                + "where ProductID = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, detail);
            ps.setDouble(3, price);
            ps.setString(4, image1);
            ps.setString(5, image2);
            ps.setString(6, image3);
            ps.setDouble(7, (price - price*sale/100));
            ps.setString(8, color);
            ps.setInt(9, sale);
            ps.setInt(10, catalog);
            ps.setInt(11, sid);
            ps.setString(12, pid);
            ps.executeUpdate();
        } catch (Exception e) {
        }

}

    public static void main(String[] args) {
        Dao dao = new Dao();
        List<Product> list = dao.getAllProduct(3);
        List<Product> list2 = dao.searchByName("Canon");
        List<Catalog> listC = dao.getAllCatalog();
        Product p = dao.getProductByID("69");
       dao.getTotalProduct();
        System.out.println(p);
//        System.out.println(dao.getProductBySellID(1));
//       for (Product o :
//            list) {
//            System.out.println(o);
//        }
    }


}
