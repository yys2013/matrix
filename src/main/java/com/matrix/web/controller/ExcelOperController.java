package com.matrix.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ExcelOperController {
    
    @RequestMapping("/excel/qry")
    public void queryData(Model model) {
        System.out.println("name!");
        model.addAttribute("name", "hello");
    }
}
