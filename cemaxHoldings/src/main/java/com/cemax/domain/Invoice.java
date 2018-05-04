package com.cemax.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity(name="invoice")
public class Invoice {
	@Id
	@Column
	private int invid;
	@Column
	
	private int cusid;
	@Column
	private int delnoteno;
	@Column
	private int opcqun;
	@Column 
	private int opcup;
	@Column
	private int ppcqun;
	@Column 
	private int ppcup;
	@Column 
	private int transport;
	public int getInvid() {
		return invid;
	}
	public void setInvid(int invid) {
		this.invid = invid;
	}
	public int getCusid() {
		return cusid;
	}
	public void setCusid(int cusid) {
		this.cusid = cusid;
	}
	public int getDelnoteno() {
		return delnoteno;
	}
	public void setDelnoteno(int delnoteno) {
		this.delnoteno = delnoteno;
	}
	public int getOpcqun() {
		return opcqun;
	}
	public void setOpcqun(int opcqun) {
		this.opcqun = opcqun;
	}
	public int getOpcup() {
		return opcup;
	}
	public void setOpcup(int opcup) {
		this.opcup = opcup;
	}
	public int getPpcqun() {
		return ppcqun;
	}
	public void setPpcqun(int ppcqun) {
		this.ppcqun = ppcqun;
	}
	public int getPpcup() {
		return ppcup;
	}
	public void setPpcup(int ppcup) {
		this.ppcup = ppcup;
	}
	public int getTransport() {
		return transport;
	}
	public void setTransport(int transport) {
		this.transport = transport;
	}
	
}
