package org.kdea.promotion;

import java.sql.Timestamp;

import org.springframework.web.multipart.MultipartFile;

public class PromotionVO extends BoardVO{

	private MultipartFile imageFile;
	private String filename;
	private String overlapFile;
	private int totalRows;
	
	private String proFilFileName;
	private Timestamp openingday;				//디비에서 날짜 가져올때 사용객체
	private Timestamp endday;					//디비에서 날짜 가져올때 사용객체
	
	private String openingdaystr;				//날짜 업로드 형식
	private String enddaystr;					//날짜 업로드 형식
	
	private String region;
	private String detailRegion;
	private int page;
	
	private long filesize;
	private String ext;
	private int filenum;
	
	//댓글 사용 변수
	private int ref;				//현재 댓글이 보여지는 상세글의 번호
	private int commentref;			//댓글이 참조하는 부모 댓글의 번호
	private int totalcomment;
	
	//북마크
	private String markid;
	private int marknum;
	

	//날짜 검색
	private String aaa;
	
	
	


	public String getProFilFileName() {
		return proFilFileName;
	}

	public void setProFilFileName(String proFilFileName) {
		this.proFilFileName = proFilFileName;
	}

	public String getAaa() {
		return aaa;
	}

	public void setAaa(String aaa) {
		this.aaa = aaa;
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

	public int getFilenum() {
		return filenum;
	}

	public void setFilenum(int filenum) {
		this.filenum = filenum;
	}

	public int getTotalcomment() {
		return totalcomment;
	}

	public void setTotalcomment(int totalcomment) {
		this.totalcomment = totalcomment;
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

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public String getDetailRegion() {
		return detailRegion;
	}

	public void setDetailRegion(String detailRegion) {
		this.detailRegion = detailRegion;
	}

	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
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

	public int getTotalRows() {
		return totalRows;
	}

	public void setTotalRows(int totalRows) {
		this.totalRows = totalRows;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public String getOverlapFile() {
		return overlapFile;
	}

	public void setOverlapFile(String overlapFile) {
		this.overlapFile = overlapFile;
	}

	public MultipartFile getImageFile() {
		return imageFile;
	}

	public void setImageFile(MultipartFile imageFile) {
		this.imageFile = imageFile;
	}

	public String getMarkid() {
		return markid;
	}

	public void setMarkid(String markid) {
		this.markid = markid;
	}

	public int getMarknum() {
		return marknum;
	}

	public void setMarknum(int marknum) {
		this.marknum = marknum;
	}
	
	
	
}
