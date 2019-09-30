package com.servlet;

import com.bean.GetNewsByIdBean;
import com.vo.News;
import com.vo.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.*;

public class GetNewsByIdServlet extends HttpServlet{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        int id = Integer.valueOf(request.getParameter("id"));
        GetNewsByIdBean getNewsById = new GetNewsByIdBean();
        News news = null;
        try{
            news = getNewsById.getNewsById(id);
        } catch(SQLException e){
            System.out.println("根据id查询当前的新闻信息失败");
            e.printStackTrace();
        }
        request.setAttribute("news", news);
        String opration = request.getParameter("opration");
        if(opration.equals("view")){
            request.getRequestDispatcher("viewNews.jsp").forward(request, response);
        }
        if(opration.equals("update")){
            request.getRequestDispatcher("updateNews.jsp").forward(request, response);
        }

    }
}
