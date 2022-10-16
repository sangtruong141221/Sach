package dao;

import java.util.ArrayList;

import bean.sachbean;

public class sachdao {
	public ArrayList<sachbean> dssach= new ArrayList<sachbean>();
	   public ArrayList<sachbean> getsach(){
		   dssach.add(new sachbean("s1", "Cấu trúc dữ liệu",
				   "Nguyễn Hoàng Hà ", 100, 100000, "b1.jpg", "tin"));
		   dssach.add(new sachbean("s2", "Cấu trúc dữ liệu 2",
				   "Nguyễn Hoàng Hà  1", 100, 100000, "b2.jpg", "tin"));
dssach.add(new sachbean("s3", "Cấu trúc dữ liệu 3",
				   "Nguyễn Hoàng Hà  2", 100, 100000, "b3.jpg", "tin"));
		   dssach.add(new sachbean("s4", "Cơ sở toán",
				   "Nguyễn Hoàng Hà  3", 100, 100000, "b4.jpg", "toan"));
		   dssach.add(new sachbean("s5", "Giải tích",
				   "Nguyễn Hoàng Hà  4", 100, 100000, "b5.jpg", "toan"));
		   dssach.add(new sachbean("s6", "Ca dao",
				   "Nguyễn Hoàng Hà  5", 100, 100000, "b6.jpg", "van"));
		   return dssach;
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
