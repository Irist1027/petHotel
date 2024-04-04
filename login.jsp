<%@ page language="java" contentType="text/html; chatset=UTF-8" pageEncoding="UTF-8" %>
<html lang="ko-kr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
    <link rel="stylesheet" type="text/css" href="style/style.css">
</head>
<body class=login_page>
    <div class=login_title>
        <a href=index.jsp>
            <image src=# alt=biglogo>
        </a>
    </div>
    <div class=login_box>
        <form name=loginfrm method=post>
            <table class=login_tbl>
                <tr>
                    <td><label>아이디</label></td>
                    <td><input type=text name=loginId id=loginId></label></td>
                    <td rowspan=2><input type=submit class=loginBtn onclick=loginfrmchk() value=로그인></td>
                </tr>
                <tr>
                    <td><label>비밀번호</label>
                    <td><input type=password name=loginPwd id=loginPwd></td>
                </tr>
                <tr>
                    <td></td>
                    <td><a href="#">비밀번호 찾기</a></td>
                    <td><a href="join.jsp">회원가입</a></td>
                </tr>
            </table>
        </form>
    </div>

    <button onclick=loginfrmchk()>aaa</button>
    <script>
        const loginId=loginfrm.querySelector("#loginId");
        const loginPwd=loginfrm.querySelector("#loginPwd");



        function isIdNull(value){
            return value=="";
        }

        function isPwdNull(value){
            return value=="";
        }

        function loginfrmchk(){
            console.log("button pushed");
            if(isIdNull(loginId.value)){
                alert("아이디를 입력해 주세요");
                loginId.focus();
                return false;
            }
            console.log("idchecked");
             if(isPwdNull(loginPwd.value)){
                alert("비밀번호를 입력해 주세요");
                loginPwd.focus();
                return false;
            }
            console.log("pwdchecked");

            return true;
        }
    </script>
</body>
</html>