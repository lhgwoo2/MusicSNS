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
   

   //리스트 
   @RequestMapping(value = "list", method = RequestMethod.GET)
   public String getList(Model model, VideoVO vo, HttpSession session) {
      vo.setPage(1);
/*      model.addAttribute("video", svc.search(vo));*/
      model.addAttribute("maxpage",svc.maxPage());
      String id=(String)session.getAttribute("myid");
      model.addAttribute("user", svc.getUser(id));      //로그인된 유저의 프로필사진(정보) 가져오기
      return "video/videoList";
   }
   
   @RequestMapping(value="/search", method = RequestMethod.POST) //정렬하기
   public String search(VideoVO vo,Model model, HttpSession session) {

      List<VideoVO> list =svc.search(vo);
      model.addAttribute("videoList", list);
      String id=(String)session.getAttribute("myid");
      model.addAttribute("user", svc.getUser(id));      //로그인된 유저의 프로필사진(정보) 가져오기
      return "video/videoList_ajax";
   }   

   //동영상 게시물 올리기
   @RequestMapping("write")
   public String write(Model model,String profile, HttpSession session) {
	  String id=(String)session.getAttribute("myid");
	  model.addAttribute("user", svc.getUser(id));      //로그인된 유저의 프로필사진(정보) 가져오기
      model.addAttribute("proFilFileName",profile);
      return "video/videowrite";
   }
   
   //동영상 게시물 올리기 ajax
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
   
   //동영상 게시물 수정
   @RequestMapping("videoupdate")
   public String videoupdate(int num, Model model, HttpSession session) {
	   	  
	   	String id=(String)session.getAttribute("myid");
		model.addAttribute("user", svc.getUser(id));      //로그인된 유저의 프로필사진(정보) 가져오기
		VideoVO vo = svc.videoDesc(num);
		model.addAttribute("vo",vo );
      return "video/videoUpdate";
   }
   
   //동영상 게시물 수정 ajax
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
   
   //게시물 삭제
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
   

   //북마크 하기
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
   
   //북마크 해제하기
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
   
   
   
   
   //12월12일  통합
   //처음으로 댓글 가져오기
   @RequestMapping(value="newspeedComment", method=RequestMethod.GET)
   public String newspeedComment(VideoVO vo, Model model)
   {   
      List<VideoVO> list = svc.getcomment(vo);
      model.addAttribute("commentList",list);
      return "video/newspeedComment";
   }
   
   //댓글사이즈 가져오기
   @RequestMapping(value="getcommentsize", method=RequestMethod.POST)
   @ResponseBody
   public Map<String, Integer> getCommentSize(VideoVO vo, Model model)
   {   
      List<VideoVO> list = svc.firstComment(vo);
      Map<String, Integer> map = new HashMap<String, Integer>();
      map.put("listcnt",list.size());
      return map;
   }
      
      
   //댓글 가져오기
   @RequestMapping(value="getcomment", method=RequestMethod.POST)
   public String getComment(VideoVO vo, Model model)
   {   
      List<VideoVO> list = svc.getcomment(vo);
      model.addAttribute("list",list);
      return "video/moreComment";
   }
      
      
   //댓글 입력하기
   @RequestMapping(value="setcomment", method=RequestMethod.POST)
   public String setComment(VideoVO vo, Model model)
   {   
      System.out.println("데이터 컨트롤러"+vo.getContents());
      VideoVO vo2 = svc.setcomment(vo);
      model.addAttribute("vo",vo2);
      if(vo2.getCommentref()==0)
         return "video/basicComment";
      else
         return "video/secComment";
         
   }
   
   
   
   
   
   
}