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
        <a href="/admin" class="logo"><b>Boss<span>Store</span></b></a>
        <!--logo end-->
        <div class="nav notify-row" id="top_menu">
            <!--  notification start -->

            <!--  notification end -->
        </div>
        <div class="top-menu">
            <ul class="nav pull-right top-menu">
                <li><a class="logout" href="/">Logout</a></li>
                <li>${imgPath}</li>
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

                <li class="sub-menu">
                    <form class="form-group" method="post">



                    </form>



                </li>
                <br>
                <li>
                    <button class="btn btn-block btn-primary " onclick="window.location='/admin';" type="button" >
                        <i class="fa fa-backward"></i>
                        <span>Back </span>
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
    <section id="main-content">
        <section class="wrapper">
            <div class="col-lg-12 mt">
                <div class="row content-panel">
                    <div class="col-lg-10 col-lg-offset-1">
                        <div class="invoice-body">
                            <div class="pull-left">
                                <h1>TaiNgo</h1>
                                <address>
                                    <strong>Admin, Inc.</strong><br>
                                    795 Asome Ave, Suite 850<br>
                                    New York, 94447<br>
                                    <abbr title="Phone">P:</abbr> (123) 456-7890
                                </address>
                            </div>
                            <!-- /pull-left -->
                            <div class="pull-right">
                                <h2>invoice</h2>
                            </div>
                            <!-- /pull-right -->
                            <div class="clearfix"></div>
                            <br>
                            <br>
                            <br>
                            <div class="row">
                                <div class="col-md-9">
                                    <h4>Paul Smith</h4>
                                    <address>
                                        <strong>Enterprise Corp.</strong><br>
                                        234 Great Ave, Suite 600<br>
                                        San Francisco, CA 94107<br>
                                        <abbr title="Phone">P:</abbr> (123) 456-7890
                                    </address>
                                </div>
                                <!-- /col-md-9 -->
                                <div class="col-md-3">
                                    <br>
                                    <div>
                                        <div class="pull-left"> INVOICE NO : </div>
                                        <div class="pull-right"> 000283 </div>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div>
                                        <!-- /col-md-3 -->
                                        <div class="pull-left"> INVOICE DATE : </div>
                                        <div class="pull-right"> 15/03/14 </div>
                                        <div class="clearfix"></div>
                                    </div>
                                    <!-- /row -->
                                    <br>
                                    <div class="well well-small green">
                                        <div class="pull-left"> Total Due : </div>
                                        <div class="pull-right"> 8,000 USD </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                                <!-- /invoice-body -->
                            </div>
                            <!-- /col-lg-10 -->
                            <table class="table">
                                <thead>
                                <tr>
                                    <th style="width:60px" class="text-center">QTY</th>
                                    <th class="text-left">DESCRIPTION</th>
                                    <th style="width:140px" class="text-right">UNIT PRICE</th>
                                    <th style="width:90px" class="text-right">TOTAL</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td class="text-center">1</td>
                                    <td>Flat Pack Heritage</td>
                                    <td class="text-right">$429.00</td>
                                    <td class="text-right">$429.00</td>
                                </tr>
                                <tr>
                                    <td class="text-center">2</td>
                                    <td>Carry On Suitcase</td>
                                    <td class="text-right">$300.00</td>
                                    <td class="text-right">$600.00</td>
                                </tr>
                                <tr>
                                    <td colspan="2" rowspan="4">
                                        <h4>Terms and Conditions</h4>
                                        <p>Thank you for your business. We do expect payment within 21 days, so please process this invoice within that time. There will be a 1.5% interest charge per month on late invoices.</p>
                                    <td class="text-right"><strong>Subtotal</strong></td>
                                    <td class="text-right">$1029.00</td>
                                </tr>
                                <tr>
                                    <td class="text-right no-border"><strong>Shipping</strong></td>
                                    <td class="text-right">$0.00</td>
                                </tr>
                                <tr>
                                    <td class="text-right no-border"><strong>VAT Included in Total</strong></td>
                                    <td class="text-right">$0.00</td>
                                </tr>
                                <tr>
                                    <td class="text-right no-border">
                                        <div class="well well-small green"><strong>Total</strong></div>
                                    </td>
                                    <td class="text-right"><strong>$1029.00</strong></td>
                                </tr>
                                </tbody>
                            </table>
                            <br>
                            <br>
                        </div>
                        <!--/col-lg-12 mt -->
        </section>
        <!-- /wrapper -->
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
