<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, notice.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	String id = (String)session.getAttribute("idKey");
%>
<jsp:useBean id="bMgr" class="notice.NoticeMgr" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
	<link rel="stylesheet" href="resource/css/style1.css">
	<script>
$(function() {
    const x = $("#aimg2 > div");
    const slideWidth = -1000;

    setInterval(function() {
        x.animate({ left: slideWidth }, function() {
            const firstImage = x.find("img:first");
            x.css("left", 0);
            x.append(firstImage);
        });
    }, 3000);
});
	</script>
</head>
<body >
    <jsp:include page="test.jsp"/>
        <article id="aimg2">
            <div>
                <img src="resource/img/102.png" alt="">
                <img src="resource/img/가로형1.png" alt="">
                <img src="resource/img/사진2.png" alt="">
                <!-- 슬라이드 할때는 비어보이지 않게 맨끝에 처음사진을 하나 더 추가해준다. -->
            </div>
        </article>
    <div id="bonotice1">
    <div id="bonotice">
        <h2 id="Noheader">공지사항</h2>
          <table class="table">
          <tr>
          	<td colspan="2" style="text-align: right;"> <a href="notice.jsp">자세히보기 </a></td>
          </tr>
            <tr>
              <th>제목</th>
              <th>날짜</th>
            </tr>
            <% 
		    ArrayList<NoticeBean> alist = bMgr.noticelist();
		    
		    for (int i=0; i<5; i++) {
		    	NoticeBean bean = alist.get(i);
		    	String subject = bean.getSubject();
		    	String regdate = bean.getRegdate().substring(0,10);
		    
		    %>
		    <tr style="text-align: center;">
		        <td style="width: 300px; border-bottom: 1px solid;"><a href="#"><%= subject %></a></td>
		        <td style="width: 300px; border-bottom: 1px solid;"><%= regdate %></td>
		    </tr>
	    <% } %>
          </table>
    </div>
    </div>
</body>
</html>