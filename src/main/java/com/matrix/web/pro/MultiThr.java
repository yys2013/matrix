package com.matrix.web.pro;

import javax.servlet.http.HttpSession;

public class MultiThr implements Runnable{

    private HttpSession session;
    
    public MultiThr() {}
    
    public MultiThr(HttpSession session) {
        this.session = session;
    }
    
    @Override
    public void run() {
        
        BussDeal bd = new BussDeal();
        bd.doSomeThing(session);
    }

}
