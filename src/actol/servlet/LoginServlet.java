package actol.servlet;

import actol.dao.UserDao;
import actol.dao.impl.UserDaoimpl;
import actol.entity.User;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class LoginServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
            String loginname=request.getParameter("loginnname");
            String password=request.getParameter("pword");

            UserDao userlogin=new UserDaoimpl();

            int uid=userlogin.login(loginname,password);
            if(uid != 0){
                HttpSession session=request.getSession();
                session.setAttribute("loginname",loginname);
                session.setAttribute("uid",uid);
                List<HashMap<String,String>> list=userlogin.getusername(uid);
                HashMap hashMap =list.get(0);
                String uname=String.valueOf(hashMap.get("username"));
                String uface=String.valueOf(hashMap.get("faceimg"));
                Cookie cookie1 =new Cookie("uname",uname);
                Cookie cookie2=new Cookie("uface",uface);
                response.addCookie(cookie1);
                response.addCookie(cookie2);
                response.sendRedirect(request.getContextPath()+"/login_successed.jsp");
            }
            else {
                response.sendRedirect(request.getContextPath()+"/login.jsp");
            }






    }
}
