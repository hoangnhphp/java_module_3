<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 12/18/2024
  Time: 8:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calculate</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-12">
                <form method="post" action="/calculate">
                    <div class="row align-items-center">
                        <label class="col-sm-2 col-form-label">Product Description</label>
                        <div class="col-sm-5">
                            <input type="text" class="form-control form-control-sm" name="description" value="${description}">
                        </div>
                    </div>
                    <div class="row align-items-center">
                        <label class="col-sm-2 col-form-label">List Price</label>
                        <div class="col-sm-5">
                            <input type="text" class="form-control form-control-sm" name="price" value="${price}">
                        </div>
                    </div>
                    <div class="row align-items-center">
                        <label class="col-sm-2 col-form-label">Discount Percent</label>
                        <div class="col-sm-5">
                            <input type="text" class="form-control form-control-sm" name="discount" value="${discount}">
                        </div>
                    </div>
                    <div class="mt-4 ml-2 text-center">
                        <button type="submit" class="btn btn-sm btn-info">Calculate</button>
                    </div>
                </form>
                <div>
                    <p>
                        Discount Amount: ${amount}
                    </p>
                    <p>
                        Discount Price: ${result}
                    </p>
                </div>
            </div>
        </div>
    </div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</html>
