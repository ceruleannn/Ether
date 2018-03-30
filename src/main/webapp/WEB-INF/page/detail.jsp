
<%@ page language="java" pageEncoding="UTF-8"
         contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<html>
<head>
    <title>Single</title>
    <link href="../../ui/css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
    <!-- Custom Theme files -->
    <!--theme-style-->
    <link href="../../ui/css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <!--//theme-style-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <!--theme-style-->
    <link href="../../ui/css/style4.css" rel="stylesheet" type="text/css" media="all"/>
    <!--//theme-style-->
    <script src="../../ui/js/jquery.min.js"></script>

    <link href="../../ui/css/form.css" rel="stylesheet" type="text/css" media="all"/>
</head>
<body>

<!--header-->
<div class="header">
    <div class="container">
        <div class="head">
            <div class=" logo">
                <a href="index.html"><img src="../../ui/images/logo.png" alt=""></a>
            </div>
        </div>
    </div>
    <div class="header-top">
        <div class="container">
            <div class="col-sm-5 col-md-offset-2  header-login">
                <ul>
                    <li><a href="login.html">login</a></li>
                    <li><a href="register.html">Register</a></li>
                    <li><a href="checkout.html">Checkout</a></li>
                </ul>
            </div>

            <div class="clearfix"></div>
        </div>
    </div>

    <div class="container">

        <div class="head-top">

            <div class="col-sm-8 col-md-offset-2 h_menu4">
                <nav class="navbar nav_bottom" role="navigation">

                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header nav_2">
                        <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse"
                                data-target="#bs-megadropdown-tabs">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>

                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
                        <ul class="nav navbar-nav nav_1">
                            <li><a class="color" href="index.html">主页</a></li>

                            <li><a class="color3" href="product.html">新闻</a></li>
                            <li><a class="color4" href="404.html">CPU</a></li>
                            <li><a class="color3" href="product.html">内存</a></li>
                            <li><a class="color4" href="404.html">显卡</a></li>
                            <li><a class="color5" href="typo.html">硬盘</a></li>
                            <li><a class="color6" href="contact.html">呵呵</a></li>
                        </ul>
                    </div><!-- /.navbar-collapse -->

                </nav>
            </div>
            <div class="col-sm-2 search-right">
                <ul class="heart">
                    <li>
                        <a href="wishlist.html">
                            <span class="glyphicon glyphicon-heart" aria-hidden="true"></span>
                        </a></li>
                    <li><a class="play-icon popup-with-zoom-anim" href="#small-dialog"><i
                            class="glyphicon glyphicon-search"> </i></a></li>
                </ul>
                <div class="cart box_1">
                    <a href="checkout.html">
                        <h3>
                            <div class="total">
                                <span class="simpleCart_total"></span></div>
                            <img src="../../ui/images/cart.png" alt=""/></h3>
                    </a>
                    <p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>

                </div>
                <div class="clearfix"></div>

            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!--banner-->
<div class="banner-top">
    <div class="container">
        <h1>Detail</h1>
        <em></em>
        <h2><a href="index.html">Home</a><label>/</label>Detail</h2>
    </div>
</div>
<div class="single">

    <div class="container">
        <div class="col-md-10">
            <div class="col-md-5 grid">
                <div class="flexslider">
                    <ul class="slides">
                        <li data-thumb="../../ui/images/si.jpg">
                            <div class="thumb-image"><img src="../../ui/images/si.jpg" data-imagezoom="true"
                                                          class="img-responsive"></div>
                        </li>
                        <li data-thumb="../../ui/images/si1.jpg">
                            <div class="thumb-image"><img src="../../ui/images/si1.jpg" data-imagezoom="true"
                                                          class="img-responsive"></div>
                        </li>
                        <li data-thumb="../../ui/images/si2.jpg">
                            <div class="thumb-image"><img src="../../ui/images/si2.jpg" data-imagezoom="true"
                                                          class="img-responsive"></div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-md-7 single-top-in">
                <div class="span_2_of_a1 simpleCart_shelfItem">
                    <h3>${requestScope.product.name}</h3>
                    <p class="in-para"> ${requestScope.product.name2}</p>
                    <div class="price_single">
                        <span class="reducedfrom item_price">¥${requestScope.product.price}</span>
                        <a href="#">销量: ${requestScope.product.sales}</a>
                        <div class="clearfix"></div>
                    </div>
                    <h4 class="quick">简介:</h4>
                    <p class="quick_desc"> ${requestScope.product.overview}</p>
                    <div class="wish-list">
                        <ul>
                            <li class="wish"><a href="javascript:"><span class="glyphicon glyphicon-check"
                                                                         aria-hidden="true"></span>${requestScope.product.type.name}</a></li>
                            <li class="compare"><a href="javascript:"><span class="glyphicon glyphicon-check"
                                                                            aria-hidden="true"></span>${requestScope.product.brand.name}</a></li>
                            <li class="compare"><a href="javascript:"><span class="glyphicon glyphicon-check"
                                                                            aria-hidden="true"></span>${requestScope.product.date}</a></li>
                        </ul>
                    </div>
                    <div class="quantity">
                        <div class="quantity-select">
                            <div class="entry value-minus">&nbsp;</div>
                            <div class="entry value"><span>1</span></div>
                            <div class="entry value-plus active">&nbsp;</div>
                        </div>
                    </div>
                    <!--quantity-->
                    <script>
                        $('.value-plus').on('click', function () {
                            var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10) + 1;
                            divUpd.text(newVal);
                        });

                        $('.value-minus').on('click', function () {
                            var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10) - 1;
                            if (newVal >= 1) divUpd.text(newVal);
                        });
                    </script>
                    <!--quantity-->

                    <a href="#" class="add-to item_add hvr-skew-backward">Add to cart</a>
                    <div class="clearfix"></div>
                </div>

            </div>
            <div class="clearfix"></div>
            <!---->
            <div class="tab-head">
                <nav class="nav-sidebar">
                    <ul class="nav tabs">
                        <li class="active"><a href="#tab1" data-toggle="tab">商品介绍</a></li>
                        <li class=""><a href="#tab2" data-toggle="tab">商品参数</a></li>
                        <li class=""><a href="#tab3" data-toggle="tab">售后保障</a></li>
                    </ul>
                </nav>
                <div class="tab-content one">
                    <div class="tab-pane active text-style" id="tab1">
                        <div class="facts">
                            <p> ${requestScope.product.detail1} </p>

                        </div>

                    </div>
                    <div class="tab-pane text-style" id="tab2">

                        <div class="facts">
                            <p> ${requestScope.product.detail2} </p>

                        </div>

                    </div>
                    <div class="tab-pane text-style" id="tab3">

                        <div class="facts">
                            <p> ${requestScope.product.detail3} </p>
                            <ul>
                                <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Research</li>
                                <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Design and
                                    Development
                                </li>
                                <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Porting and
                                    Optimization
                                </li>
                                <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>System integration
                                </li>
                                <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Verification,
                                    Validation and Testing
                                </li>
                                <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Maintenance and
                                    Support
                                </li>
                            </ul>
                        </div>

                    </div>

                </div>
                <div class="clearfix"></div>
            </div>
            <!---->
        </div>
        <!----->
        <div class="clearfix"></div>
    </div>
</div>
<!--brand-->
<div class="container">
    <div class="brand">
        <div class="col-md-3 brand-grid">
            <img src="../../ui/images/ic.png" class="img-responsive" alt="">
        </div>
        <div class="col-md-3 brand-grid">
            <img src="../../ui/images/ic1.png" class="img-responsive" alt="">
        </div>
        <div class="col-md-3 brand-grid">
            <img src="../../ui/images/ic2.png" class="img-responsive" alt="">
        </div>
        <div class="col-md-3 brand-grid">
            <img src="../../ui/images/ic3.png" class="img-responsive" alt="">
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<!--//brand-->

<!--//content-->
<!--//footer-->
<div class="footer">
    <div class="footer-middle">
        <div class="container">
            <div class="col-md-3 footer-middle-in">
                <a href="index.html"><img src="../../ui/images/log.png" alt=""></a>
                <p>Suspendisse sed accumsan risus. Curabitur rhoncus, elit vel tincidunt elementum, nunc urna tristique
                    nisi, in interdum libero magna tristique ante. adipiscing varius. Vestibulum dolor lorem.</p>
            </div>

            <div class="col-md-3 footer-middle-in">
                <h6>Information</h6>
                <ul class=" in">
                    <li><a href="404.html">About</a></li>
                    <li><a href="contact.html">Contact Us</a></li>
                    <li><a href="#">Returns</a></li>
                    <li><a href="contact.html">Site Map</a></li>
                </ul>
                <ul class="in in1">
                    <li><a href="#">Order History</a></li>
                    <li><a href="wishlist.html">Wish List</a></li>
                    <li><a href="login.html">Login</a></li>
                </ul>
                <div class="clearfix"></div>
            </div>
            <div class="col-md-3 footer-middle-in">
                <h6>Tags</h6>
                <ul class="tag-in">
                    <li><a href="#">Lorem</a></li>
                    <li><a href="#">Sed</a></li>
                    <li><a href="#">Ipsum</a></li>
                    <li><a href="#">Contrary</a></li>
                    <li><a href="#">Chunk</a></li>
                    <li><a href="#">Amet</a></li>
                    <li><a href="#">Omnis</a></li>
                </ul>
            </div>
            <div class="col-md-3 footer-middle-in">
                <h6>Newsletter</h6>
                <span>Sign up for News Letter</span>
                <form>
                    <input type="text" value="Enter your E-mail" onfocus="this.value='';"
                           onblur="if (this.value == '') {this.value ='Enter your E-mail';}">
                    <input type="submit" value="Subscribe">
                </form>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>

</div>
<!--//footer-->
<script src="../../ui/js/imagezoom.js"></script>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script defer src="../../ui/js/jquery.flexslider.js"></script>
<link rel="stylesheet" href="../../ui/css/flexslider.css" type="text/css" media="screen"/>

<script>
    // for photo
    $(window).load(function () {
        $('.flexslider').flexslider({
            animation: "slide",
            controlNav: "thumbnails"
        });
    });
</script>

<script src="../../ui/js/simpleCart.min.js"></script>
<!-- slide -->
<script src="../../ui/js/bootstrap.min.js"></script>


</body>
</html>
