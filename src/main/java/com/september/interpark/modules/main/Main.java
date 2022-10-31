package com.september.interpark.modules.main;

import java.sql.Date;
import java.sql.Time;

public class Main{


	// game
	private String gameSeq;
	private String whoHome;
	private String whoAway;
	private Date date;
	private Time time;
	private String ground;
	private Integer gameDelNy;
	
	//teamName
	private String teamName;
	private String teamGround;
	
	
	//seatGrade
	private String seatGradeSeq;
	private String seatGrade;
	private String seatPrice;
	private String seatGrade_gameSeq;
	
	//seat
	private String seatSeq;
	private Integer seatNumber;
	private Integer purchaseDiv;
	private String seatGrade_seatGradeSeq;
	private String seat_gameSeq;
	
	
	
	
	
	// game get set
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
	
	//teamName
	public String getTeamName() {
		return teamName;
	}
	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}
	public String getTeamGround() {
		return teamGround;
	}
	public void setTeamGround(String teamGround) {
		this.teamGround = teamGround;
	}
	
	//seatGrade
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
	public String getSeatSeq() {
		return seatSeq;
	}
	
	//seat
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
	public String getSeatGrade_seatGradeSeq() {
		return seatGrade_seatGradeSeq;
	}
	public void setSeatGrade_seatGradeSeq(String seatGrade_seatGradeSeq) {
		this.seatGrade_seatGradeSeq = seatGrade_seatGradeSeq;
	}
	public String getSeat_gameSeq() {
		return seat_gameSeq;
	}
	public void setSeat_gameSeq(String seat_gameSeq) {
		this.seat_gameSeq = seat_gameSeq;
	}
	public String getSeatGrade_gameSeq() {
		return seatGrade_gameSeq;
	}
	public void setSeatGrade_gameSeq(String seatGrade_gameSeq) {
		this.seatGrade_gameSeq = seatGrade_gameSeq;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
}
