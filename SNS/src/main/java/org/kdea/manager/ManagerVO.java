package org.kdea.manager;

import org.springframework.web.multipart.MultipartFile;

public class ManagerVO {
	private int num;
	private String title;
	private String contents;
	private String author;
	private int ref;
	private java.sql.Timestamp regdate;
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
	private String authority = "USER";
	private MultipartFile file;
	private int likes;
	private String genre;
	private String reporttype;
	private int reportnum;
	private String reportcontents;
	private java.sql.Date reportdate;
	private String reporter;
	private String complete;
	private String profilfile;
	
	
	

	
	
	

	public String getProfilfile() {
		return profilfile;
	}

	public void setProfilfile(String profilfile) {
		this.profilfile = profilfile;
	}

	public String getComplete() {
		return complete;
	}

	public void setComplete(String complete) {
		this.complete = complete;
	}

	public String getReporter() {
		return reporter;
	}

	public void setReporter(String reporter) {
		this.reporter = reporter;
	}

	public java.sql.Date getReportdate() {
		return reportdate;
	}

	public void setReportdate(java.sql.Date reportdate) {
		this.reportdate = reportdate;
	}

	public String getReporttype() {
		return reporttype;
	}

	public void setReporttype(String reporttype) {
		this.reporttype = reporttype;
	}

	public int getReportnum() {
		return reportnum;
	}

	public void setReportnum(int reportnum) {
		this.reportnum = reportnum;
	}

	public String getReportcontents() {
		return reportcontents;
	}

	public void setReportcontents(String reportcontents) {
		this.reportcontents = reportcontents;
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



	public java.sql.Timestamp getRegdate() {
		return regdate;
	}

	public void setRegdate(java.sql.Timestamp regdate) {
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

	public int getLikes() {
		return likes;
	}

	public void setLikes(int likes) {
		this.likes = likes;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}
	
}
