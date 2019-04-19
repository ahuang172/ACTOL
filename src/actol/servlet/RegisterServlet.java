package actol.servlet;

import actol.dao.UserDao;
import actol.dao.impl.UserDaoimpl;
import actol.entity.User;
import com.sun.deploy.net.HttpResponse;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class RegisterServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        doPost(request,response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{

            String username =request.getParameter("username");
            String pword =request.getParameter("pword");
            String phone=request.getParameter("phone");
            String email=request.getParameter("email");
            User user=new User();
            user.setEmail(email);
            user.setPhone(phone);
            user.setPassword(pword);
            user.setUsername(username);
            user.setOnline(0);
            UserDao userDao=new UserDaoimpl();

            userDao.register(user);
            response.sendRedirect(request.getContextPath()+"/zcs.html");
            /*String site = new String(request.getContextPath()+"/zcs.html");
            response.setStatus(response.SC_MOVED_TEMPORARILY);
            response.setHeader("Location", site);*/






    }
}
