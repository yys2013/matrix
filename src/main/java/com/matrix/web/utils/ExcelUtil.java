package com.matrix.web.utils;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.apache.poi.EncryptedDocumentException;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.DateUtil;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;

public class ExcelUtil {

    private static DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
    
    public static List<List<String>> readExcel(String filePath) throws Exception {
        Workbook wb = WorkbookFactory.create(new FileInputStream(filePath));
        Sheet sheet = wb.getSheet("DPAD");
        
        List<List<String>> dataList = new ArrayList<List<String>>();
        
        for (Row row : sheet) {
            List<String> rowList = new ArrayList<String>();
            String strData = "";
            for (Cell cell : row) {
                switch (cell.getCellType()) {
                    case Cell.CELL_TYPE_STRING:
                        strData = cell.getRichStringCellValue().getString();
                        break;
                    case Cell.CELL_TYPE_NUMERIC:
                        if (DateUtil.isCellDateFormatted(cell)) {
                            strData = df.format(cell.getDateCellValue());
                        } else {
                            strData = String.valueOf(cell.getNumericCellValue());
                        }
                        break;
                    case Cell.CELL_TYPE_BOOLEAN:
                        System.out.println(cell.getBooleanCellValue());
                        strData = cell.getBooleanCellValue() ? "YES" : "NO";
                        break;
                    case Cell.CELL_TYPE_FORMULA:
                        strData = String.valueOf(cell.getNumericCellValue());
                        break;
                    default:
                        strData = "-";
                }
                System.out.println(strData);
                if("STOP".equals(strData)) {
                    break;
                }
                rowList.add(strData);
            }
            if("STOP".equals(strData)) {
                break;
            }
            dataList.add(rowList);
        }
        return dataList;
    }
    
    
    
    /**
     * @param args
     * @throws Exception 
     * @throws FileNotFoundException 
     * @throws InvalidFormatException 
     * @throws EncryptedDocumentException 
     */
    public static void main(String[] args) throws Exception {
//        String pathString = "E:\\123.xlsx";
        //List<List<String>> dataList = readExcel(pathString);
    }

}
