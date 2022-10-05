package com.september.interpark.modules.codegroup;

import java.sql.Date;
import java.time.LocalDate;


public class CodeGroup {

	private String ccgseq;
	private String ccgseqOther;
	private String ccgNameKo;
	private String ccgNameEg;
	private Integer ccguseNy;
	private Integer ccgorder;
	private Integer ccg_seq;
	private Integer ccgdelNy;
	private Date ccgRegTime;
	private Date ccgModiTime;
	
	public String getCcgseq() {
		return ccgseq;
	}
	public void setCcgseq(String ccgseq) {
		this.ccgseq = ccgseq;
	}
	public String getCcgseqOther() {
		return ccgseqOther;
	}
	public void setCcgseqOther(String ccgseqOther) {
		this.ccgseqOther = ccgseqOther;
	}
	public String getCcgNameKo() {
		return ccgNameKo;
	}
	public void setCcgNameKo(String ccgNameKo) {
		this.ccgNameKo = ccgNameKo;
	}
	public String getCcgNameEg() {
		return ccgNameEg;
	}
	public void setCcgNameEg(String ccgNameEg) {
		this.ccgNameEg = ccgNameEg;
	}
	public Integer getCcguseNy() {
		return ccguseNy;
	}
	public void setCcguseNy(Integer ccguseNy) {
		this.ccguseNy = ccguseNy;
	}
	public Integer getCcgorder() {
		return ccgorder;
	}
	public void setCcgorder(Integer ccgorder) {
		this.ccgorder = ccgorder;
	}
	public Integer getCcg_seq() {
		return ccg_seq;
	}
	public void setCcg_seq(Integer ccg_seq) {
		this.ccg_seq = ccg_seq;
	}
	public Integer getCcgdelNy() {
		return ccgdelNy;
	}
	public void setCcgdelNy(Integer ccgdelNy) {
		this.ccgdelNy = ccgdelNy;
	}
	public Date getCcgRegTime() {
		return ccgRegTime;
	}
	public void setCcgRegTime(Date ccgRegTime) {
		this.ccgRegTime = ccgRegTime;
	}
	public Date getCcgModiTime() {
		return ccgModiTime;
	}
	public void setCcgModiTime(Date ccgModiTime) {
		this.ccgModiTime = ccgModiTime;
	}
	
	
	LocalDate ccgRegTime1 = LocalDate.now();
	
	
	
	
	
}