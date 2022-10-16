package dao;

import java.util.ArrayList;

import bean.loaibean;

public class loaidao {
	
	   public ArrayList<loaibean> getloai(){
		   	ArrayList<loaibean> dsloai= new ArrayList<loaibean>();
		   dsloai.add(new loaibean("tin", "Công Nghệ Thông Tin"));
		   dsloai.add(new loaibean("ly", "Vật Lý"));
		   dsloai.add(new loaibean("toan", "Toán Ứng Dụng"));
		   dsloai.add(new loaibean("van", "Văn học Việt Nam"));
		   return dsloai;
	   }
}