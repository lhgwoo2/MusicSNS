package org.kdea.websocket;
 

import java.io.IOException;
import java.util.*;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.JSONValue;
import org.springframework.web.socket.*;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.fasterxml.jackson.annotation.JsonFormat.Value;
 
public class HelloWebSocketHandler extends TextWebSocketHandler {
 
    // 웹소켓 서버측에 텍스트 메시지가 접수되면 호출되는 메소드
	//메시지가 오면 자동으로 돌아간다. 메시지가 WebSocketMessage에 들어간다
	
	static Map<String,WebSocketSession> usermap = new HashMap<String,WebSocketSession>();
	static List<String> userList = new ArrayList<String>();


    @Override
    public void handleMessage(WebSocketSession session, WebSocketMessage<?> message) throws Exception {
        String payloadMessage = (String) message.getPayload(); 
        
        JSONObject json = (JSONObject) JSONValue.parse(payloadMessage);
        String str = String.format("%s :  %s", json.get("myId"),json.get("msg").toString());
        JSONObject msg = new JSONObject();
        msg.put("msg", str);
        sendMsg(msg.toJSONString());
        
/*        if(json.get("myId")!=null){
            String str = String.format("(귓속말) 보내는 사람 %s 메시지 : %s", json.get("myId"),json.get("msg").toString());
            JSONObject msg = new JSONObject();
            msg.put("myId", str);
    		usermap.get(json.get("reId").toString()).sendMessage(new TextMessage(msg.toJSONString()));
    		usermap.get(json.get("myId").toString()).sendMessage(new TextMessage(msg.toJSONString()));
        }*/

 

    }
 
    // 웹소켓 서버에 클라이언트가 접속하면 호출되는 메소드
    @Override
    public void afterConnectionEstablished(WebSocketSession session) throws Exception {
         
        super.afterConnectionEstablished(session);
       System.out.println("클라이언트 접속됨");
        
        Map<String, Object> map = session.getAttributes();
        String id = (String)map.get("userId");
        
        //키값에 아이디 , value에 세션
        usermap.put(id, session);
       
        //아이디를 리스트로
        userList.add(id);
    
        
        JSONObject usercnt = new JSONObject();
        usercnt.put("list", String.valueOf(userList.size()));
        usercnt.put("login", id+"님이 입장 하셨습니다");
       
		sendMsg(usercnt.toJSONString());

    }
 
    // 클라이언트가 접속을 종료하면 호출되는 메소드
    @Override
    public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
        super.afterConnectionClosed(session, status);
        
        Map<String, Object> map = session.getAttributes();
        String id = (String)map.get("userId");
        
        usermap.remove(id);
        userList.remove(id);

        
        JSONObject usercnt = new JSONObject();
        usercnt.put("list", String.valueOf(userList.size()));
        usercnt.put("userOUT", id+":님이 퇴장 하셨습니다.");
		sendMsg(usercnt.toJSONString());

    }
 
   // 메시지 전송시나 접속해제시 오류가 발생할 때 호출되는 메소드
    @Override
    public void handleTransportError(WebSocketSession session,
            Throwable exception) throws Exception {
        super.handleTransportError(session, exception);
        System.out.println("전송오류 발생");
    }
    
    public void sendMsg(String str) throws Exception{
		Set<String> keySet = usermap.keySet();
		Iterator<String> it = keySet.iterator();
		while (it.hasNext()) {
			String key = it.next();
			usermap.get(key).sendMessage(new TextMessage(str));
		}
    }
}