package org.kdea.mypage;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.kdea.manager.ManagerVO;
import org.kdea.members.MemberVO;
import org.kdea.promotion.PromotionVO;
import org.kdea.recodes.RecodeVO;
import org.kdea.video.VideoVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/mypage")
public class MypageController {

	@Autowired
	MypageService svc ;
    
	////////////////////////////////////////////////////// bookmark
	
	//video bookmark 페이지 이동
	@RequestMapping(value="/bookmarkVideo", method=RequestMethod.GET)
	public String getVideoList(@RequestParam(value="page", defaultValue="1")int page,
			@RequestParam(value="key", required=false)String key,
	   		@RequestParam(value="type", required=false)String type, Model model, HttpSession session)
	{
		String id=(String)session.getAttribute("myid");
		model.addAttribute("user", svc.getUser(id));      //로그인된 유저의 프로필사진(정보) 가져오기
	   	List<VideoVO>list=svc.getBookmarkVideoList(key,type,page,id);
	   	List<PromotionVO> list2 = svc.bookMarkAlarm(id);   //홍보북마크 알림
	    MemberVO vo =svc.myInfo(id);
	    model.addAttribute("user",vo);
	   	model.addAttribute("list",list);
		model.addAttribute("page", page);
		model.addAttribute("type", type);
		model.addAttribute("key", key);
	    model.addAttribute("list2",list2);
		return "/members/bookmark/videoBookmark";
	}
	
	
	//recodes bookmark 페이지 이동
	@RequestMapping(value="/bookmarkRecodes", method=RequestMethod.GET)
	public String getRecodesList(@RequestParam(value="page", defaultValue="1")int page,
			@RequestParam(value="key", required=false)String key,
	   		@RequestParam(value="type", required=false)String type, Model model, HttpSession session)
	{
		String id=(String)session.getAttribute("myid");
		model.addAttribute("user", svc.getUser(id));      //로그인된 유저의 프로필사진(정보) 가져오기
	   	List<RecodeVO>list=svc.getBookmarkRecodeList(key,type,page,id);
        List<PromotionVO> list2 = svc.bookMarkAlarm(id);    //홍보북마크 알림
	    MemberVO vo =svc.myInfo(id);
	    model.addAttribute("user",vo);
	   	model.addAttribute("list",list);	
		model.addAttribute("page", page);
		model.addAttribute("type", type);
		model.addAttribute("key", key);
		model.addAttribute("list2",list2);
		return "/members/bookmark/recodesBookmark";
	}
		
	
	
	
	  //홍보 북마크 리스트
	   @RequestMapping(value="/bookmarkPromotion", method=RequestMethod.GET)
	   public String getBookmarkPromotionList(@RequestParam(value="page", defaultValue="1")int page,
	         @RequestParam(value="key", required=false)String key,
	          @RequestParam(value="type", required=false)String type, Model model, HttpSession session)
	   {
	      String id=(String)session.getAttribute("myid");
	      model.addAttribute("user", svc.getUser(id));      //로그인된 유저의 프로필사진(정보) 가져오기
	      List<PromotionVO>list=svc.getBookmarkPromotionList(key,type,page, id);
	      List<PromotionVO> list2 = svc.bookMarkAlarm(id);    //홍보북마크 알림
	      MemberVO vo =svc.myInfo(id);
	      model.addAttribute("user",vo);
	      model.addAttribute("list",list);
	      model.addAttribute("page", page);
	      model.addAttribute("type", type);
	      model.addAttribute("key", key);
	      model.addAttribute("list2",list2);
	      return "/members/bookmark/promotionBookmark";
	   }
	   
	   
	
	///////////////////////////////////////////////////////데헷
	   
	   
		@RequestMapping(value="/myInfo")
		public String myPage(@RequestParam("id") String id,Model model,MemberVO vo) {
			vo.setId(id);
			model.addAttribute("user",svc.myInfo(vo.getId()));
			return "members/myPage";
		}
		
		@RequestMapping(value="/updateForm",method = RequestMethod.GET)
		public String updateForm(@RequestParam("num") int num,Model model,MemberVO vo, HttpSession session) {
			MemberVO vo1 = svc.myInfo2(num);
		      String id=(String)session.getAttribute("myid");
		      model.addAttribute("user", svc.getUser(id));      //로그인된 유저의 프로필사진(정보) 가져오기
			model.addAttribute("info",vo1);
			model.addAttribute("num",num);
			return "members/updateForm";
		}
		
		@RequestMapping(value="/updateInfo")
		@ResponseBody
		public Map<String,Boolean> myPage(Model model,MemberVO vo,BindingResult result) {
			Map<String,Boolean> map = new HashMap<String,Boolean>();
			svc.update(vo,result); //디비업데이트
			svc.fileSave(vo);  //하드에저장
//			map.put("result",true);
			return map;
		}
		
		@RequestMapping(value="/pwdUpdate") 
		public String pwdUpdate(Model model,HttpSession session,@RequestParam("num") int num) {
		
		      String id=(String)session.getAttribute("myid");
		      model.addAttribute("user", svc.getUser(id)); 
		      model.addAttribute("num",num); //로그인된 유저의 프로필사진(정보) 가져오기
			return "members/pwdUpdate";
		}
		
		@RequestMapping(value="/pwdUpdate2",  method = RequestMethod.POST) //마이페이지에서 비밀번호변경
		@ResponseBody
		public Map<String,Boolean> pwdUpdate2(Model model,MemberVO vo) {
			Map<String,Boolean> map = new HashMap<String,Boolean>();
			boolean result = svc.pwdCheck(vo);
			map.put("result", result);
			return map;
		}



		//회원탈퇴
		@RequestMapping(value="/deletAccount")   //탈퇴폼으로 이동
		public String deletAccount(Model model,HttpSession session,@RequestParam("num") int num) {
	
		      String id=(String)session.getAttribute("myid");
		      model.addAttribute("user", svc.getUser(id));      //로그인된 유저의 프로필사진(정보) 가져오기
		      model.addAttribute("num",num);      //로그인된 유저의 프로필사진(정보) 가져오기
			return "members/deletAccount";
		}
		
		@RequestMapping(value="/deleteAccount2")
		@ResponseBody
		public Map<String,Boolean> deleteAccount2(Model model,MemberVO vo) {
			Map<String,Boolean> map = new HashMap<String,Boolean>();
			boolean result = svc.deleteAccount(vo);
			map.put("result", result);
			return map;
		}
		
		
		
		////////////////////내가올린비디오
		   @RequestMapping(value="/myLoadVideo", method=RequestMethod.GET)
		   public String myLoadVideo(@RequestParam("num") int num,@RequestParam(value="page", defaultValue="1")int page,
				   @RequestParam(value="key", required=false)String key,  @RequestParam(value="type", required=false)String type,  Model model,VideoVO vo,HttpSession session)
		   {
			   String id=(String)session.getAttribute("myid");
			   model.addAttribute("user", svc.getUser(id));      //로그인된 유저의 프로필사진(정보) 가져오기
			  MemberVO mvo =svc.myInfo2(num);
			  vo.setAuthor(mvo.getId());
		      List<VideoVO> list= svc.getMyLoadVideoList(key,type,page,vo);
		      List<PromotionVO> list2 = svc.bookMarkAlarm(vo.getAuthor());   //홍보북마크 알림
		      model.addAttribute("user",mvo);
		      model.addAttribute("list",list);
		      model.addAttribute("page", page);
		      model.addAttribute("type", type);
		      model.addAttribute("key", key);
		      model.addAttribute("list2",list2);
		      return "/members/myloadVideo/myLoadVideo";
		   }
		   
		   @RequestMapping(value="/myLoadVideo2", method=RequestMethod.POST)
		   public String myLoadVideo2(@RequestParam(value="page", defaultValue="1")int page,@RequestParam(value="key", required=false)String key,  
				   						@RequestParam(value="type", required=false)String type,  Model model,VideoVO vo)
		   {
		      List<VideoVO> list= svc.getMyLoadVideoList(key,type,page,vo);
		      model.addAttribute("list",list);
		      return "/members/myloadVideo/myLoadVideo2";
		   }
		   

		   ////////////////내가올린 오디오
		   @RequestMapping(value="/myLoadAudio")
		   public String myLoadAudio(@RequestParam("num") int num, @RequestParam(value="page", defaultValue="1") int page, 
				   						@RequestParam(value="key", required=false) String key,  @RequestParam(value="type", required=false) String type,  
				   						Model model, RecodeVO vo,HttpSession session)
		   {
				String id=(String)session.getAttribute("myid");
				model.addAttribute("user", svc.getUser(id));      //로그인된 유저의 프로필사진(정보) 가져오기
			  MemberVO mvo =svc.myInfo2(num);
			  vo.setAuthor(mvo.getId());
		      List<RecodeVO> list= svc.getMyLoadAudioList(key,type,page,vo);
		      List<PromotionVO> list2 = svc.bookMarkAlarm(vo.getAuthor());   //홍보북마크 알림
		      model.addAttribute("user",mvo);
		      model.addAttribute("list",list);
		      model.addAttribute("page", page);
		      model.addAttribute("type", type);
		      model.addAttribute("list2",list2);
		      return "/members/myloadAudio/myLoadAudio";
		   }
		   @RequestMapping(value="/myLoadAudio2" ,method=RequestMethod.POST)
		   public String myLoadAudio2(@RequestParam(value="page", defaultValue="1") int page, @RequestParam(value="key", required=false) String key,  
				   						@RequestParam(value="type", required=false) String type,  Model model, RecodeVO vo)
		   {
		      List<RecodeVO> list= svc.getMyLoadAudioList(key,type,page,vo);
		      model.addAttribute("list",list);
		      return "/members/myloadAudio/myLoadAudio2";
		   }
		   

		   
			////////////////////내가올린홍보
		   @RequestMapping(value="/myLoadPromotion", method=RequestMethod.GET)
		   public String myLoadPromotion(@RequestParam("num") int num,@RequestParam(value="page", defaultValue="1")int page,
				   							@RequestParam(value="key", required=false)String key,  @RequestParam(value="type", required=false)String type,  
				   							Model model,PromotionVO vo,HttpSession session)
		   {

				String id=(String)session.getAttribute("myid");
				model.addAttribute("user", svc.getUser(id));      //로그인된 유저의 프로필사진(정보) 가져오기
			  MemberVO mvo =svc.myInfo2(num);
			  vo.setAuthor(mvo.getId());
		      List<PromotionVO> list= svc.getMyLoadPromotionList(key,type,page,vo);
		      List<PromotionVO> list2 = svc.bookMarkAlarm(vo.getAuthor());   //홍보북마크 알림
		      model.addAttribute("user",mvo);
		      model.addAttribute("list",list);
		      model.addAttribute("page", page);
		      model.addAttribute("type", type);
		      model.addAttribute("key", key);
		      model.addAttribute("list2",list2);
		      return "/members/myloadPromotion/myLoadPromotion";
		   }
		   
		   @RequestMapping(value="/myLoadPromotion2" ,method=RequestMethod.POST)
		   public String myLoadPromotion2(@RequestParam(value="page", defaultValue="1") int page, @RequestParam(value="key", required=false) String key,  
				   							@RequestParam(value="type", required=false) String type,  Model model, PromotionVO vo)
		   {
		      List<PromotionVO> list= svc.getMyLoadPromotionList(key,type,page,vo);
		      model.addAttribute("list",list);
		      System.out.println(list.size());
		      return "/members/myloadPromotion/myLoadPromotion2";
		   }
	

		   
		   
		   
		   

			//신고
		    @RequestMapping(value="/report", method=RequestMethod.POST) 
		    @ResponseBody
		    public String report(ManagerVO vo, Model model) {  
		    	System.out.println("넘어와요:"+vo.getReportcontents());
		    	System.out.println("타입:"+vo.getReporttype());
		       JSONObject jobj = new JSONObject();
		       if(svc.reportVideo(vo)){
		            jobj.put("result", true);
		       }
		       else {
		          jobj.put("result", false);
		       }
		       return jobj.toJSONString();
		    }
		   
		
		   
		   
		   
		   
		   
	
}
