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
<form action="/admin/deleted/" method="post">
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
                <br>
                <br>
                <li >
                    <button class="btn btn-block btn-primary " onclick="window.location='/admin/add';" type="button" >
                        <i class="fa fa-plus-circle"></i>
                            <span>Add pet</span>
                        </button>
                </li>
<br>
                <li >
                    <button class="btn btn-block btn-primary "  type="button" data-toggle="modal" data-target="#modelId">
                        <i class="fa fa-remove"></i>
                        <span>Delete</span>
                    </button>

                   

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
                            <img class="card-img-top img-fluid" src="../../resources/static/img/bossImg/${item.idboss}.jpg"  alt="${item.bosscharacter}" title="${item.bosscharacter}" style="height: 14em;width: 18em" >
                            <div class="card-body" style="padding-top: 1em">
                                <div class="card-block text-center">
                                    <h4 class="card-title" >${item.bossname}</h4>
                                    <p class="card-text" >

                                        <div class="text-left" style="padding-left: 1em;padding-right: 1em;">
                                    <p>Current Age: ${item.bossage}.</p>
                                    <p>Gender: ${item.gender}.</p>
                                    <p>Vaccine Up-to-Date: ${item.vaccine}
                                    </p>
                                    <p>Registered: ${item.registered}</p>
                                    <p >

                                    <span  style="color: red; font-size: 2em">
                                        ${item.price}
                                    </span>

                                    </p>

                                        </div>

                                    </p>
                                <div class="text-center">

                                    <input type="checkbox" style= "width: 1.2em; height: 1.2em" name = "delete" value = ${item.idboss} >
                                </div>
                                </div>


                            </div>

                        </div>
                        <!----------- end ----------------->

                    </div>
                </c:forEach>

            </div>
            <!----modal-->
            <div class="modal fade" id="modelId" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header text-center " style="background-color: #d9534f">
                                <h3 class="modal-title">Delete Confirm</h3>
                                    </button>
                            </div>
                            <div class="modal-body">
                                <h4>Are you sure ?</h4>
                                
                            </div>
                            <div class="modal-footer">
                                <button type="submit" class="btn btn-secondary" >No! Just kidding, i love him <i class="fa fa-heart"></i></button>
                                <button type="button" class="btn btn-danger"data-dismiss="modal">Delete this</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!---end modal-->

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



</script>
</form>
</body>

</html>
