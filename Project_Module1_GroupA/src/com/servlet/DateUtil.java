package com.servlet;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {
	  public static Date convertStringToDate(String da, String format){
		  SimpleDateFormat formatter = new SimpleDateFormat(format);
		  Date date = null;
			try {
				System.out.println("Date String:"+da);
			 date = formatter.parse(da);	

			} catch (ParseException e) {
				e.printStackTrace();
			}
			return date; 
	  }
}
