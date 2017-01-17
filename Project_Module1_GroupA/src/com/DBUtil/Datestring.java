package com.DBUtil;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Datestring {
	public static String datestring(String d,String f )
	{
		SimpleDateFormat form=new SimpleDateFormat(f);
		SimpleDateFormat form1=new SimpleDateFormat("dd-mm-yyyy");
		Date date1=null;
		String date=null;
		try {
			date1=form.parse(d);
			date=form1.format(date1);
			System.out.println(date);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	return date;
	}

}
