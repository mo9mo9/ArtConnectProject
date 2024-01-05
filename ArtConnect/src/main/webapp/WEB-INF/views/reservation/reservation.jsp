<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />
<meta charset="utf-8">
<!-- Bootstrap CSS -->
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<!-- Custom CSS -->
<link href="${pageContext.request.contextPath}/resources/css/style.css"
	rel="stylesheet" type="text/css">
<!-- Font Awesome -->
<link
	href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<!-- Responsive CSS -->
<link
	href="${pageContext.request.contextPath}/resources/css/responsive.css"
	rel="stylesheet" type="text/css">
<title>예약 페이지</title>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>
<body>
	<header role="header">
        <div class="container">
            <!-- Logo -->
            <h1>
                <img src="${pageContext.request.contextPath}/resources/img/art.png" title="ArtConnect"
                        alt="ArtConnect" style="width: 300px; height: auto;"/>
            </h1>
        </div>
    </header>
    <footer role="footer" style="margin: 0 20px;">
    <div class="thumbnails-pan" style="font-size: 20px;">
	<h1 style="margin-top: -80px; margin-left: 10px">예약 페이지</h1>
	<table border="1">
		<thead>
			<tr>
				<th>전시 목록</th>
				<th>전시 이름</th>
				<th>작가</th>
				<th>전시 기간</th>
				<th>전시실</th>
				<th>가격</th>
				<th>연락처</th>
			</tr>
		</thead>
		<tbody>
			<tr class="program-row">
				<td>
				<img src="${pageContext.request.contextPath}/${program.programImg}"
						alt="Program Image" style="width: 200px; height: auto;">
				</td>
				<td>${program.programTitle}</td>
				<td>${program.artist}</td>
				<td><fmt:formatDate value="${program.programStart}"
						pattern="yyyy-MM-dd" /> ~ <fmt:formatDate
						value="${program.programEnd}" pattern="yyyy-MM-dd" /></td>
				<td>${program.programRoom}</td>
				<td><c:choose>
						<c:when test="${program.priceAdult > 0}">
							성인 : ${program.priceAdult}원<br />
						</c:when>
						<c:otherwise>
							성인 : 무료<br />
						</c:otherwise>
					</c:choose> <c:choose>
						<c:when test="${program.priceTeenager > 0}">
							학생 : ${program.priceTeenager}원<br />
						</c:when>
						<c:otherwise>
							학생 : 무료<br />
						</c:otherwise>
					</c:choose> <c:choose>
						<c:when test="${program.priceChild > 0}">
							아동 : ${program.priceChild}원<br />
						</c:when>
						<c:otherwise>
							아동 : 무료<br />
						</c:otherwise>
					</c:choose></td>
				<td>${program.programTel}</td>
			</tr>
		</tbody>
	</table>
	</div>
	</footer>
</body>
</html>
