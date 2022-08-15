package com.example.webbanhangver1.dao;

import com.example.webbanhangver1.context.DBContext;
import com.example.webbanhangver1.model.Account;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;

public class DaoAcc {
     Connection conn = null;
     PreparedStatement ps = null;
     ResultSet rs = null;


    public Account login(String userName, String passWord){
        String qr = "select * from Account where Username = ? and Password = ? ";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(qr);
            ps.setString(1,userName);
            ps.setString(2,passWord);

            rs = ps.executeQuery();
            while (rs.next()){
                return  new Account(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7)
                );
            }

        }  catch (Exception e) {
            e.printStackTrace();
        }
    return null;
    }
    public Account getAccByMail( String email){
        String qr = "select * from Account where Email = ? ";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(qr);
           // ps.setString(1,userName);
            ps.setString(1,email);

            rs = ps.executeQuery();
            while (rs.next()){
                return  new Account(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7)
                );
            }

        }  catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public Account checkAccountExit(String userName){
        String qr = "select * from Account where Username = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(qr);
            ps.setString(1,userName);

            rs = ps.executeQuery();
            while (rs.next()){
                return  new Account(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7)
                );
            }

        }  catch (Exception e) {
            e.printStackTrace();
        }
    return null;
    }
    public Account checkAccountExit(String username, String pwd) {
        String qr = "select * from Account where Username = ? and Password = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(qr);
            ps.setString(1,username);
            ps.setString(2,pwd);
            rs = ps.executeQuery();
            while (rs.next()){
                return  new Account(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7)
                );
            }

        }  catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    public void signUp(String username,String name,String mail,String pwd,String phone){
        String qr ="insert into Account values(?,?,?,?,?,NULL )";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(qr);
            ps.setString(1,username);
            ps.setString(2,name);
            ps.setString(3,mail);
            ps.setString(4,pwd);
            ps.setString(5,phone);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
// chức năng gửi mail quên mật khẩu/
    public static boolean sendMail(String to, String subject, String text) {
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        Session session = Session.getInstance(props, new javax.mail.Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("laptrinhwebnhom11@gmail.com", "admin123789");
            }
        });
        try {
            Message message = new MimeMessage(session);
            message.setHeader("Content-Type", "text/plain; charset=UTF-8");
            message.setFrom(new InternetAddress("shopphoneltw@gmail.com"));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
            message.setSubject(subject);
            message.setText(text);
            Transport.send(message);
        } catch (MessagingException e) {
            return false;
        }
        return true;
    }

    public Account checkEmailExit(String email){
        String qr = "select * from Account where Email = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(qr);
            ps.setString(1,email);

            rs = ps.executeQuery();
            while (rs.next()){
                return  new Account(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7)
                );
            }

        }  catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }


    public boolean passwordRecovery(String email) {
        DaoAcc daoAcc = new DaoAcc();
        Account account = daoAcc.getAccByMail(email);
        if (account!=null){
            sendMail(email,"Shop Camera(foget password)","Your password is: "+account.getPassWord());
            return true;
        }else// System.out.println("no acc");

        return false;
    }
    //chức năng gửi mail quên mật khẩu//
    public void editPass(Account account, String newpwd) {
        String query = "update account\n" +
                "set Password=?\n"+
                "where Username =? and Password =?";

        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, newpwd);
            ps.setString(2, account.getUserName());
            ps.setString(3, account.getPassWord());
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public void editUser(Account a, String mail, String phone) {
        String query = "update account\n" +
                "set Email=?,\n"+
                "Phone=?\n"+
                "where AccountID = ?";

        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, mail);
            ps.setString(2, phone);
            ps.setInt(3, a.getAccountID());
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public void editUser(Account a,  String check) {
        String query = "update account\n" +
                "set Role=?\n"+
                "where AccountID = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, check);
            ps.setInt(2, a.getAccountID());
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public static void main(String[] args) throws Exception {
        DaoAcc daoA = new DaoAcc();
       // Account a = daoA.getAccByMail("19130089@st.hcmuaf.edu.vn");
      //  List<Account> accountList = daoA.getAllAccount();
        //Map<String,Account> accountMap = loadData();
       // Account a3 = daoA.getAccByMail("huynguyen1723@gmail.com");
       // System.out.println(accountMap);
       // System.out.println(daoA.passwordRecovery("huynguyen1723@gmail.com"));
        //Account a2 = daoA.signUp("user2","Tui","user2@gmail.com","04544621","123");
      //  System.out.println(a);
      //  System.out.println(a3);
    }

}
