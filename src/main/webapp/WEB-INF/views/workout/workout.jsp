<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Workout Request</title>
</head>
<body>
<h2>Workout Request Details</h2>
<table>
    <tr>
        <td>Part:</td>
        <td><c:out value="${workout.part}" /></td>
    </tr>
    <tr>
        <td>Set Count:</td>
        <td><c:out value="${workout.setCount}" /></td>
    </tr>
    <tr>
        <td>Weight:</td>
        <td><c:out value="${workout.weight}" /></td>
    </tr>
    <tr>
        <td>Count:</td>
        <td><c:out value="${workout.count}" /></td>
    </tr>
    <tr>
        <td>Date:</td>
        <td><fmt:formatDate value="${workout.date}" pattern="yyyy-MM-dd" /></td>
    </tr>
</table>
</body>
</html>
