<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="2px">
<tr>
<th>EMPLOYEE NUMBER</th>
<th>EMPLOYEE NAME</th>
<th>SALARY</th>
<th>COMMISION</th>
<th>DEPARTMENT NUMBER</th>
<th>HIRE DATE</th>
<th>JOB</th>
</tr>
<sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" 
password="naveen" url="jdbc:mysql://localhost:3306/world" 
user="root"/>
<sql:query var="rs" dataSource="${ds}" startRow="0" maxRows="6">
select * from employees
</sql:query>
<c:forEach var="k" items="${rs.rows}">
 <tr>
 <td>   <c:out value="${k.EMPNO}"/>    </td>
 <td>	<c:out value="${k.ENAME}"/>    </td>
 <td> 	<c:out value="${k.SAL}"/>	   </td>
 <td> 	<c:out value="${k.COMM}"/>	   </td>
 <td> 	<c:out value="${k.DEPTNO}"/>   </td>
 <td> 	<c:out value="${k.HIREDATE}"/> </td>
 <td>	<c:out value="${k.JOB}"/>      </td>
 </tr>
</c:forEach>
</table>
</body>
</html>
