package dao;

import java.util.ArrayList;

import bean.monhocbean;
import bean.sachbean;

public class monhocdao {
	public ArrayList<monhocbean> dsMon= new ArrayList<monhocbean>();
	public ArrayList<monhocbean> getmon(){
		dsMon.add(new monhocbean("T01","Toán"));
		dsMon.add(new monhocbean("T02","Lý"));
		dsMon.add(new monhocbean("T03","Tin"));
		dsMon.add(new monhocbean("T04","Văn"));
		return dsMon;
	}
}
