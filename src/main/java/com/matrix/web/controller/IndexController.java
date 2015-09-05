package com.matrix.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
    
    @RequestMapping(path="/")
    public String showIndexPage() {
        System.out.println("==================index=====================");
        return "index";
    }
    
}
