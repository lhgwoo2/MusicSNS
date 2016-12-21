package org.kdea.qna;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/qna")
public class QnaController {
	
	@Autowired
	private QnaService svc;
	//qna 게시판 리스트
	@RequestMapping(value = "/list")
	public String listForm(Model model, QnaVO vo, HttpSession session) {
		 String id=(String)session.getAttribute("myid");
	      model.addAttribute("user", svc.getUser(id));      //로그인된 유저의 프로필사진(정보) 가져오기s
		if (vo.getPage() == 0) {
			vo.setPage(1);
			vo.setRpp(10);
			model.addAttribute("page", 1);
			model.addAttribute("navi", svc.getPage(vo.getPage(), vo.getRpp()));
			return "/qna/list";
		} else {
			vo.setRpp(10);
			model.addAttribute("navi", svc.getPage(vo.getPage(), vo.getRpp()));
			return "/qna/content";
		}
	}
	
	//게시판 글쓰기 폼
	@RequestMapping(value = "/write", method = RequestMethod.GET) // write.jsp
	public String inputForm(Model model, HttpSession session) {
		 String id=(String)session.getAttribute("myid");
	      model.addAttribute("user", svc.getUser(id));      //로그인된 유저의 프로필사진(정보) 가져오기s
		return "/qna/write";
	}
	//게시판 글쓰기
	@RequestMapping(value = "/write1", method = RequestMethod.POST)
	@ResponseBody
	public String addInput(QnaVO vo) {
		return svc.add(vo);
	}
	//게시판 글읽기
	@RequestMapping(value = "/read1", method = RequestMethod.POST)
	public String readForm(Model model, QnaVO vo) {
		QnaVO vo1 = svc.readBoard(vo.getAuthor());
		model.addAttribute("read", vo1);
		return "/qna/reading";
	}
	//게시판 상세보기
	@RequestMapping(value = "/desc", method = RequestMethod.GET)
	public String desc(Model model, QnaVO vo, HttpSession session) {
		 String id=(String)session.getAttribute("myid");
	      model.addAttribute("user", svc.getUser(id));      //로그인된 유저의 프로필사진(정보) 가져오기s
		model.addAttribute("desc", svc.desc(vo));
		return "/qna/desc";
	}
	//게시판 수정하기 폼
	@RequestMapping(value = "/modi", method = RequestMethod.POST)
	public String modi(Model model, QnaVO vo) {
		System.out.println("modi");
		vo=svc.getQna(vo);
		model.addAttribute("vo", vo);
		return "/qna/update";
	}
	//게시판 수정하기
	@RequestMapping(value = "/modi1", method = RequestMethod.POST)
	@ResponseBody
	public String modi1(Model model, QnaVO vo) {
		String str = svc.modify(vo);
		JSONObject json = new JSONObject();
		json.put("result", str);
		return json.toJSONString();
	}
	
	//댓글달기 폼
	@RequestMapping(value = "/comm", method = RequestMethod.POST)
	public String comm(Model model, QnaVO vo) {
		model.addAttribute("num", vo.getNum());
		return "/qna/comm";
	}
	//댓글달기 
	@RequestMapping(value = "/comm1", method = RequestMethod.POST)
	@ResponseBody
	public String comm1(Model model, QnaVO vo) {
		int str = svc.getComm(vo);
		JSONObject json = new JSONObject();
		json.put("result", str);
		return json.toJSONString();
	}

	
	//삭제
	@RequestMapping(value = "/del", method = RequestMethod.POST)
	@ResponseBody
	public String delete(QnaVO vo,Model model) {
		String v = svc.delInfo(vo);
		return v;
	}
	//검색
	@RequestMapping(value = "/getSearch", method = RequestMethod.POST)
	public String search(QnaVO vo, Model model) {
		model.addAttribute("navi", svc.search(vo));
		return "/qna/list";
	}
	
}