package org.kdea.promotion;

import java.sql.Timestamp;

import org.springframework.web.multipart.MultipartFile;

public class PromotionVO extends BoardVO{

	private MultipartFile imageFile;
	private String filename;
	private String overlapFile;
	private int totalRows;
	
	private String proFilFileName;
	private Timestamp openingday;				//��񿡼� ��¥ �����ö� ��밴ü
	private Timestamp endday;					//��񿡼� ��¥ �����ö� ��밴ü
	
	private String openingdaystr;				//��¥ ���ε� ����
	private String enddaystr;					//��¥ ���ε� ����
	
	private String region;
	private String detailRegion;
	private int page;
	
	private long filesize;
	private String ext;
	private int filenum;
	
	//��� ��� ����
	private int ref;				//���� ����� �������� �󼼱��� ��ȣ
	private int commentref;			//����� �����ϴ� �θ� ����� ��ȣ
	private int totalcomment;
	
	//�ϸ�ũ
	private String markid;
	private int marknum;
	

	//��¥ �˻�
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
