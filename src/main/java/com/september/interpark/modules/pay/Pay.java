package com.september.interpark.modules.pay;

import java.sql.Date;
import java.sql.Time;

public class Pay {
	
	//seatGrade
	private String seatGradeSeq;
	private String seatGrade;
	private String seatPrice;
	private String seatGrade_gameSeq;
	
	//game
	private String gameSeq;
	private String whoHome;
	private String whoAway;
	private Date date;
	private Time time;
	private String ground;
	private	Integer gameDelNy;
	
	
	
	//seat
	private String seatSeq;
	private Integer seatNumber;
	private Integer purchaseDiv;
	private String seatGrade_seatGradeSeq;
	private String Seat_gameSeq;
	
	//registerConfirm
	private String regseq;
	private String regmember_seq;
	private Date registerDob;
	private String registerNumber;
	private String registerName;
	private Date dateUse;
	private Integer count;
	private Date deleteDate;
	private String state;
	private String puchase_purchseSeq;
	
	private String sessSeq;
	
	
	//seatGrade get set
	public String getSeatGradeSeq() {
		return seatGradeSeq;
	}
	public void setSeatGradeSeq(String seatGradeSeq) {
		this.seatGradeSeq = seatGradeSeq;
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
	
	
	
	public String getSeatGrade_gameSeq() {
		return seatGrade_gameSeq;
	}
	public void setSeatGrade_gameSeq(String seatGrade_gameSeq) {
		this.seatGrade_gameSeq = seatGrade_gameSeq;
	}
	//game get set
	public String getGameSeq() {
		return gameSeq;
	}
	public void setGameSeq(String gameSeq) {
		this.gameSeq = gameSeq;
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
	
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public Time getTime() {
		return time;
	}
	public void setTime(Time time) {
		this.time = time;
	}
	public String getGround() {
		return ground;
	}
	public void setGround(String ground) {
		this.ground = ground;
	}
	public Integer getGameDelNy() {
		return gameDelNy;
	}
	public void setGameDelNy(Integer gameDelNy) {
		this.gameDelNy = gameDelNy;
	}
	public String getSeatGrade_seatGradeSeq() {
		return seatGrade_seatGradeSeq;
	}
	public void setSeatGrade_seatGradeSeq(String seatGrade_seatGradeSeq) {
		this.seatGrade_seatGradeSeq = seatGrade_seatGradeSeq;
	}
	public String getSeatSeq() {
		return seatSeq;
	}
	public void setSeatSeq(String seatSeq) {
		this.seatSeq = seatSeq;
	}
	public Integer getSeatNumber() {
		return seatNumber;
	}
	public void setSeatNumber(Integer seatNumber) {
		this.seatNumber = seatNumber;
	}
	public Integer getPurchaseDiv() {
		return purchaseDiv;
	}
	public void setPurchaseDiv(Integer purchaseDiv) {
		this.purchaseDiv = purchaseDiv;
	}
	public String getSeat_gameSeq() {
		return Seat_gameSeq;
	}
	public void setSeat_gameSeq(String seat_gameSeq) {
		Seat_gameSeq = seat_gameSeq;
	}
	public String getRegseq() {
		return regseq;
	}
	public void setRegseq(String regseq) {
		this.regseq = regseq;
	}
	public String getRegmember_seq() {
		return regmember_seq;
	}
	public void setRegmember_seq(String regmember_seq) {
		this.regmember_seq = regmember_seq;
	}
	public Date getRegisterDob() {
		return registerDob;
	}
	public void setRegisterDob(Date registerDob) {
		this.registerDob = registerDob;
	}
	public String getRegisterNumber() {
		return registerNumber;
	}
	public void setRegisterNumber(String registerNumber) {
		this.registerNumber = registerNumber;
	}
	public String getRegisterName() {
		return registerName;
	}
	public void setRegisterName(String registerName) {
		this.registerName = registerName;
	}
	public Date getDateUse() {
		return dateUse;
	}
	public void setDateUse(Date dateUse) {
		this.dateUse = dateUse;
	}
	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}
	public Date getDeleteDate() {
		return deleteDate;
	}
	public void setDeleteDate(Date deleteDate) {
		this.deleteDate = deleteDate;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getPuchase_purchseSeq() {
		return puchase_purchseSeq;
	}
	public void setPuchase_purchseSeq(String puchase_purchseSeq) {
		this.puchase_purchseSeq = puchase_purchseSeq;
	}
	public String getSessSeq() {
		return sessSeq;
	}
	public void setSessSeq(String sessSeq) {
		this.sessSeq = sessSeq;
	}
	
	
	

}
