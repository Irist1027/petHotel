<%@ page language="java" contentType="text/html; chatset=UTF-8" pageEncoding="UTF-8" %>
<html lang="ko-kr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
    <link rel="stylesheet" type="text/css" href="style/style.css">
</head>
<body>
    <div class=join_title>
        <a href=index.jsp>
            <image src=# alt=biglogo>
        </a>
    </div>
    <div class=join_box>
        <form name=joinfrm method=post>
            <table class=join_tbl>
                <tr>
                    <td><label for="userId">아이디</label></td>
                    <td colspan=2><input type=text name=userId id=userId></label></td>
                </tr>
                <tr>
                    <td><label for="userPwd">비밀번호</label>
                    <td colspan=2><input type=password name=userPwd id=userPwd></td>
                </tr>
                <tr>
                    <td><label for="userPwdChk">비밀번호 확인</label>
                    <td colspan=2><input type=password name=userPwdChk id=userPwdChk></td>
                </tr>
                <tr>
                    <td><label for="userName">이름</label>
                    <td colspan=2><input type=text name=userName id=userName></td>
                </tr>
                <tr>
                    <td><label for="userTel">전화번호</label>
                    <td colspan=2><input type=phone name=userTel id=userTel></td>
                </tr>
                <tr>
                    <td><label for="userStAddr">주소</label>
                    <td><input type=text name=userStAddr id=userStAddr readonly></td>
                    <td><button onclick="">주소 검색하기</button>
                </tr>
                <tr>
                    <td><label for="userDetailAddr">세부 주소</label>
                    <td colspan=2><input type=text name=userDetailAddr id=userDetailAddr></td>
                </tr>
                <tr class="dis_hidden">
                    <td><label for="userAddr">전체주소</label>
                    <td colspan=2><input type=text name=userAddr id=userAddr readonly></td>
                </tr>
                <tr>
                    <td colspan=3><button>가입하기</button></td>
                </tr>
                
            </table>
        </form>
    </div>
</body>
</html>