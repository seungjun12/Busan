package com.september.interpark.modules.code;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

public class Code {

	private	String ccseq;
	private	String ccseqOther;
	private	String ccg_seq;
	private	String ccnameko;
	private String ccnameeg;
	private	String ccuseNy;
	private	String ccdelNy;
	private	String ccorder;
	private String ccgseq;
	private	String ccgNameKo;
	private Date ccRegTime;
	private Date ccModTime;
	//////////////////////////////////////////
	public String getCcseq() {
		return ccseq;
	}
	public void setCcseq(String ccseq) {
		this.ccseq = ccseq;
	}
	public String getCcseqOther() {
		return ccseqOther;
	}
	public void setCcseqOther(String ccseqOther) {
		this.ccseqOther = ccseqOther;
	}

	public String getCcg_seq() {
		return ccg_seq;
	}
	public void setCcg_seq(String ccg_seq) {
		this.ccg_seq = ccg_seq;
	}
	public String getCcnameko() {
		return ccnameko;
	}
	public void setCcnameko(String ccnameko) {
		this.ccnameko = ccnameko;
	}
	public String getCcnameeg() {
		return ccnameeg;
	}
	public void setCcnameeg(String ccnameeg) {
		this.ccnameeg = ccnameeg;
	}
	public String getCcuseNy() {
		return ccuseNy;
	}
	public void setCcuseNy(String ccuseNy) {
		this.ccuseNy = ccuseNy;
	}
	public String getCcdelNy() {
		return ccdelNy;
	}
	public void setCcdelNy(String ccdelNy) {
		this.ccdelNy = ccdelNy;
	}
	public String getCcorder() {
		return ccorder;
	}
	public void setCcorder(String ccorder) {
		this.ccorder = ccorder;
	}
	public String getCcgNameKo() {
		return ccgNameKo;
	}
	public void setCcgNameKo(String ccgNameKo) {
		this.ccgNameKo = ccgNameKo;
	}
	public String getCcgseq() {
		return ccgseq;
	}
	public void setCcgseq(String ccgseq) {
		this.ccgseq = ccgseq;
	}
	
	
public Date getCcRegTime() {
		return ccRegTime;
	}
	public void setCcRegTime(Date ccRegTime) {
		this.ccRegTime = ccRegTime;
	}
	public Date getCcModTime() {
		return ccModTime;
	}
	public void setCcModTime(Date ccModTime) {
		this.ccModTime = ccModTime;
	}
	public static List<Code> getCachedCodeArrayList() {
		return cachedCodeArrayList;
	}
	public static void setCachedCodeArrayList(List<Code> cachedCodeArrayList) {
		Code.cachedCodeArrayList = cachedCodeArrayList;
	}


	//	for cache
	public static List<Code> cachedCodeArrayList = new ArrayList<Code>();

	
	
//////////////////////////////////////////////////////////////	
	
	
	
	
	
}
