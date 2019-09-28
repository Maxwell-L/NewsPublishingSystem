package com.bean;

import com.common.DbHandle;
import com.vo.News;
import com.vo.User;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

public class QueryNewsBean {
    public boolean queryNews(String title, int userid){
        DbHandle db = new DbHandle();
        String sql = "select * from news where title='" + title + "' and userid=" + userid;
        return true;
    }
}
