<%@ page language="java" contentType="text/html; chatset=UTF-8" pageEncoding="UTF-8" %>
<html lang="ko-kr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PetHotel</title>
    <link rel="stylesheet" type="text/css" href="style/style.css">
</head>
<body>
    <jsp:include page="header.jsp" />
    <aside class=aside>
        <div class=post-aside-box>
            <ul class=aside-nav>
                <li class=aside-nav-title></li>
                <li class=aside-nav-link></li>
                <li class=aside-nav-link></li>
                <li class=aside-nav-link></li>
            </ul>
        </div>
    </aside>

    <div class="post-content">
        <div class="post-content-title"></div>
        <div class="post-content-author"></div>
        <div class="post-content-text"></div>

        <div class="post-content-nav">
            <div class="post-content-link" id="post-content-link-left"></div>
            <div class="post-content-link" id="post-content-link-right"></div>
        </div>
    </div>
</body>
</html>