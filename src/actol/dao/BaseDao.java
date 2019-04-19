package actol.dao;

import org.omg.CORBA.PRIVATE_MEMBER;

import java.sql.*;
import java.util.List;

public class BaseDao {
    private static String url="jdbc:mysql://localhost:3306/actol";
    private static String user="root";
    private static String pword="pp7298610";
    protected static Connection conn;
    protected static PreparedStatement pstmt;
    protected static ResultSet rs;
    //创建连接
   public static Connection getConnection(){
        if(conn==null){
            try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn= DriverManager.getConnection(url,user,pword);
            }catch (Exception e){
                e.printStackTrace();
            }
        }
        return conn;

    }
    //读操作


    public static ResultSet selectSQL(String query){
        getConnection();
        try{
            pstmt = conn.prepareStatement(query);
            rs=pstmt.executeQuery();
        }catch (SQLException e){
            e.printStackTrace();
        }
        return rs;
    }
    //写操作
    public static int UpdateSQL(String query){
        int result=0;
        getConnection();
        try {
            pstmt=conn.prepareStatement(query);
            result=pstmt.executeUpdate();
            }catch (SQLException e){
            e.printStackTrace();
        }
        return result;
    }
    public static void closeConn(){
        try {
            if(rs!=null){
                rs.close();
            }
            if(pstmt!=null){
                pstmt.close();
            }
            if(conn!=null){
                conn.close();
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
    }
   /*public static void main(String[] args) {



        System.out.println(BaseDao.getConnection());

    }*/
}
