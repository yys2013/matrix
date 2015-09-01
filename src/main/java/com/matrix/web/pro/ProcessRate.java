package com.matrix.web.pro;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ProcessRate  extends HttpServlet{

    /**
     * 
     */
    private static final long serialVersionUID = 6796192550751883761L;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(req, response);
    }
    
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            Thread.sleep(1000);
        } catch (InterruptedException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        String rate = (String) session.getAttribute("proc");
        System.out.println("===========rate" + rate);
//        System.out.println("======121======" + request.getSession());
        out.print(rate);
        out.close();
        
    }
}
