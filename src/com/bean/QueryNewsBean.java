package com.bean;

import com.common.DbHandle;
import com.vo.News;
import com.vo.User;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

public class QueryNewsBean {
    public List<News> queryNews(String title, String username){
        DbHandle db = new DbHandle();
        String sql = "select * from news where 1=1";
        if(username != null && username.length() > 0){
            sql = sql + " and username like '%" + username + "%'";
        }
        if(title != null && title.length() > 0){
            sql = sql + " and title like '%" + title + "%'";
        }
        ResultSet rs = db.executeQuery(sql);
        List<News> newsList = new ArrayList<>();
        try{
            while(rs.next()){
                String title1 = rs.getString("title");
                int userid = rs.getInt("userid");
                String username1 = rs.getString("username");
                String pubtime = rs.getString("pubtime");
                String content = rs.getString("content");
                int id = rs.getInt("id");

                News news = new News();
                news.setId(id);
                news.setTitle(title1);
                news.setContent(content);
                news.setUsername(username1);
                news.setPubtime(pubtime);
                news.setUserid(userid);

                newsList.add(news);
            }
            db.close();
        } catch(Exception e){
            System.out.println("查询新闻失败");
            e.printStackTrace();
        }
        return newsList;
    }
}
