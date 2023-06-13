<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
            max-width: 600px;
            text-align: center;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .container h2 {
            margin-bottom: 20px;
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
            padding: 20px 40px;
            font-size: 20px;
            border-radius: 8px;
            text-transform: uppercase;
            font-weight: bold;
        }

        .btn-secondary {
            background-color: #f0f0f0;
            color: #333;
        }

        .btn-dark {
            background-color: #333;
            color: #fff;
        }

        .btn-secondary:hover, .btn-dark:hover {
            background-color: #ddd;
        }

        hr {
            margin-top: 40px;
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
            <button class="w-100 btn btn-secondary btn-lg" type="button"
                    onclick="location.href='members/add'">
                <span style="white-space: nowrap;">회원가입</span>
            </button>
        </div>
        <div style="padding: 10px">     </div>
        <div class="col">
            <button class="w-100 btn btn-dark btn-lg" type="button"
                    onclick="location.href='/login'">
                로그인
            </button>
        </div>
    </div>

    <hr class="my-4">

</div> <!-- /container -->

</body>
</html>
