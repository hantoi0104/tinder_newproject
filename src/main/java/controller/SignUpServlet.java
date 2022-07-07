package controller;

import dao.AccountDAO;
import model.Account;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet (urlPatterns = "/Signup")
public class SignUpServlet extends HttpServlet {
    AccountDAO accountDAO = new AccountDAO();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
                    String name = req.getParameter("username");
                    String password = req.getParameter("password");
                    String repassword = req.getParameter("confirm password");
                    String email = req.getParameter("email");
                    if (!password.equals(repassword)){
                        System.out.printf("sai ps");
                        resp.sendRedirect("/view/Singup.jsp");

                    } else{
                        Account account = accountDAO.findById(name);
                        if (account == null){
                            accountDAO.create(new Account(name,password,email));
                            resp.sendRedirect("/view/login.jsp");

                        }else {
                            System.out.printf("trung");
                            resp.sendRedirect("/view/Singup.jsp");

                        }
                    }


            }
        }



