<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="test1" method="post">
 <input type="text" value="${count}"/>
  <input type="submit" value="증가"/>
</form>
<h2>증가값 : ${count}</h2>
</body>
</html>