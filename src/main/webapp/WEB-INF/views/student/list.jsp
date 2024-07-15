<%--
  Created by IntelliJ IDEA.
  User: khoadev
  Date: 15/7/24
  Time: 17:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Student List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Home</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
                aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/student">Student</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Teacher</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Class</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<a href="${pageContext.request.contextPath}/student/create" methods="get">
    <button class="btn btn-primary mt-4">Create</button>
</a>
<table class="table table-hover">
    <thead>
    <tr>
        <th>Order</th>
        <th>Name</th>
        <th>Address</th>
        <th>Point</th>
        <th>Student type</th>
        <th>Action</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="student" items="${students}" varStatus="order">
    <tr>
        <td>${order.count}</td>
        <td>${student.name}</td>
        <td>${student.address}</td>
        <td>${student.score}</td>
        <td>
            <c:choose>
                <c:when test="${student.score >=8}">Học sinh giỏi</c:when>
                <c:when test="${student.score >=6.5}">Học sinh khá</c:when>
                <c:when test="${student.score >=5}">Học sinh trung bình</c:when>
                <c:otherwise>Học sinh yếu</c:otherwise>
            </c:choose>
        </td>
        <td>
            <a href="/student/update/${student.id}"><button class="btn btn-warning">Update</button></a>
            <button class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#deleteModal${student.id}">Delete
            </button>
            <div class="modal fade" id="deleteModal${student.id}" tabindex="-1" aria-labelledby="exampleModalLabel"
                 aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Delete student</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            Do you want to delete the student whose name is ${student.name}?
                            <p style="color: red">This action cannot be undone!!!!!</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                            <form method="post" action="${pageContext.request.contextPath}/students?action=delete">
                                <button type="submit" class="btn btn-primary">Yes</button>
                                <input type ="hidden" name="id" value="${student.id}">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </td>
        </c:forEach>
    </tbody>
</table>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</body>
</html>