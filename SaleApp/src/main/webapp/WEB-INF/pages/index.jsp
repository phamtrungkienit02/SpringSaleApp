<%-- 
    Document   : index
    Created on : 20 thg 7, 2023, 17:32:27
    Author     : Kien
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <title>Trang chu</title>
    </head>
    <body>
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
  

        <section class="container">
            <h1 class="text-center text-info mt-1">DANH SACH SAN PHAM</h1>
            <div>
                <button class="btn btn-info">Them san pham</button>
            </div>
           <c:if test="${counter > 1}">
                <ul class="pagination mt-1">
                    <li class="page-item"><a class="page-link" href="${action}">Tất cả</a></li>
                        <c:forEach begin="1" end="${counter}" var="i">
                            <c:url value="/" var="pageUrl">
                                <c:param name="page" value="${i}" />
                            </c:url>
                        <li class="page-item"><a class="page-link" href="${pageUrl}">${i}</a></li>
                        </c:forEach>
                    <li class="page-item">
                        <form action="${action}" id="pageSearch">
                            <input type="number" max="${counter}" min="1" name="page" onchange="document.getElementById("pageSearch").submit()" />
                        </form>
                    </li>
                </ul>
            </c:if>
            
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th></th>
                        <th>Id</th>
                        <th>Ten san pham</th>
                        <th>Gia san pham</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${products}" var="p" >
                        <tr>

                            <td>
                                <img src="${p.image}" alt="${p.name}" width="120"/>
                            </td>
                            <td>${p.id}</td>
                            <td>${p.name}</td>
                            <td>${p.price}</td>
                            <td>
                                <a href="#" class="btn btn-info">Cap nhat</a>
                                <button class="btn btn-danger">Xoa</button>
                            </td>
                      </tr>
                    </c:forEach>
                </tbody>
            </table>
        </section>>
    </body>
</html>
