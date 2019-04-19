package actol.servlet;

import actol.dao.UserDao;
import actol.dao.impl.UserDaoimpl;
import actol.entity.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LogoutServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);

    }
    public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
        request.getSession().invalidate();
        response.sendRedirect(request.getContextPath());

    }
}
