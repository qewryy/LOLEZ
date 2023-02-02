package com.lolez.webSock;

import java.util.ArrayList;

import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

public class EmailProveCheckHandler extends TextWebSocketHandler {

	private ArrayList<WebSocketSession> sessionList = new ArrayList<WebSocketSession>();

	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		System.out.println("웹소켓 접속");

		JsonObject jsonObj = new JsonObject();
		jsonObj.addProperty("type", "join");

		sessionList.add(session);

		// 접속된 클라이언트에게 인증 페이지에 접속 했다는 메세지 전송
		session.sendMessage(new TextMessage(new Gson().toJson(jsonObj)));

	}

	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		System.out.println("페이지에서 보낸 메세지 : " + message.getPayload());
		String[] messageVal = message.getPayload().split(",");
		System.out.println("messageVal[0] : " + messageVal[0]);
		System.out.println("messageVal[1] : " + messageVal[1]);
		String email = (String) session.getAttributes().get("Emailval");

		JsonObject jsonObj = new JsonObject();
		jsonObj.addProperty("type", "move");
		jsonObj.addProperty("domain", messageVal[0]);
		jsonObj.addProperty("useremail", email);

		for (WebSocketSession sl : sessionList) {
			if (!session.getId().equals(sl.getId())) {
				if (messageVal[1].equals(email)) {
					System.out.println(email + "님 인증 완료");
					sl.sendMessage(new TextMessage(new Gson().toJson(jsonObj)));
				}
			}
		}
	}

	
	  @Override public void afterConnectionClosed(WebSocketSession session,
	  CloseStatus status) throws Exception { 
		  System.out.println("웹소켓 해제");
		  sessionList.remove(session);

	  }
	 

}
