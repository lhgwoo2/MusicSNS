package org.kdea.members;

import org.springframework.web.multipart.MultipartFile;

public class MemberVO {
	
	private int num;
	private String id ;
	private String pwd ;
	private String email;
	private MultipartFile profilfile;
	private String proFilFileName;
	private java.sql.Date birth ;
	private String gender;
	private String mygenre ;
	private String myregion;
	private int active ;
	private String authority; 
	private String receiver;
	private String subject;
	private String content;
	
	private String ext;
	private String updatePwd;
	
	
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getExt() {
		return ext;
	}
	public void setExt(String ext) {
		this.ext = ext;
	}
	public String getUpdatePwd() {
		return updatePwd;
	}
	public void setUpdatePwd(String updatePwd) {
		this.updatePwd = updatePwd;
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	public MultipartFile getProfilfile() {
		return profilfile;
	}
	public void setProfilfile(MultipartFile profilfile) {
		this.profilfile = profilfile;
	}
	public java.sql.Date getBirth() {
		return birth;
	}
	public void setBirth(java.sql.Date birth) {
		this.birth = birth;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getMygenre() {
		return mygenre;
	}
	public void setMygenre(String mygenre) {
		this.mygenre = mygenre;
	}
	public String getMyregion() {
		return myregion;
	}
	public void setMyregion(String myregion) {
		this.myregion = myregion;
	}
	public int getActive() {
		return active;
	}
	public void setActive(int active) {
		this.active = active;
	}
	public String getAuthority() {
		return authority;
	}
	public void setAuthority(String authority) {
		this.authority = authority;
	}
	public String getReceiver() {
		return receiver;
	}
	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getProFilFileName() {
		return proFilFileName;
	}
	public void setProFilFileName(String proFilFileName) {
		this.proFilFileName = proFilFileName;
	}


}
