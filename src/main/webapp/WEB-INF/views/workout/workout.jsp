<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Workout Request</title>
    <style>
        /* CSS 스타일을 여기에 추가합니다 */
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }

        h2 {
            color: #333;
        }

        table {
            border-collapse: collapse;
            margin-top: 20px;
        }

        td {
            padding: 8px;
        }

        td:first-child {
            font-weight: bold;
            text-align: right;
        }

        td:last-child {
            text-align: left;
        }
    </style>
</head>
<body>
<h2>Workout Request Details</h2>
<table>
    <tr>
        <td>Part:</td>
        <td><c:out value="${workout.getPart()}"/></td>
    </tr>
    <tr>
        <td>Set Count:</td>
        <td><c:out value="${workout.getSetCount()}"/></td>
    </tr>
    <tr>
        <td>Weight:</td>
        <td><c:out value="${workout.getWeight()}"/></td>
    </tr>
    <tr>
        <td>Count:</td>
        <td><c:out value="${workout.getCount()}"/></td>
    </tr>
    <tr>
        <td>Date:</td>
        <td><c:out value="${workout.getDate()}"/></td>
    </tr>
</table>
</body>
</html>
