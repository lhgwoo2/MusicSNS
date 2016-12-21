package org.kdea.members;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;
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
@RequestMapping("/members/")
public class MemberController {

	@Autowired
	MemberService svc ;
    @Autowired
    private EmailService emailService;
    
	// �α��� �ϱ�
	@RequestMapping("login")
	public String login(Model model) {
		return "members/login";
	}
	//ȸ������ �� ���� 
	@RequestMapping("join")
	public String List(Model model) {
		return "members/join";
	}

    @RequestMapping(value = "email", method = RequestMethod.POST)
    @ResponseBody
    public Map<String,Boolean> sendMail(@RequestParam("receiver") String receiver, HttpSession session) throws Exception {
    	Map<String,Boolean> map = new HashMap<String,Boolean>();
        MemberVO email = new MemberVO();
        
        boolean emailCheckBool= svc.emailCheck(receiver);
        if(emailCheckBool){
        	map.put("sent", false);
        	return map;
        }
        
        ServletContext application = session.getServletContext(); 
        String subject = "ȸ������ ���� ���� �Դϴ�";
        
        String sId = session.getId();
        application.setAttribute(sId, receiver);
        String content = "<a href='http://192.168.2.4:8088/SNS/members/auth?auth="+sId+"'>�̸���Ȯ��</a>";
         
        email.setReceiver(receiver);
        email.setSubject(subject);
        email.setContent(content);
        boolean result = emailService.sendMail(email);
       
        map.put("sent", result);
        
        return map;
    }
    
    
    @RequestMapping(value="auth", method = RequestMethod.GET)
    public String check(@RequestParam("auth") String auth, HttpSession session,Model model) {

    	ServletContext application = session.getServletContext();
    	String email = (String)application.getAttribute(auth);
 
    	if(email!=null) {
    		model.addAttribute("email", email);
    		model.addAttribute("auth","authenticated");
    	}
    	return "members/join";
    }
    
    @RequestMapping(value="idCheck",  method = RequestMethod.POST)
    @ResponseBody
    public Map<String,Integer> idCheck(MemberVO vo){
    	int result = Integer.parseInt(svc.idCheck(vo));
        Map<String,Integer> map = new HashMap<String,Integer>();
    	if(result==0) {
    		map.put("result", 0);
    		
    	}else{
    		map.put("result",1);
    	}return map;
    }
    
  	//���� �Է��� ������ ajax �� �Ѿ���� ���
	@RequestMapping(value="add",  method = RequestMethod.POST)
	@ResponseBody
	public Map<String,Boolean> add(MemberVO vo,BindingResult result) {
		Map<String,Boolean> map = new HashMap<String, Boolean>();
		map.put("s",svc.add(vo));
		return map;
	}
	
	
	
	
	///////////////////////////////12�� 12�� ����

	//idã��
	@RequestMapping(value="searchId")
	public String searchId(Model model,MemberVO vo) {
		return "members/searchId";
	}
	
	//���̵� ã��
	@RequestMapping(value="searchIdAjax",  method = RequestMethod.POST)
	@ResponseBody
	public Map<String,Boolean> searchIdAjax(Model model,MemberVO vo, HttpSession session) {

		Map<String,Boolean> map = new HashMap<String,Boolean>();
		boolean result = svc.searchIdAjax(vo,session);
		map.put("result", result);
		return map;
	}
	
	//pwdã��
	@RequestMapping(value="searchPwd")
	public String searchPwd(Model model,MemberVO vo) {
		return "members/searchPwd";
	}

	//��й�ȣ ã��
	@RequestMapping(value="searchPwdAjax",  method = RequestMethod.POST)  //id, email Ȯ��
	@ResponseBody
	public Map<String,Boolean> searchPwdAjax(Model model,MemberVO vo,HttpSession session) {
		Map<String,Boolean> map = new HashMap<String,Boolean>();
		boolean result = svc.searchPwdAjax(vo,session);
		map.put("result", result);
		return map;
	}
	
	
	//��й�ȣ �̸��� ���� ��ģ �� ��й�ȣ ã��
	@RequestMapping(value="searchPwdUpdate")   //pwdã�⿡�� ��й�ȣ����
	public String searchPwdUpdate(@RequestParam("auth") String auth, HttpSession session,Model model) {
    	ServletContext application = session.getServletContext();
    	String id = (String)application.getAttribute(auth);
    	if(id!=null) {
    		model.addAttribute("id", id);
    		model.addAttribute("auth","authenticated");
    	}
		return "members/searchPwdUpdate";
	}
	
	@RequestMapping(value="searchPwdUpdateAjax")  
	@ResponseBody
	public Map<String,Boolean> searchPwdUpdateAjax(Model model,MemberVO vo) {
		Map<String,Boolean> map = new HashMap<String,Boolean>();
		if(0<svc.newPwd(vo)){
			map.put("result", true);
		}else{
			map.put("result", false);
		}
		return map;
	}	
	


	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
