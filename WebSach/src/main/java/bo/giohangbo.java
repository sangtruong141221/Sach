package bo;

import java.util.ArrayList;

import bean.giohangbean;

public class giohangbo {
	public ArrayList<giohangbean> ds = new ArrayList<giohangbean>() ;
	//String masach, String tensach, long soluong, long giasach, String anh
	public void Them(String masach, String tensach, long soluong, long giasach, String anh) {
		for(giohangbean g: ds)
		 if(g.getMasach().equals(masach)) {
			 g.setSoluong(soluong+ g.getSoluong());
			 return;
		 }
			ds.add(new giohangbean(masach, tensach, soluong, giasach, anh));
	}
	public void Xoa(String masach) {
		for (int i=0; i<ds.size(); i++) {
			if (ds.get(i).getMasach().equals(masach)) {
				ds.remove(i);
				return;
			}
		}
	}
	public void xoalist(String[] list) {
		for (String s : list) {
			for (int i=0;i<ds.size();i++) {
				if (s.equals(ds.get(i).getMasach())) {
					ds.remove(i);
					i--;
				}
			}
		}
	}
	
	public long tongtien() {
		long sum=0;
		for (giohangbean g: ds) {
			sum=sum+ g.getThanhtien();
		}
		return sum;	
	}
	
	public long demsl() {
		long sl=0;
		for(giohangbean g: ds) {
			sl += g.getSoluong();
		}
		return sl;
	}
	
}
