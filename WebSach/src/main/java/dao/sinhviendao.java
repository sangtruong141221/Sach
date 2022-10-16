package dao;

import java.util.ArrayList;

import bean.sinhvienbean;

public class sinhviendao {
	public ArrayList<sinhvienbean> dssv= new ArrayList<sinhvienbean>();
	public ArrayList<sinhvienbean> getsv(){
		dssv.add(new sinhvienbean("SV01", "Sang", "BRVT", "sang@gmail.com", "itachi.jpg", "T01"));
		dssv.add(new sinhvienbean("SV02", "huy", "Hue", "huy@gmail.com", "itachi.jpg", "T02"));
		dssv.add(new sinhvienbean("SV03", "Trung", "DaNang", "trung@gmail.com", "itachi.jpg", "T03"));
		
		return dssv;
	}
}
