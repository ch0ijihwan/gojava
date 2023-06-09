<%--label.properties--%>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>운동  정보 제출 결과 페이지입니다.</h1>
<hr>
<table border="1">
    <tr>
<%--        <th><spring:message code="bookId"/></th>--%>
<%--        <th><spring:message code="bookName" /></th>--%>
<%--        <th><spring:message code="publisher" /></th>--%>
<%--        <th><spring:message code="price"/></th>--%>
<%--        <th><spring:message code="bookPart" /></th>--%>
<%--        <th><spring:message code="imageName" /></th>--%>
    </tr>
    <c:forEach var="workout" items="${workouts}">
        <tr>
            <td>${workout.part}</td>
            <td>${workout.setCount}</td>
            <td>${workout.weight}</td>
            <td>${workout.count}</td>
            <td>${workout.date}</td>
            <td>${workout.done}</td>
        </tr>
    </c:forEach>
</table>
<hr>
<%--<a href="/book">도서 정보 입력 페이지</a>--%>
<a href="/">처음으로 돌아가기</a>
</body>
</html>
