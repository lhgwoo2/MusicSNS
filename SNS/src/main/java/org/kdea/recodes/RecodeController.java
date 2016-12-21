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

	
	//����Ʈ
	@RequestMapping(value = "/getList", method = RequestMethod.GET)
	public String getList(Model model, RecodeVO vo, HttpSession session) {
		String id=(String)session.getAttribute("myid");
		model.addAttribute("user", svc.getUser(id));		//�α��ε� ������ �����ʻ���(����) ��������
		vo.setPage(1);
		model.addAttribute("maxpage",svc.maxPage());
		return "recodes/recodeList";
	}
	
	//����Ʈ ajax
	@RequestMapping(value = "/listFeed", method = RequestMethod.POST)
	public String listFeed(Model model, RecodeVO vo, HttpSession session) {
		String id=(String)session.getAttribute("myid");
		model.addAttribute("list", svc.search(vo));
		model.addAttribute("user", svc.getUser(id));		//�α��ε� ������ �����ʻ���(����) ��������
		return "recodes/ListFeed";
	}
	
	@RequestMapping(value="/search", method = RequestMethod.POST) //�����ϱ�
	public String search(RecodeVO vo,Model model, HttpSession session) {
		String id=(String)session.getAttribute("myid");
		List<RecodeVO> list =svc.search(vo);
		model.addAttribute("list", list);
		model.addAttribute("user", svc.getUser(id));		//�α��ε� ������ �����ʻ���(����) ��������
		return "recodes/ListFeed";
	}

	//���� �Խù� �ø��� ��
	@RequestMapping(value = "/writeForm", method = RequestMethod.GET)
	public String writeForm(Model model, RecodeVO vo, HttpSession session) {
		String id=(String)session.getAttribute("myid");
		model.addAttribute("user", svc.getUser(id));		//�α��ε� ������ �����ʻ���(����) ��������
		return "recodes/recodewrite";
	}
	
	//���� �Խù� �ø��� �߰�
	@RequestMapping(value = "/fileInsert", method = RequestMethod.POST) //�����߰�
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

	//�������� ��������
	@RequestMapping(value = "/updateForm", method = RequestMethod.GET) //�������̵�
	public String updateForm(@RequestParam(value="num") int num, 
			Model model, RecodeVO vo, BindingResult result, HttpSession session) {
		String id=(String)session.getAttribute("myid");
		model.addAttribute("user", svc.getUser(id));		//�α��ε� ������ �����ʻ���(����) ��������
		vo = svc.getDesc(num);
		model.addAttribute("recode",vo);
		return "recodes/updateForm";
	}	
	
	//������Ʈ ajax
	@RequestMapping(value = "/update", method = RequestMethod.POST) //����
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

	@RequestMapping(value = "/delete", method = RequestMethod.POST) //�������̵�
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
	
	//�ϸ�ũ �ϱ�
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
	
	//�ϸ�ũ �����ϱ�
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
	
	
	
	
	//12��12��  ����
	//ó������ ��� ��������
	@RequestMapping(value="/newspeedComment", method=RequestMethod.GET)
	public String newspeedComment(RecodeVO vo, Model model)
	{	
		List<RecodeVO> list = svc.getcomment(vo);
		model.addAttribute("commentList",list);
		return "/recodes/newspeedComment";
	}
	
	//��ۻ����� ��������
	@RequestMapping(value="/getcommentsize", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Integer> getCommentSize(RecodeVO vo, Model model)
	{	
		List<RecodeVO> list = svc.firstComment(vo);
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("listcnt",list.size());
		return map;
	}
		
		
	//��� ��������
	@RequestMapping(value="/getcomment", method=RequestMethod.POST)
	public String getComment(RecodeVO vo, Model model)
	{	
		List<RecodeVO> list = svc.getcomment(vo);
		model.addAttribute("list",list);
		return "/recodes/moreComment";
	}
		
		
	//��� �Է��ϱ�
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