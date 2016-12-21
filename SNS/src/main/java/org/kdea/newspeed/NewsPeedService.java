package org.kdea.newspeed;


import java.util.ArrayList;
import java.util.List;

import org.kdea.manager.ManagerVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NewsPeedService {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate; // �������Ͽ� ������ ��ϵǾ��� ������ �����ڳ� Setter ���� �ڵ����� ����

	
	//������ �ִ������� 
	public List<Integer> maxPage(){
		NewsPeedDAO dao= sqlSessionTemplate.getMapper(NewsPeedDAO.class);	
		List<Integer> maxpage = new ArrayList<Integer>();
		maxpage.add(dao.videomax());
		maxpage.add(dao.recodemax());
		maxpage.add(dao.promotionmax());
		return maxpage ;
	}

	//������ ���� ��������
	public NewsPeedVO newsPeedVideo(NewsPeedVO vo) {
		NewsPeedDAO dao= sqlSessionTemplate.getMapper(NewsPeedDAO.class);
		return dao.getVideo(vo);
	}

	//���ڵ� ���� ��������
	public NewsPeedVO newsPeedRecode(NewsPeedVO vo) {
		NewsPeedDAO dao= sqlSessionTemplate.getMapper(NewsPeedDAO.class);
		return dao.getRecode(vo);
	}

	//ȫ�� ���� ��������
	public NewsPeedVO newsPeedpromotion(NewsPeedVO vo) {
		NewsPeedDAO dao= sqlSessionTemplate.getMapper(NewsPeedDAO.class);
		return dao.getPromotion(vo);
	}
	
	//���� �ϸ�ũ
	public int videoMark(NewsPeedVO vo) {
		NewsPeedDAO dao= sqlSessionTemplate.getMapper(NewsPeedDAO.class);
		dao.videoLikes(vo.getNum());
		return dao.videoMark(vo);
	}
	
	//���ڵ� �ϸ�ũ
	public int recodeMark(NewsPeedVO vo) {
		NewsPeedDAO dao= sqlSessionTemplate.getMapper(NewsPeedDAO.class);
		dao.recodeLikes(vo.getNum());
		return dao.recodeMark(vo);
	}
	
	//ȫ�� �ϸ�ũ
	public int promotionMark(NewsPeedVO vo) {
		NewsPeedDAO dao= sqlSessionTemplate.getMapper(NewsPeedDAO.class); 
		dao.promotionLikes(vo.getNum());
		return dao.promotionMark(vo);
	}

	//���� �ϸ�ũ ���
	public int videoMarkCancel(NewsPeedVO vo) {
		NewsPeedDAO dao= sqlSessionTemplate.getMapper(NewsPeedDAO.class); 
		dao.videoLikes_(vo.getNum());
		return dao.videoMarkCancel(vo);
	}

	//���ڵ� �ϸ�ũ ���
	public int recodeMarkCancel(NewsPeedVO vo) {
		NewsPeedDAO dao= sqlSessionTemplate.getMapper(NewsPeedDAO.class); 
		dao.recodelikes_(vo.getNum());
		return dao.recodeMarkCancel(vo);	
	}

	//ȫ�� �ϸ�ũ ���
	public int promotionMarkCancel(NewsPeedVO vo) {
		NewsPeedDAO dao= sqlSessionTemplate.getMapper(NewsPeedDAO.class); 
		dao.promotionLikes_(vo.getNum());
		return dao.promotionMarkCancel(vo);
	}

	
	//12�� 13�� �߰�����
	//�������� ��������
	public NewsPeedVO getUser(String id) {
		NewsPeedDAO dao= sqlSessionTemplate.getMapper(NewsPeedDAO.class); 
		return dao.getUser(id);
	}
	
	

	
	

	
}
