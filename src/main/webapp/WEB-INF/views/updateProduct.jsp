
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="./base.jsp" %>
<html>
<head>
    <title>Update-Product Page</title>
    <link rel="stylesheet" href="../resources/css/style.css">
</head>
<body>

<div class="container">
    <div class=" text-center mt-5 ">

        <h2>UPDATE PRODUCT DETAILS</h2>


    </div>


    <div class="row ">
        <div class="col-lg-7 mx-auto">
            <div class="card mt-2 mx-auto p-4 bg-light">
                <div class="card-body bg-light">

                    <div class="container">
                     <form action="${pageContext.request.contextPath}/update-product" method="post">
                            <div class="controls">
                                <input type="hidden" value="${product.id}" name="id"/>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="name">Product Name <span style="color: red">*</span></label>
                                            <input id="name" type="text" name="name" class="form-control"
                                                   placeholder=" Enter Product name " required="required"
                                                   data-error="Product Name is required." value="${product.name}">

                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="price">Price <span style="color: red">*</span></label>
                                            <input id="price" type="text" name="price" class="form-control"
                                                   placeholder="Enter Price " required="required"
                                                   data-error="Price is required." value="${product.price}">
                                        </div>
                                    </div>
                                </div>


                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="description">Description <span
                                                    style="color: red">*</span></label>
                                            <textarea  id="description" name="description" class="form-control"
                                                       rows="4"  placeholder="Enter description">${product.description}</textarea>
                                        </div>

                                    </div>


                                    <div class="col-md-12 text-center">

                                        <a href="${pageContext.request.contextPath}/" class="btn btn-outline-danger">Back</a>

                                        <input type="submit" class="btn btn-secondary
                            " value="Update">

                                    </div>

                                </div>


                            </div>
                        </form>
                    </div>
                </div>


            </div>
            <!-- /.8 -->

        </div>
        <!-- /.row-->

    </div>
</div>

</body>
</html>
