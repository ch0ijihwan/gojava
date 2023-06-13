<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            max-width: 560px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .py-5 {
            margin-top: 30px;
            margin-bottom: 30px;
        }

        h2 {
            margin-bottom: 20px;
        }

        h4 {
            margin-bottom: 20px;
        }

        form {
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
        }

        .form-group {
            margin: 20px;
        }

        .form-control {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border-radius: 4px;
            border: 1px solid #ccc;
            transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
        }

        .form-control:focus {
            outline: none;
            border-color: #80bdff;
            box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, 0.25);
        }

        hr {
            margin-top: 40px;
        }

        .row {
            display: flex;
            justify-content: space-between;
            margin-top: 30px;
        }

        .col {
            flex-basis: 48%;
        }

        .btn {
            padding: 20px;
            font-size: 16px;
            border-radius: 4px;
            text-transform: uppercase;
            font-weight: bold;
        }

        .btn-primary {

            background-color: #007bff;
            color: #fff;
            border: none;
        }

        .btn-secondary {
            background-color: #f0f0f0;
            color: #333;
            border: none;
        }

        .btn-primary:hover, .btn-secondary:hover {
            opacity: 0.8;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="py-5 text-center">
        <h2>회원 가입</h2>
    </div>

    <h4 class="mb-3">회원 정보 입력</h4>

    <form:form action="/members/add
" method="post" modelAttribute="memberRequestDto">

        <div class="form-group">
            <label for="loginId">로그인 ID</label>
            <form:input path="loginId" id="loginId" class="form-control"/>
            <form:errors path="loginId" cssClass="field-error"/>
        </div>

        <div class="form-group">
            <label for="password">비밀번호</label>
            <form:password path="password" id="password" class="form-control"/>
            <form:errors path="password" cssClass="field-error"/>
        </div>

        <div class="form-group">
            <label for="name">이름</label>
            <form:input path="name" id="name" class="form-control"/>
            <form:errors path="name" cssClass="field-error"/>
        </div>

        <div class="row">
            <div class="col">
                <button class="w-100 btn btn-primary btn-lg" type="submit">회원 가입</button>
            </div>
            <div class="col">
                <button class="w-100 btn btn-secondary btn-lg" onclick="location.href='items.html'" type="button">취소</button>
            </div>
        </div>
    </form:form>



</div> <!-- /container -->
</body>
</html>
