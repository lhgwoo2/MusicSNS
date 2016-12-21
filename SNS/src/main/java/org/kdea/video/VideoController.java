package org.kdea.video;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.kdea.manager.ManagerVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/video/")
public class VideoController {

   @Autowired
   private VideoService svc;
   

   //����Ʈ 
   @RequestMapping(value = "list", method = RequestMethod.GET)
   public String getList(Model model, VideoVO vo, HttpSession session) {
      vo.setPage(1);
/*      model.addAttribute("video", svc.search(vo));*/
      model.addAttribute("maxpage",svc.maxPage());
      String id=(String)session.getAttribute("myid");
      model.addAttribute("user", svc.getUser(id));      //�α��ε� ������ �����ʻ���(����) ��������
      return "video/videoList";
   }
   
   @RequestMapping(value="/search", method = RequestMethod.POST) //�����ϱ�
   public String search(VideoVO vo,Model model, HttpSession session) {

      List<VideoVO> list =svc.search(vo);
      model.addAttribute("videoList", list);
      String id=(String)session.getAttribute("myid");
      model.addAttribute("user", svc.getUser(id));      //�α��ε� ������ �����ʻ���(����) ��������
      return "video/videoList_ajax";
   }   

   //������ �Խù� �ø���
   @RequestMapping("write")
   public String write(Model model,String profile, HttpSession session) {
	  String id=(String)session.getAttribute("myid");
	  model.addAttribute("user", svc.getUser(id));      //�α��ε� ������ �����ʻ���(����) ��������
      model.addAttribute("proFilFileName",profile);
      return "video/videowrite";
   }
   
   //������ �Խù� �ø��� ajax
   @RequestMapping(value = "videoadd", method = RequestMethod.POST)
   @ResponseBody
   public Map<String,Boolean> fileUploaded(VideoVO vo, BindingResult result) {
      Map<String,Boolean> map = new HashMap<String,Boolean>();
      VideoVO vo1 = svc.videoUpload(vo, result);
      if(vo1==null){
         map.put("ok", false);
      }else{
         map.put("ok", true);
      }
      return map;
   }
   
   //������ �Խù� ����
   @RequestMapping("videoupdate")
   public String videoupdate(int num, Model model, HttpSession session) {
	   	  
	   	String id=(String)session.getAttribute("myid");
		model.addAttribute("user", svc.getUser(id));      //�α��ε� ������ �����ʻ���(����) ��������
		VideoVO vo = svc.videoDesc(num);
		model.addAttribute("vo",vo );
      return "video/videoUpdate";
   }
   
   //������ �Խù� ���� ajax
   @RequestMapping(value="videoupdateajax",method = RequestMethod.POST)
   @ResponseBody
   public Map<String,Boolean> videoupdateajax(VideoVO vo,BindingResult result,Model model) {
      Map<String,Boolean> map = new HashMap<String,Boolean>();
      VideoVO vo1 = svc.videoUpdate(vo, result);
      if(vo1==null){
         map.put("ok", false);
      }else{
         map.put("ok", true);
      }
      return map;
   }
   
   //�Խù� ����
   @RequestMapping("del")
   @ResponseBody
   public Map<String,Boolean> del(VideoVO vo, Model model) {
      Map<String,Boolean> map = new HashMap<String,Boolean>();
      int re = svc.del(vo);
      if(0<re){
         map.put("ok", true);
      }else{
         map.put("ok", false);
      }
      return map;
   }
   

   //�ϸ�ũ �ϱ�
   @RequestMapping("mark")
   @ResponseBody
   public Map<String,Boolean> mark(VideoVO vo, Model model) {
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
   @RequestMapping("markCancel")
   @ResponseBody
   public Map<String,Boolean> markCancel(VideoVO vo, Model model) {
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
   @RequestMapping(value="newspeedComment", method=RequestMethod.GET)
   public String newspeedComment(VideoVO vo, Model model)
   {   
      List<VideoVO> list = svc.getcomment(vo);
      model.addAttribute("commentList",list);
      return "video/newspeedComment";
   }
   
   //��ۻ����� ��������
   @RequestMapping(value="getcommentsize", method=RequestMethod.POST)
   @ResponseBody
   public Map<String, Integer> getCommentSize(VideoVO vo, Model model)
   {   
      List<VideoVO> list = svc.firstComment(vo);
      Map<String, Integer> map = new HashMap<String, Integer>();
      map.put("listcnt",list.size());
      return map;
   }
      
      
   //��� ��������
   @RequestMapping(value="getcomment", method=RequestMethod.POST)
   public String getComment(VideoVO vo, Model model)
   {   
      List<VideoVO> list = svc.getcomment(vo);
      model.addAttribute("list",list);
      return "video/moreComment";
   }
      
      
   //��� �Է��ϱ�
   @RequestMapping(value="setcomment", method=RequestMethod.POST)
   public String setComment(VideoVO vo, Model model)
   {   
      System.out.println("������ ��Ʈ�ѷ�"+vo.getContents());
      VideoVO vo2 = svc.setcomment(vo);
      model.addAttribute("vo",vo2);
      if(vo2.getCommentref()==0)
         return "video/basicComment";
      else
         return "video/secComment";
         
   }
   
   
   
   
   
   
}