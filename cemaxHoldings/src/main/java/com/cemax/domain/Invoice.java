package com.cemax.domain;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;

import org.springframework.beans.factory.annotation.Autowired;



@Entity(name="invoice")
public class Invoice {
	

	
	@Id
	@Column
	private String invid;
/*	@ManyToOne(fetch=FetchType.LAZY,cascade=CascadeType.PERSIST)
	@JoinColumn*/
	@Column
	private String cusid;
	@Column
	private int duration;
	@Column
	private int remaindays;
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
	@Column
	private String date;;
	@Column
	private String time;
	@Transient 
	private int opcremain;
	@Transient 
	private int ppcremain;

	
	public String getInvid() {
		return invid;
	}
	public void setInvid(String invid) {
		this.invid = invid;
	}
	public String getCusid() {
		return cusid;
	}
	public void setCusid(String cusid) {
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
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public void setDuration(int duration) {
		this.duration=duration;
	}
	public int getDuration(){
		return duration;
	}
	public int getOpcremain() {
		return opcremain;
	}
	public void setOpcremain(int opcremain) {
		this.opcremain = opcremain;
	}
	public int getPpcremain() {
		return ppcremain;
	}
	public void setPpcremain(int ppcremain) {
		this.ppcremain = ppcremain;
	}
	public int getRemaindays() {
		return remaindays;
	}
	public void setRemaindays(int remaindays) {
		this.remaindays = remaindays;
	}

}
