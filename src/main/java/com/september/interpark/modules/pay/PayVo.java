package com.september.interpark.modules.pay;

import com.september.interpark.common.base.BaseVo;

public class PayVo extends BaseVo{

	
	private String seatGradeSeq;
	private String gameSeq;
	private String seatSeq;
	private String chk_arr;
	private String seatCheck;

	public String getSeatGradeSeq() {
		return seatGradeSeq;
	}

	public void setSeatGradeSeq(String seatGradeSeq) {
		this.seatGradeSeq = seatGradeSeq;
	}

	public String getGameSeq() {
		return gameSeq;
	}

	public void setGameSeq(String gameSeq) {
		this.gameSeq = gameSeq;
	}

	public String getSeatSeq() {
		return seatSeq;
	}

	public void setSeatSeq(String seatSeq) {
		this.seatSeq = seatSeq;
	}

	public String getChk_arr() {
		return chk_arr;
	}

	public void setChk_arr(String chk_arr) {
		this.chk_arr = chk_arr;
	}

	public String getSeatCheck() {
		return seatCheck;
	}

	public void setSeatCheck(String seatCheck) {
		this.seatCheck = seatCheck;
	}
	
	
}
