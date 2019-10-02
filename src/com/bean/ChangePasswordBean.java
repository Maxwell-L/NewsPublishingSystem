package com.bean;

import com.common.DbHandle;
import com.vo.User;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ChangePasswordBean {
    public boolean checkOldPassword(User user, String password) throws SQLException{
        DbHandle db = new DbHandle();
        String sql = "select * from user where id=" + user.getId();
        ResultSet rs = db.executeQuery(sql);
        if(rs.next()){
            String oldPassword = rs.getString("password");
            db.close();
            return oldPassword.equals(password);
        } else {
            db.close();
            return false;
        }
    }

    public boolean changePassword(User user){
        DbHandle db = new DbHandle();
        String sql = "update user set username='" + user.getUsername() + "', password='" + user.getPassword() +
                "', sex='" + user.getSex() + "', profession='" + user.getProfession() + "', type='" +
                user.getType() + "', favourite='" + user.getFavourite() + "', note='" + user.getNote() +
                "' where id=" + user.getId();
        int ret = db.executeUpdate(sql);
        db.close();
        return ret > 0;
    }
}
