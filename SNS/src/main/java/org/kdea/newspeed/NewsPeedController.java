package org.kdea.newspeed;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.kdea.manager.ManagerVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/main")
public class NewsPeedController {

	@Autowired
	NewsPeedService svc;
	
	@RequestMapping(value = "/newspeed", method = RequestMethod.GET)
	public String newspeed(Model model, HttpSession session) {
		
		
		//세션에 내 아이디 넣기
		String userDetails = SecurityContextHolder.getContext().getAuthentication().getName();
		session.setAttribute("myid", userDetails);
		
		
		NewsPeedVO vo = new NewsPeedVO();
		vo.setPage(1);
		vo.setAuthor(userDetails);
			
		model.addAttribute("user", svc.getUser(userDetails));
		model.addAttribute("video", svc.newsPeedVideo(vo));
		model.addAttribute("recode", svc.newsPeedRecode(vo));
		model.addAttribute("promotion", svc.newsPeedpromotion(vo));
		model.addAttribute("maxpage", svc.maxPage());
		return "newspeed/newspeed";
	}
	

	@RequestMapping(value = "/newspeedAjax", method = RequestMethod.POST)
	public String newspeedAjax(NewsPeedVO vo,Model model) {
		if(vo.getPeed().equals("video")){
			model.addAttribute("video", svc.newsPeedVideo(vo));
			return "newspeed/videonewspeed";
		}else if(vo.getPeed().equals("recode")){
			model.addAttribute("recode",svc.newsPeedRecode(vo));
			return "newspeed/recodesnewspeed";
		}else if(vo.getPeed().equals("promotion")){
			model.addAttribute("vo", svc.newsPeedpromotion(vo));
			return "newspeed/promotionnewspeed";
		}
		return "newspeed/newspeed";
	}
	
	//스크롤이 맨 위에 있을시 맥스넘 초기화
	@RequestMapping(value = "/newMaxNum", method = RequestMethod.POST)
	@ResponseBody
	public Map<String,List<Integer>> newMaxNum() {	
		Map<String,List<Integer>> map = new HashMap();
		map.put("maxpage", svc.maxPage());
		return map;
	}
	
	//스크롤이 맨 위에 있을시 정보 초기화
	@RequestMapping(value = "/NewNewsspeed", method = RequestMethod.POST)
	public String NewNewspeed(NewsPeedVO vo,Model model) {	
		model.addAttribute("video", svc.newsPeedVideo(vo));
		model.addAttribute("recode", svc.newsPeedRecode(vo));
		model.addAttribute("promotion", svc.newsPeedpromotion(vo));
		return "newspeed/NewNewsspeed";
	}
	
	@RequestMapping(value = "/mark", method = RequestMethod.POST)
	@ResponseBody
	public Map<String,Boolean> mark(NewsPeedVO vo,Model model) {
		Map<String,Boolean> map = new HashMap<String,Boolean>();
		int re  = 0;
		if(vo.getPeed().equals("video")){
			re = svc.videoMark(vo);
		}else if(vo.getPeed().equals("recode")){
			re = svc.recodeMark(vo);
		}else{
			re = svc.promotionMark(vo);
		}
		if(0<re){
			map.put("ok", true);
		}else{
			map.put("ok", false);
		}
		return map;
	}
	
	@RequestMapping(value = "/markCancel", method = RequestMethod.POST)
	@ResponseBody
	public Map<String,Boolean> markCancel(NewsPeedVO vo,Model model) {
		Map<String,Boolean> map = new HashMap<String,Boolean>();
		int re  = 0;
		if(vo.getPeed().equals("video")){
			re = svc.videoMarkCancel(vo);
		}else if(vo.getPeed().equals("recode")){
			re = svc.recodeMarkCancel(vo);
		}else{
			re = svc.promotionMarkCancel(vo);
		}
		if(0<re){
			map.put("ok", true);
		}else{
			map.put("ok", false);
		}
		return map;
	}
	
	
	
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
