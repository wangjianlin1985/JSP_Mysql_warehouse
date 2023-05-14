// 
//  
// 

package com.util;

import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

public class StaticMethod
{
    public static String getRandom(final int i) {
        final Random jjj = new Random();
        if (i == 0) {
            return "";
        }
        String jj = "";
        for (int k = 0; k < i; ++k) {
            jj = String.valueOf(jj) + jjj.nextInt(9);
        }
        return jj;
    }
    
    public static Date getNowDate() {
        final Date currentTime = new Date();
        final SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        final String dateString = formatter.format(currentTime);
        final ParsePosition pos = new ParsePosition(8);
        final Date currentTime_2 = formatter.parse(dateString, pos);
        return currentTime_2;
    }
    
    public static String getStringDate() {
        final Date currentTime = new Date();
        final SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        final String dateString = formatter.format(currentTime);
        return dateString;
    }
    
    public static String getStringDateShort() {
        final Date currentTime = new Date();
        final SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        final String dateString = formatter.format(currentTime);
        return dateString;
    }
    
    public static String getStringDateShort(final String str) {
        final Date currentTime = new Date();
        final SimpleDateFormat formatter = new SimpleDateFormat(str);
        final String dateString = formatter.format(currentTime);
        return dateString;
    }
    
    public static int getDay(final String beginDate, final String endDate) {
        try {
            final SimpleDateFormat sim = new SimpleDateFormat("yyyy-MM-dd");
            final Date d1 = sim.parse(beginDate);
            final Date d2 = sim.parse(endDate);
            int num = (int)((d2.getTime() - d1.getTime()) / 86400000L);
            return ++num;
        }
        catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }
    
    public static void main(final String[] args) {
        System.out.println("radom+" + getRandom(4));
        System.out.println("getNowDate==" + getStringDate());
        System.out.println("getStringDateShort==" + getStringDateShort());
    }
}
