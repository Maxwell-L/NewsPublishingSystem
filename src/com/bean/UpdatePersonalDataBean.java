package com.bean;

import com.common.DbHandle;
import com.vo.User;

import java.sql.ResultSet;
import java.sql.SQLException;

public class UpdatePersonalDataBean {
    public boolean checkRepeatUsername(User user) throws SQLException {
        DbHandle db = new DbHandle();
        String sql_username = "select * from user where username ='"+user.getUsername()+"'";
        ResultSet rs = db.executeQuery(sql_username);
        return !rs.next() || rs.getInt("id") == user.getId();
    }

    public boolean updatePersonalData(User user){
        DbHandle db = new DbHandle();
        String sql = "update user set username='" + user.getUsername() + "',password='" + user.getPassword() +
                "',sex='" + user.getSex() + "', profession='" + user.getProfession() + "', favourite='" +
                user.getFavourite() + "', type='" + user.getType() + "', note='" + user.getNote() +
                "' where id=" + user.getId();
        int ret = db.executeUpdate(sql);
        db.close();
        return ret > 0;
    }
}
