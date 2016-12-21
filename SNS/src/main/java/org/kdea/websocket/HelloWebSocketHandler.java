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
 
    // ������ �������� �ؽ�Ʈ �޽����� �����Ǹ� ȣ��Ǵ� �޼ҵ�
	//�޽����� ���� �ڵ����� ���ư���. �޽����� WebSocketMessage�� ����
	
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
            String str = String.format("(�ӼӸ�) ������ ��� %s �޽��� : %s", json.get("myId"),json.get("msg").toString());
            JSONObject msg = new JSONObject();
            msg.put("myId", str);
    		usermap.get(json.get("reId").toString()).sendMessage(new TextMessage(msg.toJSONString()));
    		usermap.get(json.get("myId").toString()).sendMessage(new TextMessage(msg.toJSONString()));
        }*/

 

    }
 
    // ������ ������ Ŭ���̾�Ʈ�� �����ϸ� ȣ��Ǵ� �޼ҵ�
    @Override
    public void afterConnectionEstablished(WebSocketSession session) throws Exception {
         
        super.afterConnectionEstablished(session);
       System.out.println("Ŭ���̾�Ʈ ���ӵ�");
        
        Map<String, Object> map = session.getAttributes();
        String id = (String)map.get("userId");
        
        //Ű���� ���̵� , value�� ����
        usermap.put(id, session);
       
        //���̵� ����Ʈ��
        userList.add(id);
    
        
        JSONObject usercnt = new JSONObject();
        usercnt.put("list", String.valueOf(userList.size()));
        usercnt.put("login", id+"���� ���� �ϼ̽��ϴ�");
       
		sendMsg(usercnt.toJSONString());

    }
 
    // Ŭ���̾�Ʈ�� ������ �����ϸ� ȣ��Ǵ� �޼ҵ�
    @Override
    public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
        super.afterConnectionClosed(session, status);
        
        Map<String, Object> map = session.getAttributes();
        String id = (String)map.get("userId");
        
        usermap.remove(id);
        userList.remove(id);

        
        JSONObject usercnt = new JSONObject();
        usercnt.put("list", String.valueOf(userList.size()));
        usercnt.put("userOUT", id+":���� ���� �ϼ̽��ϴ�.");
		sendMsg(usercnt.toJSONString());

    }
 
   // �޽��� ���۽ó� ���������� ������ �߻��� �� ȣ��Ǵ� �޼ҵ�
    @Override
    public void handleTransportError(WebSocketSession session,
            Throwable exception) throws Exception {
        super.handleTransportError(session, exception);
        System.out.println("���ۿ��� �߻�");
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