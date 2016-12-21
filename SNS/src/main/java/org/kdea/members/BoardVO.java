package org.kdea.members;

import org.springframework.web.multipart.MultipartFile;

public class BoardVO {

	private int num;
	private String title;
	private String contents;
	private String author;
	private java.sql.Date regdate;
	private int hitcnt;
	private int ref;
	private int totalRows;
	private int rpp;
	private int page;
	private String search;
	private String search1;
	private String active;
	private String email;
	//파일업로드
	private MultipartFile file;  
	private String filename;
	private long filesize;
	private String ext;
	private String filename2;
	
	
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
	public java.sql.Date getRegdate() {
		return regdate;
	}
	public void setRegdate(java.sql.Date regdate) {
		this.regdate = regdate;
	}
	public int getRef() {
		return ref;
	}
	public void setRef(int ref) {
		this.ref = ref;
	}
	public int getTotalRows() {
		return totalRows;
	}
	public void setTotalRows(int totalRows) {
		this.totalRows = totalRows;
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
	public int getHitcnt() {
		return hitcnt;
	}
	public void setHitcnt(int hitcnt) {
		this.hitcnt = hitcnt;
	}
	public String getSearch() {
		return search;
	}
	public void setSearch(String search) {
		this.search = search;
	}
	public String getSearch1() {
		return search1;
	}
	public void setSearch1(String search1) {
		this.search1 = search1;
	}
	public String getActive() {
		return active;
	}
	public void setActive(String active) {
		this.active = active;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
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
	public String getFilename2() {
		return filename2;
	}
	public void setFilename2(String filename2) {
		this.filename2 = filename2;
	}
	
	
	
	
}
