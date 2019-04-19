package actol.dao;

import actol.entity.User;

import javax.print.DocFlavor;
import java.util.ArrayList;
import java.util.List;

public interface UserDao {
    //用户注册--黄新龙
    Integer register(User user);
    //寻找演员--黄新龙
    List findacters();
    //用户登录--黄新龙
    Integer login(String email,String pword);
    //返回头像昵称
    List getusername(int uid);
    //返回个人中心信息
    List getspaceinf(int uid);
}
