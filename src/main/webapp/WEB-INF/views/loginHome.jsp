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

        .mb-3 {
            margin-bottom: 3rem;
        }

        .btn-container {
            display: flex;
            justify-content: space-between;
        }

        .btn {
            flex: 1;
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
    <h1 class="mb-3">
        회원 이름 : ${member.name}
    </h1>

    <div class="btn-container">
        <button class="btn btn-secondary btn-lg" type="button"
                onclick="location.href='/workout/workouts'">
            운동 기록
        </button>
        <form action="/logout" method="post">
            <button class="btn btn-dark btn-lg" type="submit">
                로그아웃
            </button>
        </form>
    </div>

    <hr class="my-4">

</div> <!-- /container -->

</body>
</html>
