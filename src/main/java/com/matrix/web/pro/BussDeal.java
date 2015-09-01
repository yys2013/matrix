package com.matrix.web.pro;

import java.text.DecimalFormat;

import javax.servlet.http.HttpSession;

public class BussDeal {

    private int num = 300;

    public void doSomeThing(HttpSession session) {
        System.out.println(session);
        for (int i = 0; i < num; i++) {
            double rate = (i + 1) / (double) num * 100;
            DecimalFormat df = new DecimalFormat("##.##");
            session.setAttribute("proc", df.format(rate));
            System.out.println("=========" + rate + "===============");
            System.out.println("=========" + i + "===============");
            try {
                Thread.sleep(100);
            } catch (InterruptedException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        // session.setAttribute("proc", "1");
    }

    private int j = 10;

    public void doSomeThing() {

        for (; j > 0; j--) {
            System.out.println("=========" + j + "===============");
        }

    }

}
