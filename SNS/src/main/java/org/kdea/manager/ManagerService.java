package org.kdea.manager;

import java.util.List;

import org.json.simple.JSONObject;
import org.kdea.promotion.PromotionDAO;
import org.kdea.qna.QnaDAO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ManagerService {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public ManagerVO desc(ManagerVO vo) {
		ManagerDAO dao = sqlSessionTemplate.getMapper(ManagerDAO.class);
		ManagerVO board = dao.desc(vo);
	
		return board;
	}

	public List<ManagerVO> getPage(int page, int rpp) {
		ManagerDAO dao = sqlSessionTemplate.getMapper(ManagerDAO.class);
		List<ManagerVO> list = null;
		int totalPages=0;
		try{
			list = dao.list(page,rpp);
			totalPages = (int) Math.ceil(list.get(0).getTotalRows() / (rpp + 0.0));
			list.get(0).setTotalRows(totalPages);
			System.out.println(list.get(0).getTotalRows());
		}catch (Exception e) {}
		
		return list;
	}

	public String delInfo(ManagerVO vo) {
		ManagerDAO dao = sqlSessionTemplate.getMapper(ManagerDAO.class);
		int sss= dao.delBoard(vo);
		System.out.println("삭제2"+sss);
		JSONObject jObj = new JSONObject();
		if(0<sss){
			jObj.put("result",true);
		}else{
			jObj.put("result",false);
		}
		return jObj.toJSONString();
	}
	
	public String complete(ManagerVO vo) {
		ManagerDAO dao = sqlSessionTemplate.getMapper(ManagerDAO.class);
		int sss= dao.complete(vo);
		JSONObject jObj = new JSONObject();
		if(0<sss){
			jObj.put("result",true);
		}else{
			jObj.put("result",false);
		}
		return jObj.toJSONString();
	}

	public List<ManagerVO> search(ManagerVO vo) {
		ManagerDAO dao = sqlSessionTemplate.getMapper(ManagerDAO.class);
		List<ManagerVO> list = dao.getSearch(vo.getConten(),vo.getKey());
		return list;
	}
	
	//유저정보 가져오기
	public ManagerVO getUser(String id) {
		ManagerDAO dao = sqlSessionTemplate.getMapper(ManagerDAO.class);
		return dao.getUser(id);
	}
	
	
	
}
