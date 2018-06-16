package com.cemax.domain;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity(name="customer")
public class Customer {
@Id
@Column
private String cid;
@Column
private String cname;
@Column
private String caddress;
@Column
private int ccno1;
@Column
private int ccno2;
@Column
private String area;
@Column
private String owname;
@Column
private String owaddress;
@Column
private String owcno;
@Column
private boolean active;
/*@OneToMany(fetch = FetchType.EAGER,mappedBy = "cusid",orphanRemoval = true,cascade=CascadeType.PERSIST )
private List<Invoice> invoices=new ArrayList<>(); */

public String getCid() {
	return cid;
}
public void setCid(String cid) {
	this.cid = cid;
}
public String getCname() {
	return cname;
}
public void setCname(String cname) {
	this.cname = cname;
}
public String getCaddress() {
	return caddress;
}
public void setCaddress(String caddress) {
	this.caddress = caddress;
}
public int getCcno1() {
	return ccno1;
}
public void setCcno1(int ccno1) {
	this.ccno1 = ccno1;
}
public int getCcno2() {
	return ccno2;
}
public void setCcno2(int ccno2) {
	this.ccno2 = ccno2;
}
public String getArea() {
	return area;
}
public void setArea(String area) {
	this.area = area;
}
public String getOwname() {
	return owname;
}
public void setOwname(String owname) {
	this.owname = owname;
}
public String getOwaddress() {
	return owaddress;
}
public void setOwaddress(String owaddress) {
	this.owaddress = owaddress;
}
public String getOwcno() {
	return owcno;
}
public void setOwcno(String owcno) {
	this.owcno = owcno;
}
public boolean isActive() {
	return active;
}
public void setActive(boolean active) {
	this.active = active;
}
/*public List<Invoice> getInvoices() {
	return invoices;
}
public void setInvoices(List<Invoice> invoices) {
	this.invoices = invoices;
}*/



}
