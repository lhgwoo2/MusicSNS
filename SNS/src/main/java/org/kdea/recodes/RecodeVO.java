package org.kdea.recodes;

import org.springframework.web.multipart.MultipartFile;

public class RecodeVO extends BoardVO {
	private MultipartFile file;
	private String id;
	private String filename;
	private long filesize;
	private String ext;
	private String overlapfile;
	private int maxpage;
	private int page;
	private String markid;
	private int marknum;
	private String proFilFileName;
	
	private int totalRows;
	
	
	//댓글 사용 변수
	private int ref;				//현재 댓글이 보여지는 상세글의 번호
	private int commentref;			//댓글이 참조하는 부모 댓글의 번호
	private int totalcomment;

	
	
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

	public int getMaxpage() {
		return maxpage;
	}

	public void setMaxpage(int maxpage) {
		this.maxpage = maxpage;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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

	public String getOverlapfile() {
		return overlapfile;
	}

	public void setOverlapfile(String overlapfile) {
		this.overlapfile = overlapfile;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
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
