<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>BMI Records</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            text-align: center;
            padding: 20px;
        }

        h1 {
            margin-bottom: 20px;
        }

        table {
            margin: 0 auto;
            background-color: #ffffff;
            border-collapse: collapse;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            width: 80%;
            max-width: 800px;
        }

        th, td {
            padding: 10px;
            border-bottom: 1px solid #ddd;
            text-align: center;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        .chart-container {
            width: 600px;
            height: 400px;
            margin: 20px auto;
        }

        .button {
            display: inline-block;
            padding: 10px 20px;
            margin: 10px;
            font-size: 16px;
            font-weight: bold;
            text-decoration: none;
            color: #ffffff;
            background-color: #007bff;
            border-radius: 5px;
            border: none;
            cursor: pointer;
        }
    </style>
</head>
<body>
<h1>BMI Records</h1>
<table>
    <tr>
        <th>Date</th>
        <th>Weight</th>
        <th>Height</th>
        <th>BMI Rate</th>
    </tr>
    <c:forEach var="bmi" items="${bmi}">
        <tr>
            <td>${bmi.date}</td>
            <td>${bmi.weight}</td>
            <td>${bmi.height}</td>
            <td>${bmi.bmiRate}</td>
        </tr>
    </c:forEach>
</table>

<div class="chart-container">
    <canvas id="bmiChart"></canvas>
</div>

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

    // 차트
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
                    label: 'BMI Rate',
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

<a href="/bmi" class="button">Add New BMI Record</a>
<a href="/" class="button">Go Back to Home</a>

</body>
</html>
