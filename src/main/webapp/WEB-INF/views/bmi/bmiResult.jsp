<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>BMI Records</title>
    <!-- Add your CSS stylesheets and JavaScript files here if needed -->
</head>
<body>
<h1>BMI Records</h1>
<table>
    <tr>
        <th>Date</th>
        <th>Weight</th>
        <th>Height</th>
        <!-- Add more columns if needed -->
    </tr>
    <c:forEach var="bmi" items="${bmi}">
        <tr>
            <td>${bmi.date}</td>
            <td>${bmi.weight}</td>
            <td>${bmi.height}</td>
            <!-- Add more columns if needed -->
        </tr>
    </c:forEach>
</table>
<a href="/bmi" class="button">새로운 운동계획 등록</a>

<!-- Add your graph visualization here using a JavaScript library like Chart.js -->
</body>
</html>
