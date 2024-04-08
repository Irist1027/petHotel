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
        <form name=petAddFrm method=post>
            <table class=join_tbl>
                <tr>
                    <td><label for="petName">이름</label>
                    <td><input type=text name=petName id=petName></td>
                    <td><span id=joinNameInfo>필수</span></td>
                </tr>
                <tr>
                    <td><label for="petWeight">체중</label>
                    <td>
                        <select id=petWeight>
                            <option value='light' selected="selected">소형(7kg 이하)</option>
                            <option value='middle'>중형(7kg ~ 15kg)</option>
                            <option value='heavy'>대형(15kg 이상)</option>
                        </select>
                        </td>
                </tr>
                <tr>
                    <td><label for="petType">품종</label>
                    <td><input type=text name=petType id=petType></td>
                </tr>
                <tr>
                    <td>성별</td>
                    <td><label><input type=radio name=gender value=male>남</label>
                        <label><input type=radio name=gender value=female>여</label>
                    </td>
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
                petPwdQ.focus;
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