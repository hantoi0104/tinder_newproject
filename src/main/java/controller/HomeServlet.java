package controller;

import dao.ProFileDAO;
import model.Account;
import model.Login;
import model.ProFile;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/home")
public class HomeServlet  extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Account account = Login.account;
        ProFileDAO proFileDAO = new ProFileDAO();
        ProFile proFile = proFileDAO.findById(account.getUseName());
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/view/index.jsp");
        req.setAttribute("proFile",proFile);
        requestDispatcher.forward(req, resp);
    }
}
