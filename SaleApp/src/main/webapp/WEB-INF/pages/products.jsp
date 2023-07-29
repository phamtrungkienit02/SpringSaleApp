<%-- 
    Document   : products
    Created on : 27 thg 7, 2023, 17:24:15
    Author     : Kien
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<h1 class="text-center text-info mt-1">QUAN LY SAN PHAM</h1>
<!--enctype="multipart/form-data" de upload-->
<form:form modelAttribute="product" method="post" enctype="multipart/form-data">
    <!--path tro den column name cua product-->
    <div class="form-floating mb-3 mt-3">
        <form:input type="text" class="form-control" path="name" id="name" placeholder="Ten san pham" name="email"/>
        <label for="name">Ten san pham</label>
    </div>
    <div class="form-floating mb-3 mt-3">
        <form:input type="text" class="form-control" path="name" id="name" placeholder="Ten san pham" name="email"/>
        <label for="name">Ten san pham</label>

    </div>
    <div class="form-floating">
        <form:select class="form-select" id="cate" name="cate" path="categoryId">
            <c:forEach items="${categories}" var="c">
                <option value="${c.id}">${c.name}</option>
            </c:forEach>
        </form:select>
        <label for="cate" class="form-label">Danh muc san pham</label>
    </div>    
    <div class="form-floating mb-3 mt-3">
        <form:input type="file" class="form-control" path="file" id="name" placeholder="Ten san pham" name="email"/>
        <label for="name">Anh san pham</label>
    </div>
        <div class="form-floating mb-3 mt-3">
            <button class="btn btn-info mt-1" value="Them san pham" type="submit">Them san pham</button>
        </div>
        
        
</form:form>