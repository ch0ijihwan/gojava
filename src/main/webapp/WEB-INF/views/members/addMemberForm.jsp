<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <style>
        .container {
            max-width: 560px;
        }

        .field-error {
            border-color: #dc3545;
            color: #dc3545;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="py-5 text-center">
        <h2>회원 가입</h2>
    </div>

    <h4 class="mb-3">회원 정보 입력</h4>

    <form:form action="" method="post" modelAttribute="memberRequestDto">

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

        <hr class="my-4">

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
