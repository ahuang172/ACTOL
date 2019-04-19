package actol.dao.impl;

import actol.dao.BaseDao;
import actol.dao.UserDao;
import actol.entity.FIndActor;
import actol.entity.User;
import com.mysql.cj.xdevapi.SqlDataResult;
import com.sun.scenario.effect.impl.sw.sse.SSEBlend_SRC_OUTPeer;
import org.omg.CORBA.PUBLIC_MEMBER;

import javax.swing.plaf.basic.BasicScrollPaneUI;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.*;

public class UserDaoimpl extends BaseDao implements UserDao {
    //用户注册实现
    public Integer register(User user){
        int resister_return=0;
        BaseDao.getConnection();
        String sql="insert into user(username,password,phone,email,online)"+"value("+"'"+user.getUsername()+"'"+","+"'"+user.getPassword()+"'"+","+"'"+user.getPhone()+"'"+","+"'"+user.getEmail()+"'"+","+user.getOnline()+")";
        System.out.println(sql);
        resister_return=BaseDao.UpdateSQL(sql);
        if(resister_return!=0){
            return 1;
        }
        BaseDao.closeConn();
        return resister_return;
    }
    //返回寻找演员的结果
    @Override
    public List findacters()   {
        try {
            List<Map<String,String>> userList=new ArrayList<Map<String, String>>();

            BaseDao.getConnection();
            String sql = "select username,project_ided,project_iding,faceimg,user_mark from user";
            BaseDao.selectSQL(sql);

          while (rs.next()){
              Map<String,String> findmap=new HashMap<String, String>();
              ResultSetMetaData metaData=rs.getMetaData();
              int columns_count=metaData.getColumnCount();
              for(int i=1; i<=columns_count ;i++){
                  findmap.put(metaData.getColumnName(i),rs.getString(i));
              }
              userList.add(findmap);
          }

            BaseDao.closeConn();
            return userList;

        }catch (SQLException e){
            e.printStackTrace();
        }
        BaseDao.closeConn();
        return null;
    }
    //登录方法
    public Integer login(String email,String pword){


        try {
            BaseDao.getConnection();
            String sql="select id,password from user where phone="+"'"+email+"' or email="+"'"+email+"'";
            System.out.println(sql);
            BaseDao.selectSQL(sql);
            String getpsd=null;
            int getid=0;
                while (rs.next()) {
                    getid=rs.getInt("id");
                    getpsd=rs.getString("password");

                }
            if(getpsd.equals(pword)){

                return getid;
            }else {

                return 0;
            }

        }catch (SQLException e){
            e.printStackTrace();
        }

        return 0;
    }

    public List getusername(int uid){

        try {
            List<Map<String,String>> userList=new ArrayList<Map<String, String>>();

            BaseDao.getConnection();
            String sql="select username,faceimg from user where id="+uid;
            System.out.println(sql);
            BaseDao.selectSQL(sql);

            while (rs.next()) {
                Map<String, String> findmap = new HashMap<String, String>();
                ResultSetMetaData metaData = rs.getMetaData();


                findmap.put(metaData.getColumnName(1), rs.getString(1));
                findmap.put(metaData.getColumnName(2), rs.getString(2));
                userList.add(findmap);
            }

            return userList;

        }catch (SQLException e){
            e.printStackTrace();
        }

        return null;

    }

    @Override
    public List getspaceinf(int uid) {
        try {
            List<Map<String,String>> spacelist =new ArrayList<>();
            String sql = "select * from user where id=" + uid;
            BaseDao.getConnection();
            BaseDao.selectSQL(sql);
            while(rs.next()){
                Map<String,String> rsmap=new HashMap<String, String>();
                ResultSetMetaData metaData=rs.getMetaData();
                int columns_count=metaData.getColumnCount();
                for(int i=1; i<=columns_count ;i++){
                    rsmap.put(metaData.getColumnName(i),rs.getString(i));
                }
                spacelist.add(rsmap);
            }
            return spacelist;
        }catch(SQLException e){
            e.printStackTrace();
        }
        return null;
    }

   /*public static void main(String[] args) {

              UserDaoimpl a=new UserDaoimpl();

              List list=a.getspaceinf(139);
                System.out.println(list);

     }*/




}
