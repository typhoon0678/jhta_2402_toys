package com.yojulab.study_springboot.controller;

import com.yojulab.study_springboot.service.CarCompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

@Controller
@RequestMapping("/carcompany")
public class CarCompanyController {

    @Autowired
    private CarCompanyService carCompanyService;

    @GetMapping("/list")
    public ModelAndView carCompanyList(@RequestParam Map params, ModelAndView modelAndView) {

        Object result = carCompanyService.selectCarCompany(params);

        modelAndView.addObject("params", params);
        modelAndView.addObject("result", result);

        modelAndView.setViewName("/WEB-INF/views/carcompany/list.jsp");
        return modelAndView;
    }
}
