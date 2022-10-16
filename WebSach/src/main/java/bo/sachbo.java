package bo;


import java.util.ArrayList;

import dao.sachdao;
import bean.sachbean;

public class sachbo {
	sachdao sdao = new sachdao();
	ArrayList<sachbean> ds;
	public ArrayList<sachbean> getsach(){
		ds= sdao.getsach();
		return ds;
	}
	public ArrayList<sachbean> timkiemloai(ArrayList<sachbean> ds, String ml){
		   ArrayList<sachbean> dstimkiem = new ArrayList<sachbean>();
		   for (sachbean o : ds) {
			   if(o.getMaloai().equals(ml)) {
				   dstimkiem.add(o);
			   }
			
		}
		   return dstimkiem;
		   
	   }
	   public ArrayList<sachbean> timkiemteni (ArrayList<sachbean> ds, String ten ){
		   ArrayList<sachbean> dstimkiem = new ArrayList<sachbean>();
		   for (sachbean o : ds) {
			   if (o.getTensach().toLowerCase().contains(ten.toLowerCase()) || o.getMaloai().toLowerCase().contains(ten.toLowerCase()) || o.getTacgia().toLowerCase().contains(ten.toLowerCase())  ) {
				   dstimkiem.add(o);
				}
		}
		   return dstimkiem;
	   }

}
