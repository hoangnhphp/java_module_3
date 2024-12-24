<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 12/23/2024
  Time: 8:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>List Customer</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <table class="table table-hover align-middle">
            <thead>
                <tr>
                    <th>STT</th>
                    <th width="40%">Tên</th>
                    <th>Ngày sinh</th>
                    <th>Địa chỉ</th>
                    <th class="text-center">Ảnh</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${customers}" var="customer" varStatus="temp">
                    <tr>
                        <td>${temp.count}</td>
                        <td>${customer.name}</td>
                        <td>${customer.dob}</td>
                        <td>${customer.address}</td>
                        <td style="height: 100px; width: 100px">
                            <img style="width: 100%; height: auto" src="<c:url value="${customer.avatar}"/>" alt="">
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</html>
