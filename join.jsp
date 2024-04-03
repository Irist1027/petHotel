<%@ page language="java" contentType="text/html; chatset=UTF-8" pageEncoding="UTF-8" %>
<html lang="ko-kr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <jsp:include page="header.jsp" />
    <form name=loginfrm method=post>
        <table class=login_tbl>
            <tr>
                <td><label>아이디</label></td>
                <td><input type=text name=loginId></label></td>
                <td><button value="로그인" class=loginBtn></td>
            </tr>
            <tr>
                <td><label>비밀번호</label>
                <td><input type=password name=loginPwd></td>
            </tr>
            <tr>
                <td><a href="#">비밀번호 찾기</a></td>
                <td><a href="join.jsp">회원가입</a></td>
            </tr>
        </table>
    </form>

</body>
</html>