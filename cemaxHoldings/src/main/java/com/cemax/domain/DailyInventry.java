package com.cemax.domain;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;



@Entity(name="dinventry")
public class DailyInventry {
	
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Id
	private long id;
	@Column
	private String date;
	@Column
	private int opcquan;
	@Column
	private int opcprice;
	@Column
	private int opcmargin;
	@Column
	private int ppcquan;
	@Column
	private int ppcprice;
	@Column
	private int ppcmargin;
	@Column
	private int transport;
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getOpcquan() {
		return opcquan;
	}
	public void setOpcquan(int opcquan) {
		this.opcquan = opcquan;
	}
	public int getOpcprice() {
		return opcprice;
	}
	public void setOpcprice(int opcprice) {
		this.opcprice = opcprice;
	}
	public int getOpcmargin() {
		return opcmargin;
	}
	public void setOpcmargin(int opcmargin) {
		this.opcmargin = opcmargin;
	}
	public int getPpcquan() {
		return ppcquan;
	}
	public void setPpcquan(int ppcquan) {
		this.ppcquan = ppcquan;
	}
	public int getPpcprice() {
		return ppcprice;
	}
	public void setPpcprice(int ppcprice) {
		this.ppcprice = ppcprice;
	}
	public int getPpcmargin() {
		return ppcmargin;
	}
	public void setPpcmargin(int ppcmargin) {
		this.ppcmargin = ppcmargin;
	}
	public int getTransport() {
		return transport;
	}
	public void setTransport(int transport) {
		this.transport = transport;
	}
	
	
}
