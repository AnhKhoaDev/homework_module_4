<%--
  Created by IntelliJ IDEA.
  User: khoadev
  Date: 15/7/24
  Time: 16:57
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Student</title>
</head>
<body>
<h1>Edit Student</h1>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a href="${pageContext.request.contextPath}/student">Back to list</a>
</p>
<form method="post">
    <fieldset>
        <legend>Student information</legend>
        <table>
            <tr>
                <td>Name: </td>
                <td><input type="text" name="name" id="name" value="${student.name}">
                    <input type="hidden" name="id" id="id" value="${student.id}">
                </td>
            </tr>
            <tr>
                <td>Address: </td>
                <td><input type="text" name="address" id="address" value="${student.address}"></td>
            </tr>
            <tr>
                <td>Score: </td>
                <td><input type="text" name="score" id="score" value="${student.score}"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Edit student"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>