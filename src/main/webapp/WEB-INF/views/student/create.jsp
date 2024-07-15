<%--
  Created by IntelliJ IDEA.
  User: khoadev
  Date: 15/7/24
  Time: 16:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Create new customer</title>
    <style>
        .message {
            color: green;
        }
    </style>
</head>
<body>
<h1>Create new student</h1>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a href="${pageContext.request.contextPath}/student">Back to student list</a>
</p>
<form method="post">
    <fieldset>
        <legend>Student information</legend>
        <table>
            <tr>
                <td>Name:</td>
                <td><input type="text" name="name" id="name"/></td>
            </tr>
            <tr>
                <td>Address:</td>
                <td><input type="text" name="address" id="address"/></td>
            </tr>
            <tr>
                <td>Score:</td>
                <td><input type="text" name="score" id="mark"/></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Create new student"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
