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

    <div class="post-content-list">
        <table id="post-content-list">
            <tr>
                <td class="post-content-list-text"></td>
                <td class="post-content-list-title"></td>
                <td class="post-content-list-author"></td>
            </tr>
        </table>
    </div>
</body>
</html>