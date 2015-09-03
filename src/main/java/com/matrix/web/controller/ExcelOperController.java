package com.matrix.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/excel")
public class ExcelOperController {
    
    @RequestMapping("/qry")
    public String queryData(Model model) {
        System.out.println("name!");
        model.addAttribute("name", "hello");
        return "index";
    }
}
