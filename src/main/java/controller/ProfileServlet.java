package controller;

import dao.ProFileDAO;
import model.Login;
import model.ProFile;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet(urlPatterns = "/profile")
public class ProfileServlet extends HomeServlet {
    ProFileDAO fileDAO = new ProFileDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        RequestDispatcher dispatcher = null;
        switch (action) {
            case "create":
                ProFile proFile = fileDAO.findById(Login.account.getUseName());
                if (proFile == null) {
                    dispatcher = req.getRequestDispatcher("/view/editProfile.jsp");
                    dispatcher.forward(req, resp);
                } else {
                    req.setAttribute("editProfile", proFile);
                    dispatcher = req.getRequestDispatcher("/view/editProfile.jsp");
                    dispatcher.forward(req, resp);
                }
//                fileDAO.edit("idProfile", file);
//                resp.sendRedirect("/view/index.jsp");
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String idProfile = Login.account.getUseName();
        String name = req.getParameter("name");
        String gender = req.getParameter("gender");
        int age = Integer.parseInt(req.getParameter("age"));
        String address = req.getParameter("address");
        String img = req.getParameter("LinkImage");
        ProFile file = new ProFile(idProfile, name, gender, age, address, img);
        if (fileDAO.findById(idProfile) == null) {
            fileDAO.create(file);
            resp.sendRedirect("/view/index.jsp");

        } else {
            fileDAO.edit(idProfile, file);
            resp.sendRedirect("/view/index.jsp");
        }
    }
}