<%-- 
    Document   : header
    Created on : 27 thg 7, 2023, 16:56:05
    Author     : Kien
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:url value="/" var="action"/>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">E-commerce Website</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="collapsibleNavbar">
            <ul class="navbar-nav me-auto"> 
                <li class="nav-item">
                    <a class="nav-link" href="${action}">Trang chu</a>
                </li>
                <c:forEach items="${categories}" var="c">
                    <c:url value="/" var="searchUrl">
                        <c:param name="cateId" value="${c.id}" />
                    </c:url>
                    <li class="nav-item">
                        <a class="nav-link" href="${searchUrl}">${c.name}</a>
                    </li>
                </c:forEach>
            </ul>
            <form class="d-flex" action="${action}">
                <input class="form-control me-2" type="text" name="kw"placeholder="Nhap tu khoa">
                <button class="btn btn-primary" type="submit">Tim</button>
            </form>
        </div>
    </div>
</nav>