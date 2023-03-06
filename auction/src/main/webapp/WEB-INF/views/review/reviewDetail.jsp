<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="<%=request.getContextPath()%>"/>
<%@ page session="false" %>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
	<title>리뷰게시판 글 상세보기</title>
</head>
 <body>
<h2>리뷰 상세</h2>
    <c:if test="${not empty review}">
       <table border="1">
            <tr>
                <td>번호</td>
                <td>${ReviewNo}</td>
                <td>작성자</td>
                <td>${review.id}</td>
            </tr>
             <tr>
                <td>작성일자</td>
                <td>${review.reviewDate}</td>
                <td>조회수</td>
                <td>${review.viewCnt}</td>
            </tr>
            <tr>
                <td>별점</td>
                <td colspan="3">${review.starRating}</td>
            </tr>
              <tr>
                <td>이미지</td>
                <td colspan="3">
                <c:forEach var="reviewFileName" items="${map.fileList}">
					  <img src="${contextPath}/download?reviewFileName=${reviewFileName}" class="imgSize"/><br/>
				  </c:forEach>
  			</td>
            </tr>
            <tr>
                <td>제목</td>
                <td colspan="3">${title}</td>
            </tr>
            <tr>
                <td>내용</td>
                <td colspan="3">${review.reviewContent}</td>
            </tr>
            
        </table>
        <a href="${contextPath}/review/listForm">목록</a>
       <!-- 관리자 글수정&삭제 -->
    	<%-- <c:if test="${authUser.grade == 9999 && (AUTHUSER_ID == review.id)}"> --%>
    	<%-- <c:if test="${AUTHUSER_ID =='adminid'}">
        	<a href="${contextPath}/review/updateForm?ano=${ReviewNo}">관리자 수정</a>
        	<a href="${contextPath}/review/delete?ano=${review.reviewNo}">관리자 삭제</a>
		</c:if> --%>
	    <!-- 글작성자일 경우 메뉴 -->
    <%--   	<c:if test="${sessionScope.AUTHUSER_ID == review.id}">
        	<a href="${contextPath}/review/updateForm?ano=${ReviewNo}">수정</a>
       		<a href="${contextPath}/review/delete?ano=${review.reviewNo}">삭제</a>
    <c:if test="${sessionScope.AUTHUSER_ID == 'hongid'}">
	    </c:if>
	    </c:if> --%>
        	<a href="${contextPath}/review/updateForm?ano=${ReviewNo}">수정</a>
       		<a href="${contextPath}/review/delete?ano=${review.reviewNo}">삭제</a>
    </c:if>
</body>
</html>