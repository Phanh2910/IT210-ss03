<%--
  Created by IntelliJ IDEA.
  User: OS
  Date: 07/04/2026
  Time: 7:15 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee List</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
            max-width: 900px;
            margin: auto;
        }

        th, td {
            border: 1px solid #666;
            padding: 8px 12px;
            text-align: left;
        }

        th {
            background: #f0f0f0;
        }
    </style>
</head>
<body>
<h2 style="text-align: center">Danh sách nhân viên phòng Đào tạo</h2>

<table>
    <thead>
    <tr>
        <th style="text-align: center">ID</th>
        <th>Họ và tên</th>
        <th>Phòng ban</th>
        <th>Lương</th>
        <th>Đánh giá</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="employee" items="${employees}">
        <tr>
            <td style="text-align: center">${employee.id}</td>
            <td>${employee.fullName}</td>
            <td>${employee.department}</td>
            <td>${employee.salary}</td>
            <td>
                <c:choose>
                    <c:when test="${employee.salary >= 10000}">Mức lương cao</c:when>
                    <c:otherwise>Mức lương cơ bản</c:otherwise>
                </c:choose>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
