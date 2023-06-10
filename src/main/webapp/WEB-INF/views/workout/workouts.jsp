<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

        .button {
            display: inline-block;
            padding: 8px 16px;
            background-color: #337ab7;
            color: #fff;
            border-radius: 4px;
            text-decoration: none;
            margin-top: 10px;
        }

        .completed {
            display: inline-block;
            width: 16px;
            height: 16px;
            border-radius: 50%;
            margin-right: 5px;
        }

        .completed.true {
            background-color: #00cc00;
        }

        .completed.false {
            background-color: #ff0000;
        }
    </style>
</head>
<body>
<h1>운동 정보 제출 결과 페이지입니다.</h1>
<hr>
<table border="1">
    <tr>
        <th>날짜</th>
        <th>세트 수</th>
        <th>무게</th>
        <th>횟수</th>
        <th>운동 부위</th>
        <th>완료 여부</th>
    </tr>
    <c:forEach var="workout" items="${workouts}">
        <tr>
            <td><a href="/workout/${workout.id}">${workout.date}</a></td>
            <td>${workout.setCount}</td>
            <td>${workout.weight}</td>
            <td>${workout.count}</td>
            <td>${workout.part}</td>
            <td>
                <span class="completed ${workout.done ? 'true' : 'false'}"></span>
                <c:choose>
                    <c:when test="${workout.done}">
                        성공!
                    </c:when>
                    <c:otherwise>
                        실패!
                    </c:otherwise>
                </c:choose>
            </td>
        </tr>
    </c:forEach>
</table>
<hr>
<a href="/" class="button">처음으로 돌아가기</a>
<a href="/workout" class="button">새로운 운동계획 등록</a>
</body>
</html>
