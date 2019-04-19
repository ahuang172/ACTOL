package actol.servlet;

import actol.dao.UserDao;
import actol.dao.impl.UserDaoimpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

public class GospaceServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);

    }
    public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
        HttpSession session =request.getSession();
        String uid1=String.valueOf(session.getAttribute("uid"));
        int uid=Integer.parseInt(uid1);
        UserDao gospace=new UserDaoimpl();
        List actor_list=gospace.getspaceinf(uid);





    }
}
