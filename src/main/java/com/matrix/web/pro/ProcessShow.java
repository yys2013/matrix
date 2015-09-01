package com.matrix.web.pro;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ProcessShow extends HttpServlet{
    
    /**
     * 
     */
    private static final long serialVersionUID = 86260684635170029L;


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(req, response);
    }
    
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
//        PrintWriter out = response.getWriter();
//        out.write("hello");
//        out.close();
//        request.getRequestDispatcher("/process.jsp").forward(request, response);
//        String name = request.getParameter("name");
//        System.out.println(name);
        HttpSession session = request.getSession();
        session.setAttribute("proc", "0");
        MultiThr mt = new MultiThr(request.getSession());
        new Thread(mt).start();
        System.out.println("======================start");
    }
    
    private static void doMulti() {
        MultiThr mt = new MultiThr();
        new Thread(mt).start(); 
        new Thread(mt).start(); 
        System.out.println("======================start");

    }
    
    
    public static void main(String[] args) {
        doMulti();
    }
    
}
