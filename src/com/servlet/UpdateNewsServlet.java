package com.servlet;

import com.bean.UpdateNewsBean;
import com.vo.News;
import com.vo.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class UpdateNewsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        //request.setCharacterEncoding("UTF-8");
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        int id = Integer.valueOf(request.getParameter("id"));

        Date date = new Date();
        SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String pubtime = sf.format(date);
        User user = (User)request.getSession().getAttribute("user");
        int userid = user.getId();
        String username = user.getUsername();

        List<String> errorList = new ArrayList<>();
        if(title == null || title.equals("")){
            errorList.add("新闻标题不能为空！");
        }
        if(!errorList.isEmpty()){
            request.setAttribute("errorList", errorList);
            request.getRequestDispatcher("homeError.jsp").forward(request, response);
        }

        News news = new News();
        news.setId(id);
        news.setUserid(userid);
        news.setContent(content);
        news.setTitle(title);
        news.setPubtime(pubtime);
        news.setUsername(username);

        UpdateNewsBean updateNews = new UpdateNewsBean();
        boolean flag = updateNews.updateNews(news);
        if(flag){
            request.getRequestDispatcher("queryNews.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

    }
}
