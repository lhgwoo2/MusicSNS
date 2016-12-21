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
	
	//video bookmark ������ �̵�
	@RequestMapping(value="/bookmarkVideo", method=RequestMethod.GET)
	public String getVideoList(@RequestParam(value="page", defaultValue="1")int page,
			@RequestParam(value="key", required=false)String key,
	   		@RequestParam(value="type", required=false)String type, Model model, HttpSession session)
	{
		String id=(String)session.getAttribute("myid");
		model.addAttribute("user", svc.getUser(id));      //�α��ε� ������ �����ʻ���(����) ��������
	   	List<VideoVO>list=svc.getBookmarkVideoList(key,type,page,id);
	   	List<PromotionVO> list2 = svc.bookMarkAlarm(id);   //ȫ���ϸ�ũ �˸�
	    MemberVO vo =svc.myInfo(id);
	    model.addAttribute("user",vo);
	   	model.addAttribute("list",list);
		model.addAttribute("page", page);
		model.addAttribute("type", type);
		model.addAttribute("key", key);
	    model.addAttribute("list2",list2);
		return "/members/bookmark/videoBookmark";
	}
	
	
	//recodes bookmark ������ �̵�
	@RequestMapping(value="/bookmarkRecodes", method=RequestMethod.GET)
	public String getRecodesList(@RequestParam(value="page", defaultValue="1")int page,
			@RequestParam(value="key", required=false)String key,
	   		@RequestParam(value="type", required=false)String type, Model model, HttpSession session)
	{
		String id=(String)session.getAttribute("myid");
		model.addAttribute("user", svc.getUser(id));      //�α��ε� ������ �����ʻ���(����) ��������
	   	List<RecodeVO>list=svc.getBookmarkRecodeList(key,type,page,id);
        List<PromotionVO> list2 = svc.bookMarkAlarm(id);    //ȫ���ϸ�ũ �˸�
	    MemberVO vo =svc.myInfo(id);
	    model.addAttribute("user",vo);
	   	model.addAttribute("list",list);	
		model.addAttribute("page", page);
		model.addAttribute("type", type);
		model.addAttribute("key", key);
		model.addAttribute("list2",list2);
		return "/members/bookmark/recodesBookmark";
	}
		
	
	
	
	  //ȫ�� �ϸ�ũ ����Ʈ
	   @RequestMapping(value="/bookmarkPromotion", method=RequestMethod.GET)
	   public String getBookmarkPromotionList(@RequestParam(value="page", defaultValue="1")int page,
	         @RequestParam(value="key", required=false)String key,
	          @RequestParam(value="type", required=false)String type, Model model, HttpSession session)
	   {
	      String id=(String)session.getAttribute("myid");
	      model.addAttribute("user", svc.getUser(id));      //�α��ε� ������ �����ʻ���(����) ��������
	      List<PromotionVO>list=svc.getBookmarkPromotionList(key,type,page, id);
	      List<PromotionVO> list2 = svc.bookMarkAlarm(id);    //ȫ���ϸ�ũ �˸�
	      MemberVO vo =svc.myInfo(id);
	      model.addAttribute("user",vo);
	      model.addAttribute("list",list);
	      model.addAttribute("page", page);
	      model.addAttribute("type", type);
	      model.addAttribute("key", key);
	      model.addAttribute("list2",list2);
	      return "/members/bookmark/promotionBookmark";
	   }
	   
	   
	
	///////////////////////////////////////////////////////����
	   
	   
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
		      model.addAttribute("user", svc.getUser(id));      //�α��ε� ������ �����ʻ���(����) ��������
			model.addAttribute("info",vo1);
			model.addAttribute("num",num);
			return "members/updateForm";
		}
		
		@RequestMapping(value="/updateInfo")
		@ResponseBody
		public Map<String,Boolean> myPage(Model model,MemberVO vo,BindingResult result) {
			Map<String,Boolean> map = new HashMap<String,Boolean>();
			svc.update(vo,result); //��������Ʈ
			svc.fileSave(vo);  //�ϵ忡����
//			map.put("result",true);
			return map;
		}
		
		@RequestMapping(value="/pwdUpdate") 
		public String pwdUpdate(Model model,HttpSession session,@RequestParam("num") int num) {
		
		      String id=(String)session.getAttribute("myid");
		      model.addAttribute("user", svc.getUser(id)); 
		      model.addAttribute("num",num); //�α��ε� ������ �����ʻ���(����) ��������
			return "members/pwdUpdate";
		}
		
		@RequestMapping(value="/pwdUpdate2",  method = RequestMethod.POST) //�������������� ��й�ȣ����
		@ResponseBody
		public Map<String,Boolean> pwdUpdate2(Model model,MemberVO vo) {
			Map<String,Boolean> map = new HashMap<String,Boolean>();
			boolean result = svc.pwdCheck(vo);
			map.put("result", result);
			return map;
		}



		//ȸ��Ż��
		@RequestMapping(value="/deletAccount")   //Ż�������� �̵�
		public String deletAccount(Model model,HttpSession session,@RequestParam("num") int num) {
	
		      String id=(String)session.getAttribute("myid");
		      model.addAttribute("user", svc.getUser(id));      //�α��ε� ������ �����ʻ���(����) ��������
		      model.addAttribute("num",num);      //�α��ε� ������ �����ʻ���(����) ��������
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
		
		
		
		////////////////////�����ø�����
		   @RequestMapping(value="/myLoadVideo", method=RequestMethod.GET)
		   public String myLoadVideo(@RequestParam("num") int num,@RequestParam(value="page", defaultValue="1")int page,
				   @RequestParam(value="key", required=false)String key,  @RequestParam(value="type", required=false)String type,  Model model,VideoVO vo,HttpSession session)
		   {
			   String id=(String)session.getAttribute("myid");
			   model.addAttribute("user", svc.getUser(id));      //�α��ε� ������ �����ʻ���(����) ��������
			  MemberVO mvo =svc.myInfo2(num);
			  vo.setAuthor(mvo.getId());
		      List<VideoVO> list= svc.getMyLoadVideoList(key,type,page,vo);
		      List<PromotionVO> list2 = svc.bookMarkAlarm(vo.getAuthor());   //ȫ���ϸ�ũ �˸�
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
		   

		   ////////////////�����ø� �����
		   @RequestMapping(value="/myLoadAudio")
		   public String myLoadAudio(@RequestParam("num") int num, @RequestParam(value="page", defaultValue="1") int page, 
				   						@RequestParam(value="key", required=false) String key,  @RequestParam(value="type", required=false) String type,  
				   						Model model, RecodeVO vo,HttpSession session)
		   {
				String id=(String)session.getAttribute("myid");
				model.addAttribute("user", svc.getUser(id));      //�α��ε� ������ �����ʻ���(����) ��������
			  MemberVO mvo =svc.myInfo2(num);
			  vo.setAuthor(mvo.getId());
		      List<RecodeVO> list= svc.getMyLoadAudioList(key,type,page,vo);
		      List<PromotionVO> list2 = svc.bookMarkAlarm(vo.getAuthor());   //ȫ���ϸ�ũ �˸�
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
		   

		   
			////////////////////�����ø�ȫ��
		   @RequestMapping(value="/myLoadPromotion", method=RequestMethod.GET)
		   public String myLoadPromotion(@RequestParam("num") int num,@RequestParam(value="page", defaultValue="1")int page,
				   							@RequestParam(value="key", required=false)String key,  @RequestParam(value="type", required=false)String type,  
				   							Model model,PromotionVO vo,HttpSession session)
		   {

				String id=(String)session.getAttribute("myid");
				model.addAttribute("user", svc.getUser(id));      //�α��ε� ������ �����ʻ���(����) ��������
			  MemberVO mvo =svc.myInfo2(num);
			  vo.setAuthor(mvo.getId());
		      List<PromotionVO> list= svc.getMyLoadPromotionList(key,type,page,vo);
		      List<PromotionVO> list2 = svc.bookMarkAlarm(vo.getAuthor());   //ȫ���ϸ�ũ �˸�
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
	

		   
		   
		   
		   

			//�Ű�
		    @RequestMapping(value="/report", method=RequestMethod.POST) 
		    @ResponseBody
		    public String report(ManagerVO vo, Model model) {  
		    	System.out.println("�Ѿ�Ϳ�:"+vo.getReportcontents());
		    	System.out.println("Ÿ��:"+vo.getReporttype());
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
