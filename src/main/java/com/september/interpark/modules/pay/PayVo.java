package com.september.interpark.modules.pay;

import com.september.interpark.common.base.BaseVo;

public class PayVo extends BaseVo{

	
	private String seatGradeSeq;
	private String gameSeq;
	private String seatSeq;

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
	
	
}
