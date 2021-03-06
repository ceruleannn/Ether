
<%@ page language="java" pageEncoding="UTF-8"
         contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>

    <base href="${pageContext.request.contextPath}" />

    <title>我的订单</title>
    <link href="../../ui/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <!-- Custom Theme files -->
    <!--theme-style-->
    <link href="../../ui/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!--//theme-style-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Shopin Responsive web template, Bootstrap Web Templates, Flat Web Templates, AndroId Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!--theme-style-->
    <link href="../../ui/css/style4.css" rel="stylesheet" type="text/css" media="all" />
    <!--//theme-style-->
    <script src="../../ui/js/jquery.min.js"></script>

    <script src="../../admin/js/vue.js"></script>


</head>
<body>

<!--header-->
<div class="header">
    <div class="container">
        <div class="head">
            <div class=" logo">
                <a href="/index"><img src="../../ui/images/logo.png" alt=""></a>
            </div>
        </div>
    </div>
    <div class="header-top">
        <div class="container">
            <div class="col-sm-5 col-md-offset-2  header-login">
                <ul >

                    <c:choose>

                        <c:when test="${sessionScope.user==null}">
                            <li><a href="/u/login">登陆</a></li>
                            <li><a href="/u/sign">注册</a></li>
                        </c:when>
                        <c:otherwise>
                            <li><a href="#">欢迎你 ${sessionScope.user.username}</a></li>
                            <li><a href="/u/logout">注销</a></li>
                            <li><a href="/u/edit">修改密码</a></li>
                            <li><a href="/o/order">订单</a></li>
                        </c:otherwise>
                    </c:choose>
                </ul>
            </div>

            <div class="clearfix"> </div>
        </div>
    </div>

    <div class="container">

        <div class="head-top">

            <div class="col-sm-8 col-md-offset-2 h_menu4">
                <nav class="navbar nav_bottom" role="navigation">

                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header nav_2">
                        <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>

                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
                        <ul class="nav navbar-nav nav_1">
                            <li><a class="color" href="/index">主页</a></li>


                            <li><a class="color4" href="/p/list?type=1">CPU</a></li>
                            <li><a class="color3" href="/p/list?type=3">内存</a></li>
                            <li><a class="color4" href="/p/list?type=2">显卡</a></li>
                            <li><a class="color5" href="/p/list?type=4">硬盘</a></li>
                            <li><a class="color6" href="/p/list?type=5"></a></li>
                            <li><a class="color3" href="/p/list?type=1">新闻</a></li>
                        </ul>
                    </div><!-- /.navbar-collapse -->

                </nav>
            </div>
            <div class="col-sm-2 search-right">

                <div class="cart box_1">
                    <a href="/c/checkout">
                        <h3> <div class="total">
                            <span class="simpleCart_total"></span></div>
                            <img src="../../ui/images/cart.png" alt=""/></h3>
                    </a>
                    <p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>

                </div>
                <div class="clearfix"> </div>

            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!--banner-->
<div class="banner-top">
    <div class="container">
        <h1>订单</h1>
        <em></em>
        <h2><a href="index.html">Home</a><label>/</label>订单</h2>
    </div>
</div>

<div class="container">
    <div class="check-out">
        <div class="bs-example4" data-example-id="simple-responsive-table">
            <div id="list" class="table-responsive">
                <table class="table-heading simpleCart_shelfItem">
                    <tr>
                        <th class="table-grid">宝贝</th>

                        <th >数量 </th>
                        <th>价格</th>
                        <th >状态 </th>
                        <th>物流</th>
                        <th>操作</th>
                    </tr>

                    <template v-for="order in orders" :key="order.oid">

                        <tr v-for="detail in order.details" class="cart-header">

                            <td  class="ring-in"><a :href="'/p/detail/'+detail.product.pid" class="at-in"><img
                                    :src="detail.product.pic1" class="img-responsive" alt=""></a>
                                <div class="sed">
                                    <p>订单号: {{order.oid}} &nbsp;&nbsp;&nbsp; - &nbsp; &nbsp;&nbsp;{{ order.date | time }}</p>
                                    <h5><a :href="'/p/detail/'+detail.product.pid">{{detail.product.name}}</a></h5>

                                </div>
                                <div sclass="clearfix"></div>
                            </td>
                            <td>{{detail.number}}</td>
                            <td>{{detail.price}}</td>
                            <td>{{order.status}}</td>
                            <td class="item_price">{{order.deliverCompany}} {{order.deliverid}}</td>
                            <td v-if="order.status=='待收货'"><button :id="order.oid" onclick="getProduct(this)" class="btn btn-default"> 收货 </button></td>

                        </tr>
                    </template>
                </table>
            </div>
        </div>

    </div>
</div>

<!--//login-->
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
</div>

</div>
<!--//content-->
<!--//footer-->
<div class="footer">
    <div class="footer-middle">
        <div class="container">
            <div class="col-md-3 footer-middle-in">
                <a href="index.html"><img src="../../ui/images/log.png" alt=""></a>
                <p>Suspendisse sed accumsan risus. Curabitur rhoncus, elit vel tincidunt elementum, nunc urna tristique nisi, in interdum libero magna tristique ante. adipiscing varius. Vestibulum dolor lorem.</p>
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
                    <input type="text" value="Enter your E-mail" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='Enter your E-mail';}">
                    <input type="submit" value="Subscribe">
                </form>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>

</div>

<script src="../../ui/js/simpleCart.min.js"> </script>
<!-- slide -->
<script src="../../ui/js/bootstrap.min.js"></script>

</body>
</html>


<script type="text/javascript">

    var vue = new Vue({
        el: '#list',
        data: {orders: []},
        methods: {
            add: function (data) {
                this.orders = data;
            }
        },
        filters:{
            time:function (value) {

                function add0(m) {
                    return m < 10 ? '0' + m : m
                }

                var time = new Date(parseInt(value));
                var y = time.getFullYear();
                var m = time.getMonth() + 1;
                var d = time.getDate();

                var h = time.getHours();
                var i = time.getMinutes();
                var s = time.getSeconds();

                return y + '-' + add0(m) + '-' + add0(d)+ ' '+ add0(h)+ ':'+add0(i)+':'+add0(s);
            }
        },
        mounted:function () {
            var that = this;
            $.get('/o/order.do',null,function (data) {
                that.add(data);
            },'json')
        }

    });

    function getProduct(id) {
        $.get('/o/gotProduct',{oid:id.id},function (data) {
            window.location.href = data.url;
        },'json')
    }

</script>