package com.september.interpark.modules.main;

import com.september.interpark.common.base.BaseVo;

public class Main extends BaseVo{

	private String gameseq;
	private String who;
	private String dob;
	private String where;
	private String time;
	private String whoHome;
	private String whoAway;
	
	//경기장 좌석 등급
	private String seatSeq;
	private String seatGrade;
	private String seatPrice;
	
	
	////////////
	
	
	public String getGameseq() {
		return gameseq;
	}
	public void setGameseq(String gameseq) {
		this.gameseq = gameseq;
	}
	public String getWho() {
		return who;
	}
	public void setWho(String who) {
		this.who = who;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getWhere() {
		return where;
	}
	public void setWhere(String where) {
		this.where = where;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getWhoHome() {
		return whoHome;
	}
	public void setWhoHome(String whoHome) {
		this.whoHome = whoHome;
	}
	public String getWhoAway() {
		return whoAway;
	}
	public void setWhoAway(String whoAway) {
		this.whoAway = whoAway;
	}
	public String getSeatSeq() {
		return seatSeq;
	}
	public void setSeatSeq(String seatSeq) {
		this.seatSeq = seatSeq;
	}
	public String getSeatGrade() {
		return seatGrade;
	}
	public void setSeatGrade(String seatGrade) {
		this.seatGrade = seatGrade;
	}
	public String getSeatPrice() {
		return seatPrice;
	}
	public void setSeatPrice(String seatPrice) {
		this.seatPrice = seatPrice;
	}
	
	
	
	
	
}
