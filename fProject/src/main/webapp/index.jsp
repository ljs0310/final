<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %> <%@ taglib prefix="fmt"
uri="http://java.sun.com/jsp/jstl/fmt" %> <%@ taglib prefix="fn"
uri="http://java.sun.com/jsp/jstl/functions" %> <%--
<jsp:include page="/WEB-INF/views/common/header.html">
  <jsp:param value="SPRING" name="title" />
</jsp:include>
--%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/index.js"></script>

<jsp:include page="/WEB-INF/views/common/main.jsp" />
<div class="slide">
  <img src="resources/img/imgSlide1.png" alt="" />
  <img src="resources/img/imgSlide2.png" alt="" />
  <img src="resources/img/imgSlide3.png" alt="" />
</div>

<div class="container">
  <div class="category">
    <a href="${pageContext.request.contextPath}/store/storeList.me?category=1">
      <img src="resources/img/koreanFood-removebg.png" />
      <div>한식</div>
    </a>
  </div>
  <div class="category">
    <a href="${pageContext.request.contextPath}/store/storeList.me?category=2">
      <img src="resources/img/짜장면.png" />
      <div>중식</div>
    </a>
  </div>
  <div class="category">
    <a href="${pageContext.request.contextPath}/store/storeList.me?category=3">
      <img src="resources/img/김밥.png" />
      <div>분식</div>
    </a>
  </div>
  <div class="category">
    <a href="${pageContext.request.contextPath}/store/storeList.me?category=4">
      <img src="resources/img/스테이크.png" />
      <div>양식</div>
    </a>
  </div>
  <div class="category">
    <a href="${pageContext.request.contextPath}/store/storeList.me?category=5">
      <img src="resources/img/햄버거.png" />
      <div>간편식</div>
    </a>
  </div>
  <div class="category">
    <a href="${pageContext.request.contextPath}/store/storeList.me?category=6">
      <img src="resources/img/케이크.png" />
      <div>카페/디저트</div>
    </a>
  </div>
</div>

<jsp:include page="/WEB-INF/views/common/footer.jsp" />
