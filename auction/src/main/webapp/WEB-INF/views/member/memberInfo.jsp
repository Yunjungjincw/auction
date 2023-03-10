<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <title>W3.CSS Template</title>
    <meta charset="UTF-8">
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/memberInfo.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
      body {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
      }
      
      #container {
        position: relative;
        min-height: 100vh;
      }
      
      #header1 {
        height: 130px;
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        background-color: #fff;
        z-index: 1;
      }
      
      #header2 {
        height: 70px;
        position: fixed;
        top: 130px;
        left: 0;
        width: 100%;
        background-color: #fff;
        z-index: 1;
      }
      
      #content {
        margin-top: 200px;
        margin-bottom: 100px;
      }
      
      #footer {
        height: 70px;
        position: fixed;
        bottom: 0;
        left: 0;
        width: 100%;
        background-color: #fff;
        z-index: 1;
      }
      
      table {
        width: 95%;
        margin: 0 auto;
        border: 1px solid #ccc;
        border-collapse: collapse;
      }
      
      tr {
        border: 1px solid #ccc;
      }
      
      td {
        border: 1px solid #ccc;
        padding: 10px;
      }
    </style>
  </head>
  <body>
    <div id="container">
      <div id="header1">
        <jsp:include page="../module/banner.jsp" flush="false"/>
      </div>
      <div id="header2">
        <jsp:include page="../module/top.jsp" flush="false"/>
      </div>
      <div id="content">
        <table>
          <tr>
            <td>
		 <c:if test="${! empty AUTHUSER && (AUTHUSER.grade eq 1)}">    
			<%-- ??????user??? ??????????????? ??? ???????????? ?????? --%>
			<article class="info-c">
			<div>
		 	<br>
		 	<br>
			<h2>?????????</h2>
			<br>
			<br>
		 	</div>
		 	<div>
			<table class="info-t">
			<colgroup>
			<col width="30%"/>
			<col width="auto"/>
			</colgroup>
			<tbody>
			<tr>
		     <td>&nbsp;&nbsp;??????</td>
				<td>&nbsp;&nbsp;${member.name}</td>
		  	</tr>
		  	<tr>
		     <td>&nbsp;&nbsp;?????????</td>
				<td>&nbsp;&nbsp;${member.id}</td>
		  	</tr>
		  	<tr>
		     <td>&nbsp;&nbsp;????????????</td>
				<td>&nbsp;&nbsp;${member.password}</td>
		  	</tr>
		  	<tr>
		     <td>&nbsp;&nbsp;????????? ??????</td>
				<td>&nbsp;&nbsp;${member.phone1}-${member.phone2}-${member.phone3}</td>
		  	</tr>
		  	<tr>
		     <td>&nbsp;&nbsp;?????????</td>
				<td>&nbsp;&nbsp;${member.email1}@${member.email2}</td>
		  	</tr>
		  	<tr>
		     <td>&nbsp;&nbsp;??????</td>
				<td>&nbsp;&nbsp;${member.gender}</td>
		  	</tr>
		  	<tr>
		     <td>&nbsp;&nbsp;????????????</td>
				<td>&nbsp;&nbsp;${member.birthyear}??? ${member.birthmonth}??? ${member.birthday}???</td>
		  	</tr>
		  	<tr>
		     <td>&nbsp;&nbsp;????????????</td>
				<td>&nbsp;&nbsp;${member.zipcode}</td>
		  	</tr>
		  	<tr>
		     <td>&nbsp;&nbsp;???????????????</td>
				<td>&nbsp;&nbsp;${member.roadaddress}</td>
		  	</tr>
		  	<tr>
		     <td>&nbsp;&nbsp;????????????</td>
				<td>&nbsp;&nbsp;${member.jibunaddress}</td>
		  	</tr>
		  	<tr>
		     <td>&nbsp;&nbsp;????????????</td>
				<td>&nbsp;&nbsp;${member.detailaddress}</td>
		  	</tr>
		  	<tr>
		     <td>&nbsp;&nbsp;?????????</td>
				<td>&nbsp;&nbsp;<fmt:formatDate value="${member.register}" type="both" pattern="yy/MM/dd"/></td>
		  	</tr>
			</tbody>
			</table>
			<br>
			<div class="info-btn">
				<button type="button" onclick="location.href='./update?id=${member.id}'">??????</button>
				<button type="button" onclick="location.href='./delete?id=${member.id}'">??????</button>
			</div>
			<br>
			</div>
			</article>
			</c:if>
			
			<%-- ???????????? ??????????????? ??? ???????????? ?????? --%>
			<c:if test="${not empty AUTHUSER && (AUTHUSER.grade==999)}">
			<article class="info-c">
			<div>
		 	<br>
		 	<br>
			<h2>????????????</h2>
			<br>
			<br>
		 	</div>
		 	<div>
		 	<table class="info-t">
			<colgroup>
			<col width="30%"/>
			<col width="auto"/>
			</colgroup>
			<tbody>
			<tr>
		     <td>&nbsp;&nbsp;??????</td>
				<td>&nbsp;&nbsp;${member.name}</td>
		  	</tr>
		  	<tr>
		     <td>&nbsp;&nbsp;?????????</td>
				<td>&nbsp;&nbsp;${member.id}</td>
		  	</tr>
		  	<tr>
		     <td>&nbsp;&nbsp;????????? ??????</td>
				<td>&nbsp;&nbsp;${member.phone1}-${member.phone2}-${member.phone3}</td>
		  	</tr>
		  	<tr>
		     <td>&nbsp;&nbsp;?????????</td>
				<td>&nbsp;&nbsp;${member.email1}@${member.email2}</td>
		  	</tr>
		  	<tr>
		     <td>&nbsp;&nbsp;??????</td>
				<td>&nbsp;&nbsp;${member.gender}</td>
		  	</tr>
		  	<tr>
		     <td>&nbsp;&nbsp;????????????</td>
				<td>&nbsp;&nbsp;${member.birthyear}??? ${member.birthmonth}??? ${member.birthday}???</td>
		  	</tr>
		  	<tr>
		     <td>&nbsp;&nbsp;????????????</td>
				<td>&nbsp;&nbsp;${member.zipcode}</td>
		  	</tr>
		  	<tr>
		     <td>&nbsp;&nbsp;???????????????</td>
				<td>&nbsp;&nbsp;${member.roadaddress}</td>
		  	</tr>
		  	<tr>
		     <td>&nbsp;&nbsp;????????????</td>
				<td>&nbsp;&nbsp;${member.jibunaddress}</td>
		  	</tr>
		  	<tr>
		     <td>&nbsp;&nbsp;????????????</td>
				<td>&nbsp;&nbsp;${member.detailaddress}</td>
		  	</tr>
		  	<tr>
		     <td>&nbsp;&nbsp;?????????</td>
				<td>&nbsp;&nbsp;<fmt:formatDate value="${member.register}" type="both" pattern="yy/MM/dd"/></td>
		  	</tr>
		  	<tr>
		     <td>&nbsp;&nbsp;????????????</td>
				<td>&nbsp;&nbsp;${member.grade}</td>
		  	</tr>
			</tbody>
			</table>
			<form>
			<input type="hidden" id='id' name='id' value='<c:out value="${member.id}"/>'>
			<input type="hidden" id='pageNum' name='pageNum' value='<c:out value="${cri.pageNum}"/>'>
			<input type="hidden" id='amount' name='amount' value='<c:out value="${cri.amount}"/>'>
			</form>
			<br>
			<div class="info-btn">
				<button type="button" onclick="location.href='./update?id=${member.id}'">???????????? ??????</button>
				<button type="button" onclick="location.href='./list?pageNum=${cri.pageNum}&amount=${cri.amount}&type=${cri.type}&keyword=${cri.keyword}'">????????????</button>
			</div>
			<br>
			</div>
			</article>
			</c:if>              
            </td>
          </tr>
        </table>
      </div>
      <div id="footer">
        <jsp:include page="../module/bottom.jsp" flush="false"/>
      </div>
    </div>
  </body>
</html>