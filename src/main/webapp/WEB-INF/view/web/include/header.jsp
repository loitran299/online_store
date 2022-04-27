<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
<link href="/css/style.css" rel="stylesheet" type="text/css"/>
<!--begin of menu-->
<nav class="navbar navbar-expand-md navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="${pageContext.request.contextPath}/">Shoes</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse justify-content-end" id="navbarsExampleDefault">
            <ul class="navbar-nav m-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#">Manager Account</a>
                </li>
                <li class="dropdown nav-item">
                    <a class="dropdown-toggle nav-link" data-toggle="dropdown" href="#">Cửa hàng <span class="caret"></span></a>
                    <ul class="dropdown-menu" >
                        <li><a class="dropdown-item" href="">item 1</a></li>
                        <li><a class="dropdown-item" href="">item 1</a></li>
                        <li><a class="dropdown-item" href="">item 1</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/contact">Contacts</a>
                </li>
                <c:if test="${pageContext.request.userPrincipal.name == null}">
                <li class="nav-item">
                    <a class="nav-link" href="<%=request.getContextPath()%>/login">Login</a>
                </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<%=request.getContextPath()%>/register">Register</a>
                    </li>
                </c:if>
                <c:if test="${pageContext.request.userPrincipal.name != null}">
                    <li class="nav-item">
                        <p class = "nav-link">Welcome : ${loggerInUser.userName}</p>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Account</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<%=request.getContextPath()%>/logout">Logout</a>
                    </li>
                </c:if>
            </ul>

            <form action="search" method="post" class="form-inline my-2 my-lg-0">
                <div class="input-group input-group-sm">
                    <input name="txt" type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" placeholder="Search...">
                    <div class="input-group-append">
                        <button type="submit" class="btn btn-secondary btn-number">
                            <i class="fa fa-search"></i>
                        </button>
                    </div>
                </div>
                <a class="btn btn-success btn-sm ml-3" href="/cart">
                    <i class="fa fa-shopping-cart"></i> Cart
                    <span class="badge badge-light">4</span>
                </a>
            </form>
        </div>
    </div>
</nav>
<section class="jumbotron text-center">
    <div class="container">
        <h1 class="jumbotron-heading">Siêu thị giày chất lượng cao</h1>
        <p class="lead text-muted mb-0">Uy tín tạo nên thương hiệu với hơn 10 năm cung cấp các sản phầm giày nhập từ Trung Quốc</p>
    </div>
</section>
