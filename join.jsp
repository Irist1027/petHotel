<%@ page language="java" contentType="text/html; chatset=UTF-8" pageEncoding="UTF-8" %>
<html lang="ko-kr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
    <link rel="stylesheet" type="text/css" href="style/style.css">
</head>
<body class=join-page>
    <div class=join_title>
        <a href=index.jsp>
            <image src=# alt=biglogo>
        </a>
    </div>
    <div class=join_box>
        <form name=joinfrm method=post action=join2nd.jsp>
            <table class=join_tbl>
                <tr>
                    <td>
                        <input type="checkbox" class=joinbox id=agree01><span>이용약관1</span>에 동의합니다
                    </td>
                </tr>
                <tr>
                    <td>
                        <textarea readonly>이용약관1</textarea>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="checkbox" class=joinbox id=agree02><span>이용약관2</span>에 동의합니다
                    </td>
                </tr>
                <tr>
                    <td>
                        <textarea readonly>이용약관2</textarea>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type=submit onclick=agreeChk() value="가입하기">
                    </td>
                </tr>
            </table>
        </form>
    </div>
    <script>
        const agree01Q = joinfrm.querySelector("#agree01");
        const agree02Q = joinfrm.querySelector("#agree02");

        function agreeChk(){
            if(!(agree01Q.checked)){
                alert("이용약관1에 체크해주세요");
                agree01Q.focus();
                return false;
            }
            if(!(agree02Q.checked)){
                alert("이용약관2에 체크해주세요");
                agree02Q.focus();
                return false;
            }
            return true;
        }
    </script>
</body>
</html>