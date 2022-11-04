package com.september.interpark.modules.member;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class Member {
	
	private String seq;
	private String name;
	private String id;
	private String pwd;
	private Integer gender;
	private String email;
	private Integer emailCode;
	private Integer personalAgree;
	private String dob;
	private String address;
	private String address2;
	private String addressCode;
	private Integer delNy;
	private String sessSeq;
	private Integer adminDiv;
	private String sessName;
	
	// registerConfirm
	private String regseq;
	private String regmember_seq;
	private Date registerDob;
	private String registerNumber;
	private String registerName;
	private String dateUse;
	private Integer count;
	private Date deleteDate;
	private String state;
	
	// memberphone
	private String number;
	private Integer dfny;
	private String phmember_seq;
	private String mpSeq;
	
	//imgupload
	private MultipartFile[] uploadImg;
	private Integer uploadImgMaxNumber;
	private String[] uploadImgDeleteSeq;
	private String[] uploadImgDeletePathFile;
	
	//kakao
	private String token;
	
	//////////////////////////////////////////////
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public Integer getGender() {
		return gender;
	}
	public void setGender(Integer gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public Integer getPersonalAgree() {
		return personalAgree;
	}
	public void setPersonalAgree(Integer personalAgree) {
		this.personalAgree = personalAgree;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public String getAddressCode() {
		return addressCode;
	}
	public void setAddressCode(String addressCode) {
		this.addressCode = addressCode;
	}
	public Integer getDelNy() {
		return delNy;
	}
	public void setDelNy(Integer delNy) {
		this.delNy = delNy;
	}
	public Integer getEmailCode() {
		return emailCode;
	}
	public void setEmailCode(Integer emailCode) {
		this.emailCode = emailCode;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getSessSeq() {
		return sessSeq;
	}
	public void setSessSeq(String sessSeq) {
		this.sessSeq = sessSeq;
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
	public String getDateUse() {
		return dateUse;
	}
	public void setDateUse(String dateUse) {
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
	public Integer getDfny() {
		return dfny;
	}
	public void setDfny(Integer dfny) {
		this.dfny = dfny;
	}
	public String getPhmember_seq() {
		return phmember_seq;
	}
	public void setPhmember_seq(String phmember_seq) {
		this.phmember_seq = phmember_seq;
	}
	public String getMpSeq() {
		return mpSeq;
	}
	public void setMpSeq(String mpSeq) {
		this.mpSeq = mpSeq;
	}
	public Integer getAdminDiv() {
		return adminDiv;
	}
	public void setAdminDiv(Integer adminDiv) {
		this.adminDiv = adminDiv;
	}
	public String getSessName() {
		return sessName;
	}
	public void setSessName(String sessName) {
		this.sessName = sessName;
	}
	public MultipartFile[] getUploadImg() {
		return uploadImg;
	}
	public void setUploadImg(MultipartFile[] uploadImg) {
		this.uploadImg = uploadImg;
	}
	public Integer getUploadImgMaxNumber() {
		return uploadImgMaxNumber;
	}
	public void setUploadImgMaxNumber(Integer uploadImgMaxNumber) {
		this.uploadImgMaxNumber = uploadImgMaxNumber;
	}
	public String[] getUploadImgDeleteSeq() {
		return uploadImgDeleteSeq;
	}
	public void setUploadImgDeleteSeq(String[] uploadImgDeleteSeq) {
		this.uploadImgDeleteSeq = uploadImgDeleteSeq;
	}
	public String[] getUploadImgDeletePathFile() {
		return uploadImgDeletePathFile;
	}
	public void setUploadImgDeletePathFile(String[] uploadImgDeletePathFile) {
		this.uploadImgDeletePathFile = uploadImgDeletePathFile;
	}
	
	//kkko
	public String getToken() {
		return token;
	}
	public void setToken(String token) {
		this.token = token;
	}
	
	
	
	
	

	
	
	
}
