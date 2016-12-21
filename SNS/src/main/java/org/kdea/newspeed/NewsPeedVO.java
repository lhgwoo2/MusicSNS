package org.kdea.newspeed;

import java.sql.Timestamp;

import org.springframework.web.multipart.MultipartFile;

public class NewsPeedVO {
	
	//��� �����ǵ带 ��û�ϴ���!
	private String peed;
	//���° ������ ����
	private int page;
	
	//��� ���̺� ���� ����
	private int num;
	private String author;
	private String title;
	private String contents;
	private String genre;
	private java.sql.Date regdate;
	private int likes;
	private int active;
	
	//��� ���� ���̺� ����
	private long filesize;
	private String ext;
	private String filename;
	private MultipartFile file;
	
	//�ϸ�ũ ���� ����
	private String marknum;
	private String markid;
	
	//��� ��� ����
	private int ref;							//���� ����� �������� �󼼱��� ��ȣ
	private int commentref;			//����� �����ϴ� �θ� ����� ��ȣ
	private int totalcomment;
	
	//��¥ �˻�
	private String aaa;

	//������ ���� ���ϱ�
	private String proFilFileName;
	private String profilfile;
	
	//ȫ�� ���̺� 
	private Timestamp openingday;				//��񿡼� ��¥ �����ö� ��밴ü
	private Timestamp endday;					//��񿡼� ��¥ �����ö� ��밴ü
	
	private String openingdaystr;				//��¥ ���ε� ����
	private String enddaystr;					//��¥ ���ε� ����
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
