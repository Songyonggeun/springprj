<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="test2"  method="post">
<div>
	<select name="num" >
		<option value="one"${num=="one"?"selected":""}>one</option>
		<option value="two"${num=="two"?"selected":""}>two</option>
		<option value="three"${num=="three"?"selected":""}>three</option>
	</select>
</div>
<div>
	<input type="text"  value="${num}" size="10"/>
</div>
<div>
	<button type="submit">OK</button>
</div>
</form>

</body>
</html>