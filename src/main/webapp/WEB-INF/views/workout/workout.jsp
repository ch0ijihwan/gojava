<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Workout Details</title>
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

        .button {
            display: inline-block;
            padding: 8px 16px;
            background-color: #337ab7;
            color: #fff;
            border-radius: 4px;
            text-decoration: none;
            margin-top: 10px;
        }
    </style>
</head>
<body>
<h2>Workout Details</h2>
<table>
    <tr>
        <td>Part:</td>
        <td><c:out value="${workout.part}"/></td>
    </tr>
    <tr>
        <td>Set Count:</td>
        <td><c:out value="${workout.setCount}"/></td>
    </tr>
    <tr>
        <td>Weight:</td>
        <td><c:out value="${workout.weight}"/></td>
    </tr>
    <tr>
        <td>Count:</td>
        <td><c:out value="${workout.count}"/></td>
    </tr>
    <tr>
        <td>Date:</td>
        <td><c:out value="${workout.date}"/></td>
    </tr>
</table>
<form id="complete-form" action="/workout/${workout.id}/done" method="post" style="display: none;"></form>
<button class="button" onclick="event.preventDefault(); document.getElementById('complete-form').submit();">완료 처리</button>
<a href="/workout/workouts" class="button">Workouts 목록으로 가기</a>

<script>
    window.addEventListener('load', function() {
        const completeForm = document.getElementById('complete-form');
        completeForm.addEventListener('submit', function(event) {
            event.preventDefault();
            fetch(completeForm.action, {
                method: 'POST'
            }).then(function() {
                location.href = '/workout/workouts';
            }).catch(function(error) {
                console.error('Error:', error);
            });
        });
    });
</script>

</body>
</html>
