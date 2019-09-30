package com.bean;


import com.common.DbHandle;

public class DeleteNewsBean {
    public boolean deleteNews(int id){
        DbHandle db = new DbHandle();
        String sql = "delete from news where id='" + id + "'";
        int ret = db.executeUpdate(sql);
        db.close();
        return ret > 0;
    }
}
