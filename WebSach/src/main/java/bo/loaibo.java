package bo;

import java.util.ArrayList;

import dao.loaidao;
import bean.loaibean;

public class loaibo {
	loaidao lDao = new loaidao();
	ArrayList<loaibean> ds;
	 public ArrayList<loaibean> getloai(){
		 ds=lDao.getloai();
		 return ds;
	 }
}
