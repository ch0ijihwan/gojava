<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Add BMI Record</title>
    <!-- Add your CSS stylesheets and JavaScript files here if needed -->
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
            <td colspan="2"><input type="submit" value="Submit" /></td>
        </tr>
    </table>
</form:form>
</body>
</html>
