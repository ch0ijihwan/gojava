<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <style>
        .container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
        }

        .py-5 {
            padding-top: 5rem;
            padding-bottom: 5rem;
        }

        .text-center {
            text-align: center;
        }

        .row {
            display: flex;
            justify-content: space-between;
            margin-bottom: 1rem;
        }

        .col {
            flex: 1;
        }

        .btn {
            display: block;
            width: 100%;
            padding: 10px 20px;
            font-size: 18px;
            font-weight: bold;
            text-align: center;
            text-decoration: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .btn-secondary {
            background-color: #6c757d;
            color: #fff;
            border: none;
        }

        .btn-dark {
            background-color: #343a40;
            color: #fff;
            border: none;
        }

        .btn-lg {
            padding: 15px 30px;
            font-size: 24px;
        }

        .btn:hover {
            background-color: #4c545c;
        }

        .my-4 {
            margin-top: 4rem;
            margin-bottom: 4rem;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="py-5 text-center">
        <h2>홈 화면</h2>
    </div>

    <div class="row">
        <div class="col">
            <button class="btn btn-secondary btn-lg" type="button" onclick="location.href='members/add'">
                회원 가입
            </button>
        </div>
        <div class="col">
            <button class="btn btn-dark btn-lg" type="button" onclick="location.href='/login'">
                로그인
            </button>
        </div>
    </div>

    <hr class="my-4">
</div> <!-- /container -->

</body>
</html>
