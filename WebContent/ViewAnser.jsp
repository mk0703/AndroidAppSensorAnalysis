<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page
 import="java.io.*,java.util.*,java.text.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="http://yui.yahooapis.com/pure/0.6.0/pure-min.css">
<title>結果表示</title>
</head>
<body>
<%@ include file="menu.jsp"%>
<br>
<br>
２点間P,Qの距離は:
	<%=request.getAttribute("anser")%>です<br><br>

	<form method="GET" action="InputDateServlet" accept-charset="UTF-8">
		<button type="submit" class="pure-button">戻る</button>
	</form>
</body>
</html>