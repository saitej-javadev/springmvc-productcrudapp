<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <%@include file="./base.jsp" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <title>Document</title>
</head>
<body>

<div class="container mt-3">

      <div class="row">
      <div class="col-md-12">

          <h2 class="text-center mb-3">LIST OF PRODUCTS</h2>
          <form action="add-product">
          <table class="table table-hover table table-bordered table-responsive-md" >
              <thead class="thead-dark">
              <tr>
                  <th scope="col">Product Id</th>
                  <th scope="col">Product Name</th>
                  <th scope="col">Description</th>
                  <th scope="col">Price</th>
                  <th scope="col">Action</th>
              </tr>
              </thead>
              <tbody>
              <c:forEach items="${products}" var="product">
              <tr>

                  <th scope="row">${product.id}</th>
                  <td>${product.name}</td>
                  <td>${product.description}</td>
                  <td class="font-weight-bold"> &#8377; ${product.price}</td>
                  <td>
                    <a href="delete-product/${product.id}"><i class="fa-solid fa-trash-can"></i></a>&nbsp;&nbsp;&nbsp;
                    <a href="update-form/${product.id}"><i class="fa-solid fa-wrench"></i></a>
                  </td>
              </tr>
              </c:forEach>
              </tbody>
          </table>

          <div class="container text-center">

              <button type="submit" class="btn btn-primary">Add</button>
          </div>
          </form>
      </div>
</div>
</div>
</body>
</html>