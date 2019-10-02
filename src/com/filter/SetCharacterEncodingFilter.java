package com.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

public class SetCharacterEncodingFilter implements Filter {
    public SetCharacterEncodingFilter(){

    }

    public void init(FilterConfig filterConfig) throws ServletException{

    }

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException{
        HttpServletRequest httpServletRequest = (HttpServletRequest)request;
        httpServletRequest.setCharacterEncoding("UTF-8");
        chain.doFilter(httpServletRequest, response);
    }

    public void destroy(){

    }
}
