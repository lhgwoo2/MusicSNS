package org.kdea.video;

import org.springframework.web.multipart.MultipartFile;

public class VideoVO {
	private int num;
	private int ref;
	private String author;
	private String title;
	private int cnt;
	private String contents;
	private String genre;
	private java.sql.Timestamp regdate;
	private int likes;
	private int active;
	private long filesize;
	private String ext;
	private String filename;
	private String overlapfile;
	private MultipartFile file;
	private String marknum;
	private String markid;
	private String select;
	private int page;
	private String proFilFileName;

	private int totalRows;
	
	
	//댓글 사용 변수
	private int commentref;			//댓글이 참조하는 부모 댓글의 번호
	private int totalcomment;

	
	

	public int getCommentref() {
			return commentref;
	}

	public void setCommentref(int commentref) {
			this.commentref = commentref;
	}

	public int getTotalcomment() {
			return totalcomment;
	}

	public void setTotalcomment(int totalcomment) {
			this.totalcomment = totalcomment;
	}

	public int getTotalRows() {
		return totalRows;
	}

	public void setTotalRows(int totalRows) {
		this.totalRows = totalRows;
	}

	public String getProFilFileName() {
		return proFilFileName;
	}

	public void setProFilFileName(String proFilFileName) {
		this.proFilFileName = proFilFileName;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public int getLikes() {
		return likes;
	}

	public void setLikes(int likes) {
		this.likes = likes;
	}

	public int getActive() {
		return active;
	}

	public void setActive(int active) {
		this.active = active;
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

	public String getOverlapfile() {
		return overlapfile;
	}

	public void setOverlapfile(String overlapfile) {
		this.overlapfile = overlapfile;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	public long getFilesize() {
		return filesize;
	}

	public void setFilesize(long filesize) {
		this.filesize = filesize;
	}

	public java.sql.Timestamp getRegdate() {
		return regdate;
	}

	public void setRegdate(java.sql.Timestamp regdate) {
		this.regdate = regdate;
	}

	public int getRef() {
		return ref;
	}

	public void setRef(int ref) {
		this.ref = ref;
	}

	public String getMarknum() {
		return marknum;
	}

	public void setMarknum(String marknum) {
		this.marknum = marknum;
	}

	public String getMarkid() {
		return markid;
	}

	public void setMarkid(String markid) {
		this.markid = markid;
	}

	public String getSelect() {
		return select;
	}

	public void setSelect(String select) {
		this.select = select;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}
	
	
	
	

}
