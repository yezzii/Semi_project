<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div align="center">
		<hr width="50%" color="red">
		<h3>BOARD 테이블 전체 게시물 목록 페이지</h3>
		<hr width="50%" color="red">
		<br>

		<%-- 검색 관련 요청 태그 --%>

		<form method="post" action="<%=request.getContextPath()%>/search.do">
			<select name="field">
				<option value="title">제목</option>
				<option value="cont">내용</option>
				<option value="title_cont">제목+내용</option>
				<option value="writer">작성자</option>
			</select> <input type="text" name="keyword">&nbsp;&nbsp; <input
				type="submit" value="검색">
		</form>
		<table border="1" cellspacing="0" width="450">
			<tr>
				<td colspan="5" align="right">전체 게시물 수 : 개
				</td>
			</tr>
			<tr>
				<th>글번호</th>
				<th>글제목</th>
				<th>작성자</th>
				<th>조회수</th>
				<th>작성일자</th>
			</tr>

			<c:set var="list" value="${List }" />
			<c:if test="${!empty list }">
				<c:forEach items="${list}" var="dto">
					<tr>
						<td>${dto.getBoard_idx() }</td>
						<td><a
							href="<%=request.getContextPath()%>/content.do?no=${dto.getBoard_title() }">${dto.getBoard_title() }</a>
						</td>
						<td>${dto.getBoard_writer() }</td>
						<td>${dto.getBoard_content() }</td>
						<td>${dto.getBoard_date().substring(0,10) }</td>
						<td>${dto.getBoard_viewcnt() }</td>
					</tr>
				</c:forEach>
			</c:if>
			<c:if test="${empty list }">
			<tr>
				<td colspan="5" align="center">
					<h3>조회된 게시물이 없습니다....</h3>
				</td>
			</tr>
			</c:if>
		</table>
		<br> <input type="button" value="글쓰기"
			onclick="location.href='board_write.jsp'">
	</div>

</body>
</html>