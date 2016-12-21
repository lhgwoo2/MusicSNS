package org.kdea.mypage;

public class BoardVO {
	private int num;
	private String title;
	private java.sql.Date regDate;
	private String author;
	private String genre;
	private int cnt;
	private int active;
	private int likes;
	private String contents;
	private String select;
	
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
	public java.sql.Date getRegDate() {
		return regDate;
	}
	public void setRegDate(java.sql.Date regDate) {
		this.regDate = regDate;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public int getActive() {
		return active;
	}
	public void setActive(int active) {
		this.active = active;
	}

	public int getLikes() {
		return likes;
	}
	public void setLikes(int likes) {
		this.likes = likes;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getSelect() {
		return select;
	}
	public void setSelect(String select) {
		this.select = select;
	}
	
	
}
