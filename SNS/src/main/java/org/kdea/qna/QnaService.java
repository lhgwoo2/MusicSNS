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

	//qna �� �ø���
	public String add(QnaVO vo) {
		QnaDAO dao = sqlSessionTemplate.getMapper(QnaDAO.class);
		
		System.out.println("���� �Դϴ�"+vo.getTitle()+vo.getAuthor()+vo.getContents());
		int rows = dao.addBoard(vo);
		JSONObject jObj = new JSONObject();
		System.out.println("������"+rows);
		if(rows==1){
		jObj.put("result", true);
		}
		return jObj.toJSONString();
	}
	
	//qna �� ��������
	public QnaVO readBoard(String id) {
		QnaDAO dao = sqlSessionTemplate.getMapper(QnaDAO.class);
		QnaVO board = dao.getBoard(id);
		return board;
	}
	
	//qna �� ������ ��������
	public QnaVO desc(QnaVO vo) {
		QnaDAO dao = sqlSessionTemplate.getMapper(QnaDAO.class);
		QnaVO board = dao.desc(vo);
		return board;
	}
	
	//qna �� ����
	public String modify(QnaVO vo) {
		QnaDAO dao = sqlSessionTemplate.getMapper(QnaDAO.class);
		dao.update(vo);
		return "gd";
	}

	//qna ��� �ޱ�
	public int getComm(QnaVO vo) {
		QnaDAO dao = sqlSessionTemplate.getMapper(QnaDAO.class);
		int rows = dao.getComm(vo);
		return rows;
	}

	//qna ����Ʈ ��������
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
			System.out.println("�ε��� �����Դϴ�");
		}
		return list;
	}

	//qna �� ����
	public String delInfo(QnaVO vo) {
		QnaDAO dao = sqlSessionTemplate.getMapper(QnaDAO.class);
		int sss= dao.delBoard(vo);
		JSONObject jObj = new JSONObject();
		if(sss==1){
			jObj.put("result",true);
		}
		return jObj.toJSONString();
	}

	//qna �� �˻�
	public List<QnaVO> search(QnaVO vo) {
		QnaDAO dao = sqlSessionTemplate.getMapper(QnaDAO.class);
		List<QnaVO> list = dao.getSearch(vo.getConten(),vo.getKey());
		return list;
	}

	
	//qna �Խñ� ��������
	public QnaVO getQna(QnaVO vo) {
		QnaDAO dao = sqlSessionTemplate.getMapper(QnaDAO.class);
		return dao.desc(vo);
	}

	//�������� ��������
	public QnaVO getUser(String id) {
		QnaDAO dao = sqlSessionTemplate.getMapper(QnaDAO.class);
		return dao.getUser(id);
	} 

	
}
