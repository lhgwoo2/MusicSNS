package org.kdea.promotion;

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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/promotion")
public class PromotionController {

	@Autowired
	private PromotionService svc;
	
    @Autowired
    private PromotionValidator promotionValidator;
	
	
	//ȫ�� ����Ʈ
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public String getList(@RequestParam(value="page", defaultValue="1")int page,
			@RequestParam(value="key", required=false)String key,
    		@RequestParam(value="type", required=false)String type, Model model, HttpSession session)
	{
		String id=(String)session.getAttribute("myid");
		model.addAttribute("user", svc.getUser(id));		//�α��ε� ������ �����ʻ���(����) ��������
    	List<PromotionVO>list=svc.getList(key,type,page,id);
    	model.addAttribute("list",list);
		model.addAttribute("page", page);
		model.addAttribute("type", type);
		model.addAttribute("key", key);
		return "/promotion/promotionList";
	}
	
	
	//��������
	@RequestMapping(value="/selectMap", method=RequestMethod.GET)
	public String selectMap(Model model)
	{
		return "/promotion/promotionSelectMap";
	}
	
	
	
	//������ �۳���
	@RequestMapping(value="/desc", method=RequestMethod.GET)
	public String getDesc(PromotionVO vo, Model model, HttpSession session)
	{
		String id=(String)session.getAttribute("myid");
		//vo.setPage(1);
		//List<PromotionVO> list = svc.firstComment(vo);
		
		model.addAttribute("user", svc.getUser(id));		//�α��ε� ������ �����ʻ���(����) ��������
		model.addAttribute("vo", svc.getDesc(vo));
		//model.addAttribute("list", list);
		//model.addAttribute("listsize", list.size());
		return "/promotion/promotionDesc";
	}
	
	
	//��ۻ����� ��������
	@RequestMapping(value="/getcommentsize", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Integer> getCommentSize(PromotionVO vo, Model model)
	{	
		List<PromotionVO> list = svc.getcomment(vo);
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("listcnt",list.size());
		return map;
	}
	
	
	//��� ��������
	@RequestMapping(value="/getcomment", method=RequestMethod.POST)
	public String getComment(PromotionVO vo, Model model)
	{	
		List<PromotionVO> list = svc.getcomment(vo);
		model.addAttribute("list",list);
		return "/promotion/moreComment";
	}
	
	
	//��� �Է��ϱ�
	@RequestMapping(value="/setcomment", method=RequestMethod.POST)
	public String setComment(PromotionVO vo, Model model)
	{	
		PromotionVO vo2 = svc.setcomment(vo);
		model.addAttribute("vo",vo2);
		if(vo2.getCommentref()==0)
			return "/promotion/basicComment";
		else
			return "/promotion/secComment";
		
	}
	
	//ȫ�� �Խù� ����
	@RequestMapping(value="/deletepromotion", method=RequestMethod.POST)
	@ResponseBody
	public Map<String,Boolean> deletePromotion(PromotionVO vo)
	{	
		   Map<String,Boolean> map = new HashMap<String,Boolean>();
		
	      if(svc.deletePromotion(vo)){
	         map.put("ok", true);
	      }else{
	         map.put("ok", false);
	      }
	      return map;
	}
		
	
	
	///////////�ȳ��ڷ�
	
	
	//Promotion �۾��� ������ �̵�
    @RequestMapping(value="/upload", method=RequestMethod.GET)
    public String moveUploadPromotion( Model model, HttpSession session){
    	String id=(String)session.getAttribute("myid");
		model.addAttribute("user", svc.getUser(id));		//�α��ε� ������ �����ʻ���(����) ��������
       return "promotion/uploadPromotion";
    }
    
    
    // �帣/����/��¥ ���� ���������� �۾��� �������� ���ư���
    @RequestMapping(value="/returnUploadPromotion", method=RequestMethod.GET)
    public String returnUploadPromotion( Model model, HttpSession session){
    	String id=(String)session.getAttribute("myid");
		model.addAttribute("user", svc.getUser(id));		//�α��ε� ������ �����ʻ���(����) ��������
       return "promotion/uploadPromotion";
    }
    
    //ȫ���� ���ε�
    @RequestMapping(value="/uploadPromotion", method=RequestMethod.POST)  
    public String uploadPromotion(PromotionVO vo, BindingResult result) {  
      promotionValidator.validate(vo, result);  
       if (result.hasErrors()) {
           System.out.println("�۾��� ����");
          return "promotion/uploadPromotion";  
       }
       System.out.println(vo.getAuthor()+", "+vo.getTitle()+", "+vo.getContents()+", "+vo.getGenre()+", "+vo.getRegion()+", "+vo.getOpeningdaystr()+", "+vo.getEnddaystr()+", "+vo.getDetailRegion());
       System.out.println("��");
       if(svc.uploadPromotion(vo)) return "redirect:list";  
       else return "redirect:uploadPromotion";   
    }
    
    //ȫ���� ���������� �̵�
    @RequestMapping(value="/editPromotion", method=RequestMethod.GET)
    public String editPromotion(PromotionVO vo, Model model,HttpSession session){
    	String id=(String)session.getAttribute("myid");
		model.addAttribute("user", svc.getUser(id));		//�α��ε� ������ �����ʻ���(����) ��������
    	vo=svc.getEdit(vo);
    	model.addAttribute("vo", vo);
       return "promotion/editPromotion";
    }
    
    //ȫ���� ����Ȯ��
    @RequestMapping(value="/editConfirmPromotion", method=RequestMethod.POST)
    public String editConfirmPromotion(PromotionVO vo, BindingResult result, Model model){
    	 promotionValidator.validate(vo, result);  
         if (result.hasErrors()) {
            return "promotion/editPromotion";  
         }
         System.out.println("��");
         if(svc.editPromotion(vo)) return "redirect:list";  
         else return "redirect:editPromotion";   
    }
    
    
    //�ϸ�ũ
    @RequestMapping(value="/mark", method=RequestMethod.POST)
    @ResponseBody
    public Map<String, Boolean> mark(PromotionVO vo){
       Map<String, Boolean> map = new HashMap<String,Boolean>();
       int re = svc.mark(vo);
       if(0<re){
    	   map.put("ok", true);
       }else{
    	   map.put("ok", false);
       }
       return map;
    }
    
    //�ϸ�ũ ����
    @RequestMapping(value="/markCancel", method=RequestMethod.POST)
    @ResponseBody
    public Map<String, Boolean> markCancel(PromotionVO vo){
       Map<String, Boolean> map = new HashMap<String,Boolean>();
       int re = svc.markCancel(vo);
       if(0<re){
    	   map.put("ok", true);
       }else{
    	   map.put("ok", false);
       }
       return map;
    }
    
    
    
        
    
    //12-8�� ����
 
    //��¥�� �˻� �������� �̵�
    @RequestMapping(value="/moveToSearchDate", method=RequestMethod.GET)
    public String moveToSearchDate(Model model,HttpSession session){
    	String id=(String)session.getAttribute("myid");
		model.addAttribute("user", svc.getUser(id));		//�α��ε� ������ �����ʻ���(����) ��������
       return "promotion/searchDate";
    }
    
    //�帣�� �˻� ������ �̵�
    @RequestMapping(value="/moveToSearchGenre", method=RequestMethod.GET)
    public String moveToSearchGenre(Model model,HttpSession session){
    	String id=(String)session.getAttribute("myid");
		model.addAttribute("user", svc.getUser(id));		//�α��ε� ������ �����ʻ���(����) ��������
       return "promotion/searchGenre";
    }   
    
	
    //��¥�� �˻�
    @RequestMapping(value="/openingday", method=RequestMethod.POST)
    public String openingday(PromotionVO vo,Model model){
       
          String[] b = vo.getAaa().split(". ");     
       String from = b[0]+"-"+b[1]+"-"+b[2]+" 00:00:00.0";
       java.sql.Timestamp d=java.sql.Timestamp.valueOf(from);
       vo.setOpeningday(d);
         List<PromotionVO> list = svc.openingday(vo);
      
         if(list.size()>0){
            
            model.addAttribute("list", list);
            model.addAttribute("ok", true);
         }else{
            model.addAttribute("ok", false);
         }    
       return "/promotion/search_ajax";
       
    }
	
	
    //�帣�� �˻�
    @RequestMapping(value="/searchGenre", method=RequestMethod.POST)
    public String searchGenre(PromotionVO vo,Model model){
       
       System.out.println(vo.getGenre());
       
         List<PromotionVO> list = svc.searchGenre(vo);
      
         if(list.size()>0){
            
            model.addAttribute("list", list);
            model.addAttribute("ok", true);
         }else{
            model.addAttribute("ok", false);
         }    
       return "/promotion/search_ajax";
       
    }
	
	
    
	
	
	
	
	
	
	
	
	
}
