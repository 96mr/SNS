<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page session="true" %>
<html>
<head>
<link rel="stylesheet" href="/resources/css/mycustom.css" />
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css">
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script src="//code.jquery.com/jquery-3.2.1.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js"></script>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>

<title>검색</title>
</head>
<body>
	<div class="allcontainer">
		<%@ include file="/WEB-INF/views/main_nav.jsp" %>

	    <section class="content">
	    	<div class="pg-header">
				<a href="#" onClick="history.back()" style="color: #9E6BD1"><i class="fas fa-chevron-left "></i></a> 
				<span class="pg-header-center">검색</span>
				<span class="pg-header-right"><a href="${pageContext.request.contextPath}/write"><i class="fas fa-pen"></i></a></span>
			</div>
	      	<div class="search-box">
	        	<form method="get" action="${pageContext.request.contextPath}/search" autocomplete="off">
	        		<input type="text" name="kwd" value="${keyword}" placeholder="검색어 입력"> <!--검색창-->
	        		<button type="submit">검색</button>
	        	</form>
	      	</div>
	      	<article class="timeline">
				<c:if test="${empty search_result}">
					<div class="board-empty">
						<div>검색 결과가 없습니다</div>
					</div>
				</c:if>
				<c:forEach var="list" items="${search_result}">
					<div class="board" data-bno="${list.bno}">
						<div onclick="location.href ='${pageContext.request.contextPath}/${list.member.id}/${list.bno}'">
							<!--글 하나씩-->
							<div>
								<a href="${pageContext.request.contextPath}/${list.member.id}/profile">
									<span class="board-member-image"><img src="${pageContext.request.contextPath }/resources/images/${list.member.profile.image_file.save_name}" /></span>
									<span class="board-member-name">${list.member.profile.name }</span>
									<span class="board-member-id">@ ${list.member.id }</span>
								</a>
								<c:if test="${sessionID eq list.member.id }">
									<div class="board-dropdown">
										<i class="fas fa-angle-down fa-2x"></i>
										<ul>
											<li><a><i class="fas fa-trash-alt"></i>삭제</a></li>
											<li><a>취소</a></li>
										</ul>
									</div>
								</c:if>
								<c:if test="${not empty list.files }">
									<c:forEach var="files" items="${list.files }">
										<div class="board-image-list">
											<span> 
											<img src="${pageContext.request.contextPath }/resources/images/${files.save_name }" />
											</span>
										</div>
									</c:forEach>
								</c:if>
								<div class="board-txt">${list.content }</div>
							</div>
						</div>
						<div class="board-bottom">
							<div class="board-icon">
								<span onclick="likeButton(${list.bno})" style="color: red;"> 
									<span class="unlike <c:if test='${list.islike == 0 }'>active</c:if>"><i class='far fa-heart fa-2x'></i></span> 
									<span class="like <c:if test='${list.islike == 1 }'>active</c:if>"><i class='fas fa-heart fa-2x'></i></span>
								</span>
								<span class="like-cnt" onclick="liker_list(${list.bno})">${fn:length(list.liker_list)}</span>
							</div>
							<div class="board-icon">
								<a href="${pageContext.request.contextPath}/${list.member.id}/${list.bno}">
								<span><i class="far fa-comment-alt fa-2x"></i> </span>
								<span>${fn:length(list.reply)}</span>
								</a>
							</div>
							<span class='board-regdate'>${list.regdate}</span>
						</div>
					</div>
				</c:forEach>
			</article>
  		</section>
	</div>

	<script type="text/javascript" charset="utf-8">
		var contextPath = "<c:out value='${pageContext.request.contextPath}'/>";
		var loginID = "<c:out value='${sessionID}'/>";
		var userID = "<c:out value='${user.id}'/>"
	</script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/like.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/follow.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/mycustom.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/infiniteboard.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/websocket.js"></script>
</body>
</html>
