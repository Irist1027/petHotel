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
        <form name=joinfrm method=post>
            <table class=join_tbl>
                <tr>
                    <td><label for="userId">ID</label></td>
                    <td><input type=text name=userId id=userId></label></td>
                    <td><button onclick="newIdChk()">ID 중복 확인</button></td>
                </tr>
                <tr>
                    <td colspan=2><span id="newIdChk" class="joinTip">ID 중복 확인 필요</span></td>
                    <td><input type=text id=idchecked hidden></td>
                </tr>
                <tr>
                    <td><label for="userPwd">비밀번호</label>
                    <td><input type=password name=userPwd id=userPwd maxlength=20></td>
                    <td><span id=joinPwdInfo></span></td>
                </tr>
                <tr>
                    <td colspan=2><span id="newIdChk" class="joinTip">영문,숫자,특수문자(!~*까지)를 2가지 이상 포함한 8자 이상 20자 이하</span></td>
                </tr>
                <tr>
                    <td><label for="userPwdChk">비밀번호 확인</label>
                    <td><input type=password name=userPwdChk id=userPwdChk maxlength=20></td>
                    <td><span id=joinPwdChkInfo></span></td>
                </tr>
                <tr>
                    <td><label for="userName">이름</label>
                    <td><input type=text name=userName id=userName></td>
                    <td><span id=joinNameInfo>필수</span></td>
                </tr>
                <tr>
                    <td><label for="userTelDetail">전화번호</label>
                    <td>
                        <select id=userTelHeader>
                            <option value=010 selected="selected">010</option>
                            <option value=011>011</option>
                            <option value=016>016</option>
                            <option value=017>017</option>
                            <option value=018>018</option>
                            <option value=019>019</option>
                        </select>
                    <input type=phone id=userTelDetail></td>
                    <td><span class=joinTelInfo>필수</span>
                </tr>
                <tr>
                    <td colspan=3>
                        <span class=joinTip>-(하이픈)을 제외한 7~8자리 숫자</span>
                        <input type=hidden name=userTel id=userTel>
                    </td>
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
                    <td colspan=3><input type=submit onclick='userFrmValidation("join")' value=가입하기></input></td>
                </tr>
            </table>
        </form>
    </div>
    <script>
        const userIdQ=joinfrm.querySelector("#userId");
        const userPwdQ=joinfrm.querySelector("#userPwd");
        const userPwdChkQ=joinfrm.querySelector("#userPwdChk");
        const userNameQ=joinfrm.querySelector("#userName");
        const userTelHeaderQ=joinfrm.querySelector("#userTelHeader");
        const userTelDetailQ=joinfrm.querySelector("#userTelDetail");
        const userTelQ=joinfrm.querySelector("#userTel");
        const userStAddrQ=joinfrm.querySelector("#userStAddr");
        const userDetailAddrQ=joinfrm.querySelector("#userDetailAddr");
        const userAddrQ=joinfrm.querySelector("#userAddr");
        const joinPwdInfoQ=joinfrm.querySelector("#joinPwdInfo");
        const joinPwdChkInfoQ=joinfrm.querySelector("#joinPwdChkInfo");

        function joinEventPwd(){
            let pwdCnt=0;
            let pwdTemp=userPwdQ.value;
            if(pwdTemp.match(/[0-9]/)){
                pwdCnt++;
            }
            if(pwdTemp.match(/[a-z]/)){
                pwdCnt++;
            }
            if(pwdTemp.match(/[A-Z]/)){
                pwdCnt++;
            }
            if(pwdTemp.match(/[!@#$%^&*]/g)){
                pwdCnt++;
            }

            if(pwdCnt<=1 && pwdTemp.length<8){
                joinPwdInfoQ.innerHTML="위험";
                return false;
            }
            else if(pwdCnt==2 && pwdTemp.length>=8){
                joinPwdInfoQ.innerHTML="안전";
                return true;
            }

            else if(pwdCnt>=3 && pwdTemp.length>=8){
                joinPwdInfoQ.innerHTML="강력";
                return true;
            }
        }

        function joinEventPwdChk(){
            if(Object.is(userPwdQ.value,userPwdChkQ.value)){
                joinPwdChkInfoQ.innerHTML="비밀번호가 일치합니다.";
                return true;
            }
            else{
                joinPwdChkInfoQ.innerHTML="비밀번호가 일치하지 않습니다.";
                return false;
            }
        }

        function joinEventTel(){
            let joinTelString = userTelHeaderQ.value.toString();
            console.log(joinTelString);
            joinTelString += userTelDetailQ.value.toString();
            console.log(joinTelString);
            userTelQ.value=joinTelString.toString();
        }

        function joinEventAddr(){
            let joinAddrString = userStAddrQ.value.toString();
            console.log(joinAddrString);
            joinAddrString += userDetailAddrQ.value.toString();
            console.log(joinAddrString);
            userAddrQ.value=joinAddrString.toString();
        }

        function userFrmValidation(mode){

            if(mode=="join"){
                if(joinFrm.userIdQ.value!="true"){
                    console.log("ID 중복확인이 필요합니다");
                    return false;
                }

                if(joinEventAddr){
                    console.log("주소를 확인해주세요");
                    userDetailAddrQ.focus;
                    return false;
                }
            }
           
            if(joinEventPwd())
                console.log("비밀번호를 확인해주세요");
                userPwdQ.focus;
                return false;
            if(userNameQ.value==""){
                console.log("이름을 확인해주세요");
                userNameQ.focus;
                return false;
            }
            if(joinEventTel){
                console.log("전화번호를 확인해주세요");
                userTelDetailQ.focus;
                return false;
            }

            return true;
        }
        
        userPwdQ.addEventListener("keyup",joinEventPwd);
        userPwdChkQ.addEventListener("keyup",joinEventPwdChk);
        userTelHeaderQ.addEventListener("onclick",joinEventTel);
        userTelDetailQ.addEventListener("keyup",joinEventTel);
        userStAddrQ.addEventListener("keyup",joinEventAddr);
        userDetailAddrQ.addEventListener("keyup",joinEventAddr);
    </script>
</body>
</html>