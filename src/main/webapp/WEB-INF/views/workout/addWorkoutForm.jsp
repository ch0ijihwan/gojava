<%--label.properties--%>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
  <title>Add Workout Form</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css">
  <style>
    /* CSS 스타일을 여기에 추가합니다 */
    body {
      font-family: Arial, sans-serif;
      margin: 20px;
      text-align: center;
    }

    h2 {
      color: #333;
    }

    form {
      margin-top: 20px;
    }

    label {
      display: inline-block;
      width: 100px;
      font-weight: bold;
      text-align: right;
      margin-right: 10px;
    }

    input[type="text"],
    input[type="number"],
    input[type="checkbox"] {
      width: 200px;
      margin-bottom: 10px;
      padding: 5px;
    }

    input[type="submit"] {
      padding: 10px;
      background-color: #337ab7;
      color: #fff;
      border: none;
      cursor: pointer;
    }

    input[type="submit"]:hover {
      background-color: #23527c;
    }

    .error {
      color: red;
    }
  </style>
</head>
<body>
<h2>Add Workout Form</h2>

<form action="/workout" method="POST">
  <div>
    <label for="part">운동 부위:</label>
    <input type="text" id="part" name="part" required>
  </div>
  <div>
    <label for="setCount">세트 수:</label>
    <input type="number" id="setCount" name="setCount" required>
  </div>
  <div>
    <label for="weight">무게:</label>
    <input type="number" id="weight" name="weight" required>
  </div>
  <div>
    <label for="count">횟수:</label>
    <input type="number" id="count" name="count" required>
  </div>
  <div>
    <label for="date">날짜:</label>
    <input type="text" id="date" name="date" required readonly>
  </div>

  <div>
    <input type="submit" value="운동 추가">
  </div>
</form>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script>
  $(function() {
    $("#date").datepicker({ dateFormat: "yy-mm-dd" });
  });
</script>
</body>
</html>
