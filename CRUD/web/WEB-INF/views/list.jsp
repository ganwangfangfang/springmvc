<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/5/25 0025
  Time: 下午 9:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title></title>
</head>
<body>
    <c:if test="${empty requestScope.employees }">
        没有任何员工信息！
    </c:if>
    <c:if test="${!empty requestScope.employees}">
        <table>
          <tr>
            <th>ID</th>
            <th>LastName</th>
            <th>Email</th>
            <th>Gender</th>
            <th>Department</th>
            <th>Edit</th>
            <th>Delete</th>
          </tr>
          <c:forEach items="${requestScope.employees}" var="emp">
            <tr>
                <td>${emp.id }</td>
                <td>${emp.lastName }</td>
                <td>${emp.email }</td>
                <td>${emp.gender == 0 ? 'Female' : 'Male' }</td>
                <td>${emp.department.departmentName }</td>
              <td><a href="">Edit</a></td>
              <td><a href="">Delete</a></td>
            </tr>
          </c:forEach>
        </table>
    </c:if>
<br><br>
    <a href="emp">Add New Employee</a>
</body>
</html>
