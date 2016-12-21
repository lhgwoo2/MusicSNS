package org.kdea.newspeed;

import java.sql.Timestamp;

import org.springframework.web.multipart.MultipartFile;

public class NewsPeedVO {
	
	//어떠한 뉴스피드를 요청하는지!
	private String peed;
	//몇번째 페이지 인지
	private int page;
	
	//모든 테이블 공통 변수
	private int num;
	private String author;
	private String title;
	private String contents;
	private String genre;
	private java.sql.Date regdate;
	private int likes;
	private int active;
	
	//모든 파일 테이블 공통
	private long filesize;
	private String ext;
	private String filename;
	private MultipartFile file;
	
	//북마크 공통 변수
	private String marknum;
	private String markid;
	
	//댓글 사용 변수
	private int ref;							//현재 댓글이 보여지는 상세글의 번호
	private int commentref;			//댓글이 참조하는 부모 댓글의 번호
	private int totalcomment;
	
	//날짜 검색
	private String aaa;

	//프로필 사진 구하기
	private String proFilFileName;
	private String profilfile;
	
	//홍보 테이블 
	private Timestamp openingday;				//디비에서 날짜 가져올때 사용객체
	private Timestamp endday;					//디비에서 날짜 가져올때 사용객체
	
	private String openingdaystr;				//날짜 업로드 형식
	private String enddaystr;					//날짜 업로드 형식
	private String region;
	
	private Timestamp regDate;
	

	private String id;
	
	


	public String getProfilfile() {
		return profilfile;
	}

	public void setProfilfile(String profilfile) {
		this.profilfile = profilfile;
	}

	public Timestamp getRegDate() {
		return regDate;
	}

	public void setRegDate(Timestamp regDate) {
		this.regDate = regDate;
	}

	public String getProFilFileName() {
		return proFilFileName;
	}

	public void setProFilFileName(String proFilFileName) {
		this.proFilFileName = proFilFileName;
	}

	public String getPeed() {
		return peed;
	}

	public void setPeed(String peed) {
		this.peed = peed;
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

	public java.sql.Date getRegdate() {
		return regdate;
	}

	public void setRegdate(java.sql.Date regdate) {
		this.regdate = regdate;
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

	public int getRef() {
		return ref;
	}

	public void setRef(int ref) {
		this.ref = ref;
	}

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

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public String getAaa() {
		return aaa;
	}

	public void setAaa(String aaa) {
		this.aaa = aaa;
	}

	public Timestamp getOpeningday() {
		return openingday;
	}

	public void setOpeningday(Timestamp openingday) {
		this.openingday = openingday;
	}

	public Timestamp getEndday() {
		return endday;
	}

	public void setEndday(Timestamp endday) {
		this.endday = endday;
	}

	public String getOpeningdaystr() {
		return openingdaystr;
	}

	public void setOpeningdaystr(String openingdaystr) {
		this.openingdaystr = openingdaystr;
	}

	public String getEnddaystr() {
		return enddaystr;
	}

	public void setEnddaystr(String enddaystr) {
		this.enddaystr = enddaystr;
	}

	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
	
	
	
	
	

}
