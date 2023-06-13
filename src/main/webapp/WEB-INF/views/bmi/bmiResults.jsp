<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <head>
        <title>BMI Records</title>
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
        <!-- Add your CSS stylesheets and JavaScript files here if needed -->
    </head>
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
        <th>bmiRate</th>
        <!-- Add more columns if needed -->
    </tr>
    <c:forEach var="bmi" items="${bmi}">
        <tr>
            <td>${bmi.date}</td>
            <td>${bmi.weight}</td>
            <td>${bmi.height}</td>
            <td>${bmi.bmiRate}</td>
            <!-- Add more columns if needed -->
        </tr>
    </c:forEach>
</table>

<div style="width: 600px; height: 400px;">
    <canvas id="bmiChart"></canvas>
</div>

<a href="/bmi" class="button">새로운 BMI 등록</a>

<script>
    // Get the data for the chart
    var dates = [];
    var weights = [];
    var heights = [];
    var bmiRate = [];
    <c:forEach var="bmi" items="${bmi}">
    dates.push("${bmi.date}");
    weights.push(${bmi.weight});
    heights.push(${bmi.height});
    bmiRate.push(${bmi.bmiRate});
    </c:forEach>

    // Create the chart
    var ctx = document.getElementById('bmiChart').getContext('2d');
    var chart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: dates,
            datasets: [
                {
                    label: 'Weight',
                    backgroundColor: 'rgba(75, 192, 192, 0.2)',
                    borderColor: 'rgba(75, 192, 192, 1)',
                    borderWidth: 1,
                    data: weights
                },
                {
                    label: 'Height',
                    backgroundColor: 'rgba(54, 162, 235, 0.2)',
                    borderColor: 'rgba(54, 162, 235, 1)',
                    borderWidth: 1,
                    data: heights
                },
                {
                    label: 'bmiRate',
                    backgroundColor: 'rgba(95, 222, 235, 0.2)',
                    borderColor: 'rgba(95, 222, 235, 1)',
                    borderWidth: 1,
                    data: bmiRate
                }
            ]
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    });
</script>


<a href="/bmi"  class="button">새로운 bmi 등록</a>

<!— Add your graph visualization here using a JavaScript library like Chart.js —>
</body>
</html>
