<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<style>

  div.container { width: 310px; margin: 20px auto; }

  table { width: 300px; border-collapse: collapse; }

  thead tr { background-color: #eee; }

  td, th { border: 1px solid #aaa; padding: 5px; }

  td:nth-child(1) { background-color: #eee; }

</style> 

</head>

<body>



 

<h1>학생정보 등록 성공</h1>

 

<table>

  <tr>

    <td>학번</td>

    <td>${ student.studentNo }</td>

  </tr>

  <tr>

    <td>이름</td>

    <td>${ student.name }</td>

  </tr>

  <tr>

    <td>이메일</td>

    <td>${ student.email }</td>

  </tr>
	<td>전공 </td>
	<td>${student.departmentId }</td>
</table>

 


</body>

</html>