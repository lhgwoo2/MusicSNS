package org.kdea.recodes;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping("/recodes")
public class RecodeController {

	@Autowired
	private RecodeService svc;

	
	//리스트
	@RequestMapping(value = "/getList", method = RequestMethod.GET)
	public String getList(Model model, RecodeVO vo, HttpSession session) {
		String id=(String)session.getAttribute("myid");
		model.addAttribute("user", svc.getUser(id));		//로그인된 유저의 프로필사진(정보) 가져오기
		vo.setPage(1);
		model.addAttribute("maxpage",svc.maxPage());
		return "recodes/recodeList";
	}
	
	//리스트 ajax
	@RequestMapping(value = "/listFeed", method = RequestMethod.POST)
	public String listFeed(Model model, RecodeVO vo, HttpSession session) {
		String id=(String)session.getAttribute("myid");
		model.addAttribute("list", svc.search(vo));
		model.addAttribute("user", svc.getUser(id));		//로그인된 유저의 프로필사진(정보) 가져오기
		return "recodes/ListFeed";
	}
	
	@RequestMapping(value="/search", method = RequestMethod.POST) //정렬하기
	public String search(RecodeVO vo,Model model, HttpSession session) {
		String id=(String)session.getAttribute("myid");
		List<RecodeVO> list =svc.search(vo);
		model.addAttribute("list", list);
		model.addAttribute("user", svc.getUser(id));		//로그인된 유저의 프로필사진(정보) 가져오기
		return "recodes/ListFeed";
	}

	//녹음 게시물 올리기 폼
	@RequestMapping(value = "/writeForm", method = RequestMethod.GET)
	public String writeForm(Model model, RecodeVO vo, HttpSession session) {
		String id=(String)session.getAttribute("myid");
		model.addAttribute("user", svc.getUser(id));		//로그인된 유저의 프로필사진(정보) 가져오기
		return "recodes/recodewrite";
	}
	
	//녹음 게시물 올리기 추가
	@RequestMapping(value = "/fileInsert", method = RequestMethod.POST) //녹음추가
	@ResponseBody
	public Map<String, Boolean> fileInsert(Model model, RecodeVO vo,BindingResult result) {
		Map<String,Boolean> map = new HashMap<String, Boolean>();
		RecodeVO vo1 = svc.recodeUpload(vo, result);
		if(vo1==null){
			map.put("ok", false);
		}else{
			svc.fileSave(vo1);
			map.put("ok", true);
		}
		return map;
	}

	//상제정보 가져오기
	@RequestMapping(value = "/updateForm", method = RequestMethod.GET) //수정폼이동
	public String updateForm(@RequestParam(value="num") int num, 
			Model model, RecodeVO vo, BindingResult result, HttpSession session) {
		String id=(String)session.getAttribute("myid");
		model.addAttribute("user", svc.getUser(id));		//로그인된 유저의 프로필사진(정보) 가져오기
		vo = svc.getDesc(num);
		model.addAttribute("recode",vo);
		return "recodes/updateForm";
	}	
	
	//업데이트 ajax
	@RequestMapping(value = "/update", method = RequestMethod.POST) //수정
	@ResponseBody
	public Map<String,Boolean> update(Model model, RecodeVO vo,BindingResult result) {
		
		Map<String,Boolean> map = new HashMap<String, Boolean>();
		RecodeVO vo1 = svc.recodeUpdate(vo,result);
		if(vo1==null){
			map.put("ok", false);
		}else{
			svc.fileSave(vo1);
			map.put("ok", true);
		}
		return map;
	}	

	@RequestMapping(value = "/delete", method = RequestMethod.POST) //수정폼이동
	@ResponseBody
	public Map<String,Boolean> delete(RecodeVO vo) {
		Map<String,Boolean> map = new HashMap<String,Boolean>();
		int re = svc.delete(vo);
		if(0<re){
			map.put("ok", true);
		}else{
			map.put("ok", false);
		}
		return map;
	}	
	
	//북마크 하기
	@RequestMapping("recodemark")
	@ResponseBody
	public Map<String,Boolean> mark(RecodeVO vo, Model model) {
		Map<String,Boolean> map = new HashMap<String,Boolean>();
		int re = svc.mark(vo);
		if(0<re){
			map.put("ok", true);
		}else{
			map.put("ok", false);
		}
		return map;
	}
	
	//북마크 해제하기
	@RequestMapping("recodemarkCancel")
	@ResponseBody
	public Map<String,Boolean> markCancel(RecodeVO vo, Model model) {
		Map<String,Boolean> map = new HashMap<String,Boolean>();
		int re =svc.markCancel(vo);
		if(0<re){
			map.put("ok", true);
		}else{
			map.put("ok", false);
		}
		return map;
	}
	
	
	
	
	//12월12일  통합
	//처음으로 댓글 가져오기
	@RequestMapping(value="/newspeedComment", method=RequestMethod.GET)
	public String newspeedComment(RecodeVO vo, Model model)
	{	
		List<RecodeVO> list = svc.getcomment(vo);
		model.addAttribute("commentList",list);
		return "/recodes/newspeedComment";
	}
	
	//댓글사이즈 가져오기
	@RequestMapping(value="/getcommentsize", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Integer> getCommentSize(RecodeVO vo, Model model)
	{	
		List<RecodeVO> list = svc.firstComment(vo);
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("listcnt",list.size());
		return map;
	}
		
		
	//댓글 가져오기
	@RequestMapping(value="/getcomment", method=RequestMethod.POST)
	public String getComment(RecodeVO vo, Model model)
	{	
		List<RecodeVO> list = svc.getcomment(vo);
		model.addAttribute("list",list);
		return "/recodes/moreComment";
	}
		
		
	//댓글 입력하기
	@RequestMapping(value="/setcomment", method=RequestMethod.POST)
	public String setComment(RecodeVO vo, Model model)
	{	
		RecodeVO vo2 = svc.setcomment(vo);
		model.addAttribute("vo",vo2);
		if(vo2.getCommentref()==0)
			return "/recodes/basicComment";
		else
			return "/recodes/secComment";
			
	}
	
	
	
}