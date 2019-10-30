package Bo;

import java.util.ArrayList;

import Bean.gioHangBean;

public class gioHangBo {
	public ArrayList<gioHangBean> ds = new  ArrayList<gioHangBean>();
	public void them(String masach, String tensach, String tacgia, long gia, long soluong) {
		int k=-1;
		for (int i =0 ; i< ds.size(); i++) {
			if(ds.get(i).getMasach().equals(masach)) {
				k=i;
				break;
			}
		}
		if(k==-1) {
			gioHangBean gh = new  gioHangBean(masach, tensach, tacgia, gia, soluong);
			ds.add(gh);
		}
		else {
			ds.get(k).setSoluong(ds.get(k).getSoluong()+1);
			ds.get(k).setThanhtien(ds.get(k).getSoluong()*ds.get(k).getGia());
		}
	}
	public void thayDoiSoLuong(String masach, int soluong) {
		for(gioHangBean gh: ds) {
			if(gh.getMasach().equals(masach)) {
				if(soluong>0) {
					gh.setSoluong(soluong);
					gh.setThanhtien(gh.getSoluong()*gh.getGia());
				}
				else {
					xoa(masach);
					break;
				}
			}
		}
	}
	public void xoa(String masach) {
		for(gioHangBean gh: ds) {
			if(gh.getMasach().equals(masach)) {
				ds.remove(gh);
				break;
			}
		}
	}
	public long Tong() {
		long s=0;
		for(gioHangBean g: ds) {
			s+=g.getThanhtien();
		}
		return s;
	}
	public int count() {
		int dem=0;
		for(gioHangBean g: ds) {
			dem++;
		}
		return dem;
	}
}
