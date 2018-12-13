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
    <!-- Bootstrap core CSS -->
    <link href="../../resources/static/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!--external css-->
    <link href="../../resources/static/lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="../../resources/static/css/style.css" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="../../resources/static/lib/gritter/css/jquery.gritter.css" />
    <!-- Custom styles for this template -->

    <link href="../../resources/static/css/style-responsive.css" rel="stylesheet">
    <script src="../../resources/static/lib/chart-master/Chart.js"></script>


</head>

<body>

<section id="container">
    <form action="/admin/pets/editSuccess?idedit=${boss.idboss}" enctype="multipart/form-data" method="post">
        <!-- **********************************************************************************************************************************************************
            TOP BAR CONTENT & NOTIFICATIONS
            *********************************************************************************************************************************************************** -->
        <!--header start-->
        <header class="header black-bg">
            <div class="sidebar-toggle-box">
                <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
            </div>
            <!--logo start-->
            <a href="/admin" class="logo"><b>Boss<span>Store</span></b></a>
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
                    <p class="centered"><a href="#"><img src="../../resources/static/img/ui-sam.jpg" class="img-circle" width="90"></a></p>
                    <h5 class="centered" name = "id">${index}</h5>
                    <h5 class="centered" name = "nameLogin">${nameLogin}</h5>
                    <br>
                    <br>
                    <li class="sub-menu">

                        <button class="btn btn-block btn-primary " onclick="window.location='/admin/pets';" type="button" >
                            <i class="fa fa-remove"></i>
                            <span>Cancel</span>
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
                <div class="col-sm-5 " style="margin-left: 5em">
                    <h2 class="text-center">Your pet's information</h2>
                    <div class="form-group" style="margin-top: 2em">
                        <label for="" style = "margin-top: 1em">Kind(Dog or Cat) <br> <p style="color: red">current: ${boss.bosskind}</p></label>
                        <span>

                                           <div class="form-group" style="font-size: larger">
                                                <label for=""></label>
                                                    <select class="custom-select" name="kind">
                                                        <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
                                                                <c:forEach items="${kindList}" var="item">
                                                                    <option selected value = ${item.idkind}>${item.name}</option>
                                                                </c:forEach>
                                                    </select>
                                        </div>

                            </span>

                        <label for=""style = "margin-top: 1em">Gender <br> <p style="color: red">current: ${boss.gender}</p></label>
                        <span>
                                  <div class="form-group" style="font-size: larger">
                                                <label for=""></label>
                                                    <select class="custom-select" name="gender">
                                                        <option selected>Male</option>
                                                        <option selected>Female</option>
                                                    </select>
                                        </div>

                            </span>
                        <label for=""style = "margin-top: 1em">Vaccine Up-to-Date <br> <p style="color: red">current: ${boss.vaccine}</p></label>
                        <span>
                                  <div class="form-group" style="font-size: larger">
                                                <label for=""></label>
                                                    <select class="custom-select" name="vaccine" id="">
                                                        <option selected>Yes</option>
                                                        <option selected>No</option>

                                                    </select>
                                        </div>

                            </span>

                        <label for=""style = "margin-top: 1em">Registered <br> <p style="color: red">current: ${boss.registered}</p></label>
                        <span>
                                 <div class="form-group" style="font-size: larger">
                                                <label for=""></label>
                                                    <select class="custom-select" name="registered" id="">
                                                        <option selected>Yes</option>
                                                        <option selected>No</option>

                                                    </select>
                                        </div>

                            </span>

                        <label for="" style = "margin-top: 1em">Name</label>
                        <span>
                                 <input type="text" name="nem" value="${boss.bossname}" class="form-control" placeholder="" aria-describedby="helpId">

                            </span>



                        <label for=""style = "margin-top: 1em">Character</label>
                        <span>
                                 <input type="text" name="character" value="${boss.bosscharacter}" class="form-control" placeholder="" aria-describedby="helpId">

                            </span>


                        <label for=""style = "margin-top: 1em">Age</label>
                        <span>
                                 <input type="text" name="age" class="form-control" value="${boss.bossage}" placeholder="" aria-describedby="helpId">

                            </span>

                        <label for=""style = "margin-top: 1em">Price</label>
                        <span>
                                 <input type="text" name="price" class="form-control" value="${boss.price}" placeholder="" aria-describedby="helpId">

                            </span>
                        <br>



                        <button type="submit" class="btn btn-primary">SAVE</button>



                    </div>
                </div>


                <div class="col-sm-5" style="margin-left: 3em">
                    <h2 class="text-center" style="padding-top: 0.2em">Your pet's image:</h2>
                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
                    <img src="../../resources/static/img/bossImg/${boss.idboss}.jpg" id="imgshow" align="left" style="width: 450px;height: auto;padding-top: 3.5em">
                    <input type="file" id="imgload" name="file" style="padding-top: 4em">



                </div>


            </section>
        </section>
        <!--main content end-->
        <!--main content end-->

    </form>
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


    $('document').ready(function () {
        $("#imgload").change(function () {
            if (this.files && this.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#imgshow').attr('src', e.target.result);
                }
                reader.readAsDataURL(this.files[0]);
            }
        });
    });

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
