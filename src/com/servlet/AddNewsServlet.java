package com.servlet;

import java.text.SimpleDateFormat;
import java.util.*;

import com.bean.AddNewsBean;
import com.vo.News;
import com.vo.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AddNewsServlet extends HttpServlet{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        request.setCharacterEncoding("UTF-8");
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        Date date = new Date();
        SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd hh:ss:mm");
        String pubtime = sf.format(date);
        User user = (User)request.getSession().getAttribute("user");
        int userid = user.getId();

        News news = new News();
        news.setTitle(title);
        news.setContent(content);
        news.setUserid(userid);
        news.setPubtime(pubtime);

        List<String> errorList = new ArrayList<>();
        if(title == null || title.equals("")){
            errorList.add("新闻标题不能为空！");
        }
        if(!errorList.isEmpty()){
            request.setAttribute("errorList", errorList);
            request.getRequestDispatcher("error.jsp").forward(request, response);
        } else {
            AddNewsBean addNewsBean = new AddNewsBean();
            boolean flag = addNewsBean.addNews(news);
            if(flag){
                request.getRequestDispatcher("queryNews.jsp").forward(request, response);
            } else {
                request.getRequestDispatcher("error.jsp").forward(request, response);
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

    }
}
