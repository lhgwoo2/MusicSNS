package org.kdea.qna;

import java.util.List;

import org.json.simple.JSONObject;
import org.kdea.video.VideoDAO;
import org.kdea.video.VideoVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class QnaService {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	//qna 글 올리기
	public String add(QnaVO vo) {
		QnaDAO dao = sqlSessionTemplate.getMapper(QnaDAO.class);
		
		System.out.println("값들 입니다"+vo.getTitle()+vo.getAuthor()+vo.getContents());
		int rows = dao.addBoard(vo);
		JSONObject jObj = new JSONObject();
		System.out.println("로유즈"+rows);
		if(rows==1){
		jObj.put("result", true);
		}
		return jObj.toJSONString();
	}
	
	//qna 글 가져오기
	public QnaVO readBoard(String id) {
		QnaDAO dao = sqlSessionTemplate.getMapper(QnaDAO.class);
		QnaVO board = dao.getBoard(id);
		return board;
	}
	
	//qna 글 상세정보 가져오기
	public QnaVO desc(QnaVO vo) {
		QnaDAO dao = sqlSessionTemplate.getMapper(QnaDAO.class);
		QnaVO board = dao.desc(vo);
		return board;
	}
	
	//qna 글 수정
	public String modify(QnaVO vo) {
		QnaDAO dao = sqlSessionTemplate.getMapper(QnaDAO.class);
		dao.update(vo);
		return "gd";
	}

	//qna 답글 달기
	public int getComm(QnaVO vo) {
		QnaDAO dao = sqlSessionTemplate.getMapper(QnaDAO.class);
		int rows = dao.getComm(vo);
		return rows;
	}

	//qna 리스트 가져오기
	public List<QnaVO> getPage(int page, int rpp) {
		QnaDAO dao = sqlSessionTemplate.getMapper(QnaDAO.class);
		List<QnaVO> list =null;
		int totalPages=0;
		try{
			list = dao.list(page,rpp);
			totalPages = (int)Math.ceil(list.get(0).getTotalRows()/(rpp+0.0));
			list.get(0).setTotalRows(totalPages);
			System.out.println("Ser"+totalPages);
		}catch (IndexOutOfBoundsException e) {
			System.out.println("인덱스 오류입니다");
		}
		return list;
	}

	//qna 글 삭제
	public String delInfo(QnaVO vo) {
		QnaDAO dao = sqlSessionTemplate.getMapper(QnaDAO.class);
		int sss= dao.delBoard(vo);
		JSONObject jObj = new JSONObject();
		if(sss==1){
			jObj.put("result",true);
		}
		return jObj.toJSONString();
	}

	//qna 글 검색
	public List<QnaVO> search(QnaVO vo) {
		QnaDAO dao = sqlSessionTemplate.getMapper(QnaDAO.class);
		List<QnaVO> list = dao.getSearch(vo.getConten(),vo.getKey());
		return list;
	}

	
	//qna 게시글 가져오기
	public QnaVO getQna(QnaVO vo) {
		QnaDAO dao = sqlSessionTemplate.getMapper(QnaDAO.class);
		return dao.desc(vo);
	}

	//유저정보 가져오기
	public QnaVO getUser(String id) {
		QnaDAO dao = sqlSessionTemplate.getMapper(QnaDAO.class);
		return dao.getUser(id);
	} 

	
}
