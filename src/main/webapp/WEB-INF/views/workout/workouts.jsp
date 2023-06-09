<%--label.properties--%>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <title>Title</title>
    <style>
        /* CSS 스타일을 여기에 추가합니다 */
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }

        h1 {
            color: #333;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #eee;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f5f5f5;
        }

        a {
            color: #337ab7;
            text-decoration: none;
        }
    </style>
</head>
<body>
<h1>운동 정보 제출 결과 페이지입니다.</h1>
<hr>
<table border="1">
    <tr>
        <th>운동 부위</th>
        <th>세트 수</th>
        <th>무게</th>
        <th>횟수</th>
        <th>날짜</th>
        <th>완료 여부</th>
    </tr>
    <c:forEach var="workout" items="${workouts}">
        <tr>
            <td><a href="/workout/${workout.id}">${workout.part}</a></td>
            <td>${workout.setCount}</td>
            <td>${workout.weight}</td>
            <td>${workout.count}</td>
            <td>${workout.date}</td>
            <td>${workout.done}</td>
        </tr>
    </c:forEach>
</table>
<hr>
<a href="/">처음으로 돌아가기</a>
</body>
</html>
