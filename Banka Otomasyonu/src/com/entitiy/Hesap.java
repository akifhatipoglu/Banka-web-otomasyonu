package com.entitiy;

public class Hesap {
	public int tc;
	public String hesapturu;
	public String hesapboyutu;
	public String miktar;

	public Hesap(int tc, String hesapturu, String hesapboyutu, String miktar) {
		super();
		this.tc = tc;
		this.hesapturu = hesapturu;
		this.hesapboyutu = hesapboyutu;
		this.miktar = miktar;
	}

	public int getTc() {
		return tc;
	}

	public void setTc(int tc) {
		this.tc = tc;
	}

	public String getHesapturu() {
		return hesapturu;
	}

	public void setHesapturu(String hesapturu) {
		this.hesapturu = hesapturu;
	}

	public String getHesapboyutu() {
		return hesapboyutu;
	}

	public void setHesapboyutu(String hesapboyutu) {
		this.hesapboyutu = hesapboyutu;
	}

	public String getMiktar() {
		return miktar;
	}

	public void setMiktar(String miktar) {
		this.miktar = miktar;
	}

}
