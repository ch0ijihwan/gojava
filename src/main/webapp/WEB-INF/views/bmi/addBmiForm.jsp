<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Add BMI Record</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 50px auto;
            padding: 20px;
            max-width: 400px;
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
        }

        table {
            border-collapse: collapse;
            margin: 0 auto;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        table td {
            padding: 5px;
        }

        .submit-button {
            display: block;
            width: 100%;
            padding: 10px;
            margin-top: 20px;
            text-align: center;
            font-size: 16px;
            font-weight: bold;
            color: #ffffff;
            background-color: #007bff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .back-button {
            display: block;
            text-align: center;
            margin-top: 20px;
            text-decoration: none;
            color: #007bff;
        }
    </style>
</head>
<body>
<h1>Add BMI Record</h1>
<form:form action="/bmi" method="POST" modelAttribute="bmiForm">
    <table>
        <tr>
            <td>Date:</td>
            <td><form:input path="date" type="date" /></td>
        </tr>
        <tr>
            <td>Weight:</td>
            <td><form:input path="weight" type="number" step="0.01" /></td>
        </tr>
        <tr>
            <td>Height:</td>
            <td><form:input path="height" type="number" step="0.01" /></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="Submit" class="submit-button" /></td>
        </tr>
    </table>
</form:form>
<a href="/" class="back-button">처음으로 돌아가기</a>
</body>
</html>
