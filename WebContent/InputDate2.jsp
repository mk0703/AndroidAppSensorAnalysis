<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page
	import="java.io.*,java.util.*,java.text.*"%>
<% String errorMessage = (String) request.getAttribute("errorMessage");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="http://yui.yahooapis.com/pure/0.6.0/pure-min.css">
<title>2点間の距離の測定(3次元)</title>
</head>
<body>
<%@ include file="menu.jsp"%>
<% if(errorMessage != null){ %>
	<font color="red">
		<% out.println(errorMessage);%>
	</font>
	<% }%>
	<br>
<form method="POST" action="InputDate2Servlet" accept-charset="UTF-8"
			class="pure-form">
<fieldset>
<div class="pure-control-group">
				<label for="pointP_X">点P:X</label> <input name="pointP_X" id="pointP_X"
					type="text">
				<label for="pointP_Y">点P:Y</label> <input name="pointP_Y" id="pointP_Y"
					type="text">
				<label for="pointP_Z">点P:Z</label> <input name="pointP_Z" id="pointP_Z"
					type="text">
</div>
<br>
<br>
<div class="pure-control-group">
				<label for="pointQ_X">点Q:X</label> <input name="pointQ_X"
					id="pointQ_X" type="text">
				<label for="pointQ_Y">点Q:Y</label> <input name="pointQ_Y"
					id="pointQ_Y" type="text">
				<label for="pointQ_Z">点Q:Z</label> <input name="pointQ_Z"
					id="pointQ_Z" type="text">
				<br>
				<br>

</div>
<div class="pure-controls">
				&nbsp;
				<button type="submit" class="pure-button pure-button-primary">実行</button>
				&nbsp;&nbsp;
				<button type="reset" class="pure-button pure-button-primary">リセット</button>
			</div>
</fieldset>
</body>
</html>