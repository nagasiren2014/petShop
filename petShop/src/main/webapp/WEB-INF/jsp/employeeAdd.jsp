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
    <link href="/css/bootstrap.min.css" rel="stylesheet">

    <!--external css-->
    <link href="../../resources/static/lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="../../resources/static/css/style.css?v=1.0" rel="stylesheet" type="text/css" />

    <link rel="stylesheet" type="text/css" href="../../resources/static/lib/gritter/css/jquery.gritter.css" />
    <!-- Custom styles for this template -->

    <link href="../../resources/static/css/style-responsive.css" rel="stylesheet">
    <script src="../../resources/static/lib/chart-master/Chart.js"></script>
    <link rel="stylesheet" type="text/css" href="../../resources/static/lib/bootstrap-fileupload/bootstrap-fileupload.css" />
    <link rel="stylesheet" type="text/css" href="../../resources/static/lib/bootstrap-datepicker/css/datepicker.css" />


</head>

<body>

<section id="container">
    <form action="/admin/employee/addSuccess" enctype="multipart/form-data" method="post">
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

                        <button class="btn btn-block btn-primary " onclick="window.location='/admin/employee';" type="button" >
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
                    <h2 class="text-center">Resume:</h2>
            <div style="font-size: larger">


                <label  style = "margin-top: 1em">First name: <input type="text" class="form-control" name = "firstname" autofocus  ></label>

                <label  style = "margin-top: 1em">Last name: <input type="text" class="form-control" name = "lastname" ></label>
                <br>
                <!---------AGE----------->
                <label  style = "margin-top: 1em">Age: <input type="text" class="form-control" name = "age" ></label>
                <br>
                <!-------------------------------------->

                <!---------ADDRESS----------->
                <label  style = "margin-top: 1em">Address: <input type="text" class="form-control" name = "address" ></label>
                <br>
                <!-------------------------------------->

                <!---------PHONE----------->
                <label style = "margin-top: 1em">Phone: <input type="text" class="form-control" name = "phone" ></label>
                <br>
                <!-------------------------------------->

                <!---------DAY IN----------->
                <label style = "margin-top: 1em">Day in:  </label>

                <div data-date-viewmode="years" data-date-format="dd-mm-yyyy" data-date="01-01-2014" class="input-append date dpYears" style="width:  40%">
                    <input type="text" readonly=""  size="16" class="form-control" name = "dayin">
                    <span class="input-group-btn add-on">
                                            <button class="btn btn-theme" type="button"><i class="fa fa-calendar"></i></button>
                                        </span>
                </div>
                <!-------------------------------------->



                <!---------BIRTH DAY----------->
                <label style = "margin-top: 1em">Birthday:  </label>
                <div data-date-viewmode="years" data-date-format="dd-mm-yyyy" data-date="01-01-2014" class="input-append date dpYears"style="width:  40%">
                    <input type="text" readonly=""  size="16" class="form-control" name = "birthday">
                    <span class="input-group-btn add-on">
                                            <button class="btn btn-theme" type="button"><i class="fa fa-calendar"></i></button>
                                        </span>
                </div>

                <br>

                        <label style = "margin-top: 1em">Gender: </label>
                                                    <select class="form-control"  style="width: 50%" name="gender">
                                                        <option selected>Male</option>
                                                        <option selected>Female</option>
                                                    </select>
                <br>
                        <!------BRANCH------>

                        <label style = "margin-top: 1em">Branch: </label>

                        <select class="form-control"  style="width: 50%" name="idbranch">
                        <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
                            <c:forEach items="${branchList}" var="item">
                                <option selected value = ${item.idbranch}>${item.branchname}</option>
                            </c:forEach>
                        </select>
            <br>
                        <!------------------------------------>

                        <!------ID JOB--------->
                        <label style = "margin-top: 1em">ID Job: </label>

                        <select class="form-control"  style="width: 50%" name="idjob">
                                    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
                            <c:forEach items="${jobList}" var="item">
                                <option selected value = ${item.idjob}>${item.jobname}</option>
                            </c:forEach>
                        </select>
<br>
                        <!-------------------------------------->

                        <!---------STATUS----------->
                        <label style = "margin-top: 1em">Status: </label>

                        <select class="form-control"  style="width: 50%" name="idstatus">
                            <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
                            <c:forEach items="${statusList}" var="item">
                                <option selected value = ${item.idstatus}>${item.statusname}</option>
                            </c:forEach>
                        </select>
<br>
                        <!-------------------------------------->


                        <button type="submit" class="btn btn-primary">SAVE</button>

                    </div>
                </div>
                <div class="col-sm-5" style="margin-left: 3em">
                    <div class="text-center">
                        <h2  style="padding-top: 0.2em">Employee Image:</h2>

                        <!--------------------------IMG LOAD------------------>
                        <div class="fileupload fileupload-new" data-provides="fileupload">
                            <div class="fileupload-new thumbnail" style="width: 300px; height: 250px;">
                                <img src="../../resources/static/img/employee/${employee.idemployee}.jpg" alt="" />
                            </div>
                            <div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 300px; max-height: 250px; line-height: 20px;"></div>
                            <div>
                                                        <span class="btn btn-theme02 btn-file">
                                                          <span class="fileupload-new"><i class="fa fa-paperclip"></i> Select image</span>
                                                        <span class="fileupload-exists"><i class="fa fa-undo"></i> Change</span>
                                                        <input type="file" name = "file" class="default" />
                                                        </span>
                            </div>
                        </div>
                        <!------END IMG LOAD------------------------------>
                    </div>
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
<!--common script for all pages-->
<script src="../../resources/static/lib/common-scripts.js"></script>
<!--script for this page-->
<script src="../../resources/static/lib/jquery-ui-1.9.2.custom.min.js"></script>
<script type="text/javascript" src="../../resources/static/lib/bootstrap-fileupload/bootstrap-fileupload.js"></script>
<script type="text/javascript" src="../../resources/static/lib/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="../../resources/static/lib/bootstrap-daterangepicker/date.js"></script>
<script type="text/javascript" src="../../resources/static/lib/bootstrap-daterangepicker/daterangepicker.js"></script>
<script type="text/javascript" src="../../resources/static/lib/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
<script type="text/javascript" src="../../resources/static/lib/bootstrap-daterangepicker/moment.min.js"></script>
<script type="text/javascript" src="../../resources/static/lib/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
<script src="../../resources/static/lib/advanced-form-components.js"></script>


<script type="application/javascript">

    $('document').ready(function () {
        $("#imgload").change(function () {
            if (this.files && this.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#imgshow').attr('src', e.target.result);
                };
                reader.readAsDataURL(this.files[0]);
            }
        });
    });

    $(function () {
        $('#birthdaypicker').datetimepicker();
    });

    $(function () {
        $('#dayinpicker').datetimepicker();
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
