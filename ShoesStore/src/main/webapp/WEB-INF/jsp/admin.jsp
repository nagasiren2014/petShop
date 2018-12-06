<!DOCTYPE html>
<html lang="en">
<!-- DONG NAY DE GHI TIENG VIET -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!------------------------------------------->
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <title>Pet-Store</title>

    <!-- Favicons -->
    <link href="../../resources/static/img/favicon.png" rel="icon">
    <link href="../../resources/static/img/apple-touch-icon.png" rel="apple-touch-icon">
    <link href="../../resources/static/css/style.css" rel="stylesheet">
    <!-- Bootstrap core CSS -->
    <link href="../../resources/static/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!--external css-->
    <link href="../../resources/static/lib/font-awesome/css/font-awesome.css" rel="stylesheet" />

    <link rel="stylesheet" type="text/css" href="../../resources/static/lib/gritter/css/jquery.gritter.css" />
    <!-- Custom styles for this template -->

    <link href="../../resources/static/css/style-responsive.css" rel="stylesheet">
    <script src="../../resources/static/lib/chart-master/Chart.js"></script>


</head>

<body>
<section id="container">
    <!-- **********************************************************************************************************************************************************
        TOP BAR CONTENT & NOTIFICATIONS
        *********************************************************************************************************************************************************** -->
    <!--header start-->
    <header class="header black-bg">
        <div class="sidebar-toggle-box">
            <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
        </div>
        <!--logo start-->

            <a href="/admin" class="logo" ><b>Boss<span>Store</span></b></a>

        <!--logo end-->
        <div class="nav notify-row" id="top_menu">
            <!--  notification start -->

            <!--  notification end -->
        </div>
        <div class="top-menu">
            <ul class="nav pull-right top-menu">
                <li><a class="logout" href="/">Logout</a></li>
            </ul>
        </div>
    </header>
    <!--header end-->
    <!-- **********************************************************************************************************************************************************
        MAIN SIDEBAR MENU
        *********************************************************************************************************************************************************** -->
    <!--sidebar start-->
    <aside>
        <div id="sidebar" class="nav-collapse ">
            <!-- sidebar menu start-->
            <ul class="sidebar-menu" id="nav-accordion">
                <p class="centered"><a href="profile.html"><img src="../../resources/static/img/ui-sam.jpg" class="img-circle" width="80"></a></p>
                <h5 class="centered" name = "id">${index}</h5>
                <h5 class="centered" name = "nameLogin">${nameLogin}</h5>
                <li class="sub-menu">
                    <form class="form-group" method="post">

                         <input type="text" class="form-control" name="name"  aria-describedby="helpId" placeholder="Search here ..." >

                    </form>
                    <a href="admin/add" class="dcjq-parent">
                            <i class="fa fa-plus-square-o" aria-hidden="true" ></i>
                            <span class="text-primary " style = "font-size: medium; color: #ff2ea9; ">Add Pet</span>
                            <span class="dcjq-icon"></span></a>
                    
                </li>
            </ul>
            <!-- sidebar menu end-->
        </div>
    </aside>
    <!--sidebar end-->
    <!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
    <!--main content start-->
    <section id="main-content" >
        <section class="wrapper">
            <div class="row" style="align-items: center;float: bottom">
                <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
                <c:forEach items="${bossList}" var="item">
                    <div class="col-xs-3">
                        <!----------- PRODUCT CARD ----------------->
                        <div class="card" style="margin-top: 1em; width: 250px; height: 450px">
                            <img class="card-img-top" src="../../resources/static/img/bossImg/${item.idboss}.jpg"  alt="${item.bosscharacter}" title="${item.bosscharacter}" style="width: 250px;height: 200px">
                            <div class="card-body" style="padding-top: 1em">
                                <div class="card-block text-center">
                                    <h4 class="card-title" >${item.bossname}</h4>
                                    <p class="card-text" >

                                        <div class="text-left" style="padding-left: 1em;padding-right: 1em;">
                                    <p>Current Age: ${item.bossage}.</p>
                                    <p>Gender: ${item.gender}.</p>
                                    <p>Vaccine Up-to-Date: ${item.vaccine}
                                    </p>
                                    <p>Price:

                                    <span style="color: red; font-size: 1.25em">
                                        ${item.price}
                                    </span>

                                    </p>
                                    <br>
                                        </div>

                                    </p>
                                        <div class="text-left" style="padding-left: 2em">
                                        <button type="button" class="btn btn-primary" style="margin-bottom: 2em" name = ${item.idboss}>Edit</button>
                                            <span class="text-right" style="padding-left: 5.5em">
                                        <button type="button" class="btn btn-danger" style="margin-bottom: 2em" name = ${item.idboss}>Delete</button>
                                        </span>
                                        </div>

                                </div>


                            </div>

                        </div>
                        <!----------- end ----------------->

                    </div>
                </c:forEach>

            </div>



        </section>
    </section>
    <!--main content end-->
      <!--main content end-->
    
    
</section>
<!-- js placed at the end of the document so the pages load faster -->
<script src="../../resources/static/lib/jquery/jquery.min.js"></script>

<script src="../../resources/static/lib/bootstrap/js/bootstrap.min.js"></script>
<script class="include" type="text/javascript" src="../../resources/static/lib/jquery.dcjqaccordion.2.7.js"></script>
<script src="../../resources/static/lib/jquery.scrollTo.min.js"></script>
<script src="../../resources/static/lib/jquery.nicescroll.js" type="text/javascript"></script>
<script src="../../resources/static/lib/jquery.sparkline.js"></script>
<!--common script for all pages-->
<script src="../../resources/static/lib/common-scripts.js"></script>
<script type="text/javascript" src="../../resources/static/lib/gritter/js/jquery.gritter.js"></script>
<script type="text/javascript" src="../../resources/static/lib/gritter-conf.js"></script>
<!--script for this page-->
<script src="../../resources/static/lib/sparkline-chart.js"></script>
<script src="../../resources/static/lib/zabuto_calendar.js"></script>

<script type="application/javascript">
    $(document).ready(function() {
        $("#date-popover").popover({
            html: true,
            trigger: "manual"
        });
        $("#date-popover").hide();
        $("#date-popover").click(function(e) {
            $(this).hide();
        });

        $("#my-calendar").zabuto_calendar({
            action: function() {
                return myDateFunction(this.id, false);
            },
            action_nav: function() {
                return myNavFunction(this.id);
            },
            ajax: {
                url: "show_data.php?action=1",
                modal: true
            },
            legend: [{
                type: "text",
                label: "Special event",
                badge: "00"
            },
                {
                    type: "block",
                    label: "Regular event",
                }
            ]
        });
    });

    function myNavFunction(id) {
        $("#date-popover").hide();
        var nav = $("#" + id).data("navigation");
        var to = $("#" + id).data("to");
        console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);
    }
</script>
</body>

</html>
