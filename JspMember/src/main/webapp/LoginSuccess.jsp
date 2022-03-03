<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	//웹상에서 로그인했는지 안했는지 먼저 확인
	//session.setAttribute("idKey", mem_id);->LoginProc.jsp를 거쳐서 왔는지?
	String mem_id=(String)session.getAttribute("idKey");//Object->String
	System.out.println("LoginSuccess.jsp의 mem_id=>"+mem_id);//null?
%>
<html>
<head>
<meta charset="UTF-8">
<title>인증성공 페이지</title>
</head>
<body>
<%
 	if(mem_id!=null){//인증된 사람이라면
%>
<b><%=mem_id %></b>님 환영합니다.<p>
당신은 제한된 기능을 사용할 수가 있습니다.<p>
<a href="Logout.jsp">로그아웃</a>
<%} %>
</body>
</html>