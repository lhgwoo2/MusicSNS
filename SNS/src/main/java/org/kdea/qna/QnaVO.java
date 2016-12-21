package org.kdea.qna;

import org.springframework.web.multipart.MultipartFile;

public class QnaVO {
	private int num;
	private String title;
	private String contents;
	private String author;
	private int ref;
	private java.sql.Date regdate;
	private int hitcnt;
	private String active;
	private int page;
	private int rpp;
	private int cnt;
	private double totalRows;
	private String conten;
	private String key;
	private long filesize;
	private String password;
	private String ext;
	private String filename;
	private String authority;
	private MultipartFile file;
	private int lvl;
	private String profilfile;

	
	
	public String getProfilfile() {
		return profilfile;
	}

	public void setProfilfile(String profilfile) {
		this.profilfile = profilfile;
	}

	public int getLvl() {
		return lvl;
	}

	public void setLvl(int lvl) {
		this.lvl = lvl;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}

	public String getConten() {
		return conten;
	}

	public void setConten(String conten) {
		this.conten = conten;
	}

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public int getRpp() {
		return rpp;
	}

	public void setRpp(int rpp) {
		this.rpp = rpp;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public int getRef() {
		return ref;
	}

	public void setRef(int ref) {
		this.ref = ref;
	}

	public java.sql.Date getRegdate() {
		return regdate;
	}

	public void setRegdate(java.sql.Date regdate) {
		this.regdate = regdate;
	}

	public int getHitcnt() {
		return hitcnt;
	}

	public void setHitcnt(int hitcnt) {
		this.hitcnt = hitcnt;
	}

	public double getTotalRows() {
		return totalRows;
	}

	public void setTotalRows(double totalRows) {
		this.totalRows = totalRows;
	}

	public String getActive() {
		return active;
	}

	public void setActive(String active) {
		this.active = active;
	}

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	public long getFilesize() {
		return filesize;
	}

	public void setFilesize(long filesize) {
		this.filesize = filesize;
	}

	public String getExt() {
		return ext;
	}

	public void setExt(String ext) {
		this.ext = ext;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}
}
