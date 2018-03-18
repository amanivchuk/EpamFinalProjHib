<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 3/17/2018
  Time: 11:40 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="ua.nure.manivchuk.model.Car"%>
<%@ page import="ua.nure.manivchuk.service.CarService" %>
<%@ page import="java.util.List" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html"; charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Auto Rent</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
</head>

<body>


<header>
    <div class="menu-top">
        <nav class="navbar navbar-default">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                <span class="flag"><img src="img/flag.jpg" alt=""></span>English <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#" >Russian</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Currency: USD<span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Currency: EUR</a></li>
                            </ul>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#">Account</a></li>
                        <li><a href="#">Wishlist</a></li>
                        <li><a href="#">Checkout</a></li>
                        <!--  <li><a href="#">Log in</a></li>-->
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><b>Login</b> <span class="caret"></span></a>
                            <ul id="login-dp" class="dropdown-menu">
                                <li>
                                    <div class="row">
                                        <div class="col-md-12">
                                            Login via
                                            <div class="social-buttons">
                                                <a href="#" class="btn btn-fb"><i class="fa fa-facebook"></i> Facebook</a>
                                                <a href="#" class="btn btn-tw"><i class="fa fa-twitter"></i> Twitter</a>
                                            </div>
                                            or
                                            <form class="form" role="form" method="post" action="login" accept-charset="UTF-8" id="login-nav">
                                                <div class="form-group">
                                                    <label class="sr-only" for="exampleInputEmail2">Email address</label>
                                                    <input type="email" class="form-control" id="exampleInputEmail2" placeholder="Email address" required>
                                                </div>
                                                <div class="form-group">
                                                    <label class="sr-only" for="exampleInputPassword2">Password</label>
                                                    <input type="password" class="form-control" id="exampleInputPassword2" placeholder="Password" required>
                                                    <div class="help-block text-right"><a href="">Forget the password ?</a></div>
                                                </div>
                                                <div class="form-group">
                                                    <button type="submit" class="btn btn-primary btn-block">Sign in</button>
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox"> keep me logged-in
                                                    </label>
                                                </div>
                                            </form>
                                        </div>
                                        <div class="bottom text-center">
                                            New here ? <a href="#"><b>Join Us</b></a>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>

    </div><!--.menu-top-->
    <div class="menu-second">
        <nav class="navbar navbar-default">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Auto rent</a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="my"><a href="#">Home </a></li>
                        <li class="my"><a href="#">Other</a></li>
                        <li class="my"><a href="#">Purchase</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <form class="navbar-form navbar-left">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Search">
                            </div>
                            <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span></button>
                        </form>
                        <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"><span class="bought">cart (0)</span></span></a></li>

                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
    </div><!--menu-second-->
    <div class="menu-carosel">
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <div class="bgslid" style="background-image: url(img/corolla.jpg)"></div>
                    <div class="carousel-caption">
                        <h1> ALUMINUM CLUB</h1>
                        <h1> experience ray-ban</h1>
                    </div>
                </div>
                <div class="item">
                    <div class="bgslid" style="background-image: url(img/rav4.jpg)"></div>
                    <div class="carousel-caption">
                        <h1> ALUMINUM CLUB</h1>
                        <h1> experience ray-ban</h1>
                    </div>
                </div>
            </div>

            <!-- Controls -->
            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div><!--menu-carosel-->
</header><!--.header//-->

<section class="main-slogan">
    <div class="container">
        <h1>featured products</h1>
    </div>
</section>
<section class="main-content">
    <div class="container">
        <div class="row">
            <div class="col-md-9 ">
                <div class="content">
                    <div class="products-row">

                        <%
                            CarService carService = new CarService();
                            List<Car> list = carService.getListOfCars();
                            session.setAttribute("currentCarList", list);
                            for(Car c : list){
                        %>


                        <div class="col-sm-4">
                            <div class="product">
                                <div class="product-favorites">
                                    <span class="glyphicon glyphicon-heart"></span>
                                </div><!--product-favorites-->
                                <div class="product-img">
                                   <%-- <a href=""><img src="img/goods1.jpg" alt=""></a>--%>
                                       <a href="content.jsp?index=<%=list.indexOf(c)%>"><img src="<%=request.getContextPath()%>/ShowImage?index=<%=list.indexOf(c)%>" alt="Обложка"/> </a>

                                </div><!--product-img-->
                                <p class="product-title">
                                    <%--<a href="">cream jane jeans dress</a>--%>
                                        <a href=""><%=c.getMark()%></a>
                                </p>
                                <p class="product-desc">
                                    <%--Signature NYX cosmetics--%>
                                        <p>Class: <%=c.getCarclass()%></p>
                                        <p>Country: <%=c.getIssuecountry()%></p>
                                        <p>Year: <%=c.getIssueyear()%></p>
                                </p>
                                <div class="product-buy">
                                    <p class="product-price">
                                        Price $10.00
                                    </p>
                                    <a href="" class="btn btn-default">add to cart</a>
                                </div><!--product-buy-->
                            </div><!--product-->
                        </div>

                        <%
                            }
                        %>
                      <%--  <div class="col-sm-4">
                            <div class="product">
                                <div class="product-sale img-circle">
                                    <span>Sale</span>
                                </div><!--product-favorites-->
                                <div class="product-img">
                                    <a href=""><img src="img/goods1.jpg" alt=""></a>
                                </div><!--product-img-->
                                <p class="product-title">
                                    <a href="">cream jane jeans dress</a>
                                </p>
                                <p class="product-desc">
                                    Signature NYX cosmetics
                                </p>
                                <div class="product-buy">
                                    <p class="product-price">
                                        Price $10.00
                                    </p>
                                    <a href="" class="btn btn-default">add to cart</a>
                                </div><!--product-buy-->
                            </div><!--product-->
                        </div>
                        <div class="col-sm-4">
                            <div class="product">
                                <div class="product-favorites">
                                    <span class="glyphicon glyphicon-heart"></span>
                                </div><!--product-favorites-->
                                <div class="product-img">
                                    <a href=""><img src="img/goods1.jpg" alt=""></a>
                                </div><!--product-img-->
                                <p class="product-title">
                                    <a href="">cream jane jeans dress</a>
                                </p>
                                <p class="product-desc">
                                    Signature NYX cosmetics
                                </p>
                                <div class="product-buy">
                                    <p class="product-price">
                                        Price $10.00
                                    </p>
                                    <a href="" class="btn btn-default">add to cart</a>
                                </div><!--product-buy-->
                            </div><!--product-->
                        </div>
                        <div class="col-sm-4">
                            <div class="product">
                                <div class="product-favorites">
                                    <span class="glyphicon glyphicon-heart"></span>
                                </div><!--product-favorites-->
                                <div class="product-img">
                                    <a href=""><img src="img/goods1.jpg" alt=""></a>
                                </div><!--product-img-->
                                <p class="product-title">
                                    <a href="">cream jane jeans dress</a>
                                </p>
                                <p class="product-desc">
                                    Signature NYX cosmetics
                                </p>
                                <div class="product-buy">
                                    <p class="product-price">
                                        Price $10.00
                                    </p>
                                    <a href="" class="btn btn-default">add to cart</a>
                                </div><!--product-buy-->
                            </div><!--product-->
                        </div>
                        <div class="col-sm-4">
                            <div class="product">
                                <div class="product-favorites">
                                    <span class="glyphicon glyphicon-heart"></span>
                                </div><!--product-favorites-->
                                <div class="product-img">
                                    <a href=""><img src="img/goods1.jpg" alt=""></a>
                                </div><!--product-img-->
                                <p class="product-title">
                                    <a href="">cream jane jeans dress</a>
                                </p>
                                <p class="product-desc">
                                    Signature NYX cosmetics
                                </p>
                                <div class="product-buy">
                                    <p class="product-price">
                                        Price $10.00
                                    </p>
                                    <a href="" class="btn btn-default">add to cart</a>
                                </div><!--product-buy-->
                            </div><!--product-->
                        </div>
                        <div class="col-sm-4">
                            <div class="product">
                                <div class="product-favorites">
                                    <span class="glyphicon glyphicon-heart"></span>
                                </div><!--product-favorites-->
                                <div class="product-img">
                                    <a href=""><img src="img/goods1.jpg" alt=""></a>
                                </div><!--product-img-->
                                <p class="product-title">
                                    <a href="">cream jane jeans dress</a>
                                </p>
                                <p class="product-desc">
                                    Signature NYX cosmetics
                                </p>
                                <div class="product-buy">
                                    <p class="product-price">
                                        Price $10.00
                                    </p>
                                    <a href="" class="btn btn-default">add to cart</a>
                                </div><!--product-buy-->
                            </div><!--product-->
                        </div>
                        <div class="col-sm-4">
                            <div class="product">
                                <div class="product-favorites">
                                    <span class="glyphicon glyphicon-heart"></span>
                                </div><!--product-favorites-->
                                <div class="product-img">
                                    <a href=""><img src="img/goods1.jpg" alt=""></a>
                                </div><!--product-img-->
                                <p class="product-title">
                                    <a href="">cream jane jeans dress</a>
                                </p>
                                <p class="product-desc">
                                    Signature NYX cosmetics
                                </p>
                                <div class="product-buy">
                                    <p class="product-price">
                                        Price $10.00
                                    </p>
                                    <a href="" class="btn btn-default">add to cart</a>
                                </div><!--product-buy-->
                            </div><!--product-->
                        </div>--%>

                    </div><!--products-row-->
                </div><!--content-->
            </div>
            <div class="col-md-3">
                <div class="sidebar">
                    <h3>sidebar</h3>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="bottom-content">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="icon">
                    <span class="glyphicon glyphicon-road"></span>
                </div>
                <div class="bottom-p">Free shipping on orders over $100</div>
            </div>
            <div class="col-md-6">
                <div class="icon">
                    <span class="glyphicon glyphicon-phone"></span>
                </div>
                <div class="bottom-p">call us! toLl free- 409-8888-0099</div>
            </div>
        </div>
    </div>
</section>
<section class="bottom-content2">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="my-footer">

                </div>
            </div>
        </div>
    </div>
</section>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/script.js"></script>
</body>
</html>