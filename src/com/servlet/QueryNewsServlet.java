package com.servlet;

import com.bean.AddNewsBean;
import com.bean.QueryNewsBean;
import com.vo.News;
import com.vo.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;

public class QueryNewsServlet extends HttpServlet{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        request.setCharacterEncoding("UTF-8");
        String title = request.getParameter("title");
        String username = request.getParameter("username");

        List<String> errorList = new ArrayList<>();
        if((title == null || title.equals("")) && (username == null || username.equals(""))){
            title = (String)request.getAttribute("title");
            username = (String)request.getAttribute("username");
            if((title == null || title.equals("")) && (username == null || username.equals(""))){
                errorList.add("查询内容不能为空");
            }
        }

        if(!errorList.isEmpty()){
            request.setAttribute("errorList", errorList);
            request.getRequestDispatcher("error.jsp").forward(request, response);
        } else {
            QueryNewsBean queryNews = new QueryNewsBean();
            List<News> newsList = queryNews.queryNews(title, username);
            request.setAttribute("title", title);
            request.setAttribute("username", username);
            request.setAttribute("newsList", newsList);
            request.getRequestDispatcher("queryNews.jsp").forward(request, response);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

    }
}
