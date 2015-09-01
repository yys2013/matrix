package com.matrix.web.utils;

import com.mongodb.MongoClient;
import com.mongodb.client.MongoDatabase;

public class MangoDBUtil {

    /**
     * 
            获取需认证获取数据库连接
            启动登录密码认证：
            登录数据库，添加用户
            use 
            db.addUser('user1','pwd1'); 
            重启服务端开启认证服务
            mongod --auth --dbpath=D:\mongodb\db 
            接下来登录就需要用户名密码认证了
            启动客户端：
            use admin; 
            //进行登陆验证，如果不通过，是没有操作权限的了。 
            db.auth('user1','pwd1'); 
     */
    public static MongoDatabase getMongoDB() {
        MongoClient mClient = new MongoClient();
        MongoDatabase db = mClient.getDatabase("bmzl");
        return db;
    }
    
    /**
     * @param args
     */
    public static void main(String[] args) {

        System.out.println(getMongoDB());

    }

}
