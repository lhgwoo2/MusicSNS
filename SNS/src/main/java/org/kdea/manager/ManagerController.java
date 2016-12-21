package org.kdea.manager;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/manager")
public class ManagerController {

	@Autowired
	private ManagerService svc;
	
	//리스트
	@RequestMapping(value = "/list")
	public String listForm(Model model, ManagerVO vo, HttpSession session) {
		 String id=(String)session.getAttribute("myid");
	     model.addAttribute("user", svc.getUser(id));      //로그인된 유저의 프로필사진(정보) 가져오기s
		if (vo.getPage() == 0) {
			model.addAttribute("page", 1);
			vo.setPage(1);
			vo.setRpp(5);
			model.addAttribute("navi", svc.getPage(vo.getPage(), vo.getRpp()));
			return "/manager/list";
		} else {
			vo.setRpp(5);
			model.addAttribute("navi", svc.getPage(vo.getPage(), vo.getRpp()));
			return "/manager/content";
		}
	}
	//게시글 상세정보
	@RequestMapping(value = "/desc", method = RequestMethod.GET)
	public String desc2(Model model, ManagerVO vo, HttpSession session) {
		 String id=(String)session.getAttribute("myid");
	     model.addAttribute("user", svc.getUser(id));      //로그인된 유저의 프로필사진(정보) 가져오기s
		model.addAttribute("desc", svc.desc(vo));
		return "/manager/desc";
	}

	// 삭제
	@RequestMapping(value = "/del", method = RequestMethod.POST)
	@ResponseBody
	public String delete(ManagerVO vo, Model model) {
		System.out.println("삭제"+vo.getNum());
		String v = svc.delInfo(vo);
		return v;
	}
	
	//검색
	@RequestMapping(value = "/getSearch", method = RequestMethod.POST)
	public String search(ManagerVO vo, Model model) {
		model.addAttribute("navi", svc.search(vo));
		return "/manager/list";
	}
	
	// 처리상태
	@RequestMapping(value = "/complete", method = RequestMethod.POST)
	@ResponseBody
	public String complete(ManagerVO vo, Model model) {
		String v = svc.complete(vo);
		return v;
	}
	
	
	
	
	
}