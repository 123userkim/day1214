<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		
		String method = request.getMethod();
		int contentLength = request.getContentLength();
		String uri = request.getRequestURI();
		//프로젝트 이름만 나옴
		StringBuffer url = request.getRequestURL();
		//전체 다 나옴
		//
		String serverName = request.getServerName();
		int port = request.getServerPort();
		String ip = request.getRemoteAddr();
	%>
	이름:<%=name%><br>
	요청방식 : <%=method%><br>
	요청정보 길이 : <%=contentLength %><br>
	요청정보 URI : <%=uri %><br>
	요청정보 URL : <%=url %><br>
	서버 이름 : <%=serverName %><br>
	포트 번호 : <%=port %><br>
	ip 주소 : <%=ip %><br>
</body>
</html>