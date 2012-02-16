<%@ page language="java" errorPage="/error.jsp" pageEncoding="EUC-KR" contentType="text/html;charset=EUC-KR" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %><%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="pathForCss" value="${pageContext.request.contextPath}/resources/styles/" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css" href="${pathForCss}style.css"/>
<title>JBCP Pets: ${pageTitle}</title>
</head>
<body>
<div id="header"><ul>
	<c:url value="/" var="homeUrl"/>
	<li><a href="${homeUrl}">Home</a></li>

	<c:url value="/login.do" var="loginUrl"/>
	<li><a href="${loginUrl}">Log In</a></li>

	<c:url value="/account/home.do" var="accountUrl"/>
	<li><a href="${accountUrl}">My Account</a></li>

	<c:url value="/wishlist/home.do" var="wishlistUrl"/>
	<li><a href="${wishlistUrl}">My Wishlist</a></li>
	
</ul>
<br />
</div>