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
    
        // 위의 파라미터 중, attributes 에 값을 저장하면 웹소켓 핸들러 클래스의 WebSocketSession에 전달된다
        //System.out.println("Before Handshake");
          
          
        ServletServerHttpRequest ssreq = (ServletServerHttpRequest) request; //http request를 웹소켓으로 주기위해서는 변환을 해줘야함
        //System.out.println("URI:"+request.getURI());
  
        HttpServletRequest req =  ssreq.getServletRequest();
        HttpSession session = req.getSession();

        
        // HttpSession 에 저장된 이용자의 아이디를 추출하는 경우
        String id = (String)session.getAttribute("myid");
        
        
        attributes.put("userId", id); //웹소켓 핸들러로 정보를 전달하기 위해서는 여기에 담아둬야함. 그러면 웹소켓 session에 들어가게됨.
        
        
      //  System.out.println("HttpSession에 저장된 id:"+id);
        
         
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