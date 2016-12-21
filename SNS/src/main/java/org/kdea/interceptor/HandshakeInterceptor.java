package org.kdea.interceptor;
 
import java.util.Map;
 
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.server.ServerHttpRequest;
import org.springframework.http.server.ServerHttpResponse;
import org.springframework.http.server.ServletServerHttpRequest;
import org.springframework.web.socket.WebSocketHandler;
import org.springframework.web.socket.server.support.HttpSessionHandshakeInterceptor;
  
public class HandshakeInterceptor extends HttpSessionHandshakeInterceptor{
  
    @Override
    public boolean beforeHandshake(ServerHttpRequest request,ServerHttpResponse response, WebSocketHandler wsHandler,
         Map<String, Object> attributes) throws Exception {     
    
        // ���� �Ķ���� ��, attributes �� ���� �����ϸ� ������ �ڵ鷯 Ŭ������ WebSocketSession�� ���޵ȴ�
        //System.out.println("Before Handshake");
          
          
        ServletServerHttpRequest ssreq = (ServletServerHttpRequest) request; //http request�� ���������� �ֱ����ؼ��� ��ȯ�� �������
        //System.out.println("URI:"+request.getURI());
  
        HttpServletRequest req =  ssreq.getServletRequest();
        HttpSession session = req.getSession();

        
        // HttpSession �� ����� �̿����� ���̵� �����ϴ� ���
        String id = (String)session.getAttribute("myid");
        
        
        attributes.put("userId", id); //������ �ڵ鷯�� ������ �����ϱ� ���ؼ��� ���⿡ ��Ƶ־���. �׷��� ������ session�� ���Ե�.
        
        
      //  System.out.println("HttpSession�� ����� id:"+id);
        
         
        return super.beforeHandshake(request, response, wsHandler, attributes);
    }
  
    @Override
    public void afterHandshake(ServerHttpRequest request,
            ServerHttpResponse response, WebSocketHandler wsHandler,
            Exception ex) {
       // System.out.println("After Handshake");
  
        super.afterHandshake(request, response, wsHandler, ex);
    }
  
}