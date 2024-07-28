package com.demo;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import java.util.Locale;

public class MyViewResolver extends InternalResourceViewResolver {
    @Autowired
    HttpServletRequest request;

    @Autowired
    HttpServletResponse response;

    @Override
    public View resolveViewName(String viewName, Locale locale) throws Exception {
        if(viewName.startsWith("redirect:")) {
            return super.resolveViewName(viewName, locale);
        }

        request.setAttribute("viewName", viewName);
        if(request.getRequestURI().startsWith("/admin")) {
            return super.resolveViewName("layout_admin", locale);
        }else{
            return super.resolveViewName("layout_customer", locale);
        }
    }
}
