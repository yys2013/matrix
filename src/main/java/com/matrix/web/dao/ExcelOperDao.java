package com.matrix.web.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

import org.bson.Document;

import com.matrix.web.utils.ExcelUtil;
import com.matrix.web.utils.MangoDBUtil;
import com.mongodb.BasicDBObject;
import com.mongodb.Block;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;

public class ExcelOperDao {

    private String pathString = "E:\\123.xlsx";
    
    public void insertData() throws Exception {
        MongoDatabase mongoDB = MangoDBUtil.getMongoDB();
        MongoCollection<Document> collection = mongoDB.getCollection("DPAD_1");
        
        List<List<String>> dataList = ExcelUtil.readExcel(pathString);
        List<String> headerList = dataList.get(0);
        
        List<Document> docList = new ArrayList<Document>();
        for (int i = 1; i < dataList.size(); i++) {
            List<String> colList = dataList.get(i);
            Document doc = new Document();
            for(int j = 0; j < colList.size(); j++) {
                doc.append(headerList.get(j), colList.get(j));
            }
            docList.add(doc);
        }
        collection.insertMany(docList);
    }
    
    public void queryData(BasicDBObject object) {
        MongoDatabase mongoDB = MangoDBUtil.getMongoDB();
        MongoCollection<Document> collection = mongoDB.getCollection("DPAD_1");
        FindIterable<Document> findIterable = collection.find(object);
        findIterable.forEach(new Block<Document>(){
            @Override
            public void apply(final Document t) {
                System.out.print(t.get("区域"));
                System.out.print("\t");
                System.out.print(t.get("省份_PROVINCE"));
                System.out.print("\t");
                System.out.print(t.get("城市_CITY"));
                System.out.print("\t");
                System.out.print(t.get("2015-5"));
                System.out.print("\t");
                System.out.println(t.get("2015-6"));
            }
        });
    }
    
    
    
    /**
     * @param args
     * @throws Exception 
     */
    public static void main(String[] args) throws Exception {
        // TODO Auto-generated method stub
        ExcelOperDao dao = new ExcelOperDao();
        //dao.insertData();
        BasicDBObject object = new BasicDBObject();
        String str = "西北";
        Pattern pattern = Pattern.compile("^.*" + str + ".*$", Pattern.CASE_INSENSITIVE); 
        object.put("区域", pattern);
        String str2 = "武威市";
        Pattern pattern2 = Pattern.compile("^.*" + str2 + ".*$", Pattern.CASE_INSENSITIVE); 
        object.put("城市_CITY", pattern2);
        dao.queryData(object);
    }

}
