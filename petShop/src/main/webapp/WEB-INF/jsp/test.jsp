
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
    <link href="../../resources/static/css/style.css?v=1.0" rel="stylesheet" type="text/css" />

    <link rel="stylesheet" type="text/css" href="../../resources/static/lib/gritter/css/jquery.gritter.css" />
    <!-- Custom styles for this template -->

    <link href="../../resources/static/css/style-responsive.css" rel="stylesheet">
    <script src="../../resources/static/lib/chart-master/Chart.js"></script>


</head>

<body>
<form action="" method="post">
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
                        <button class="btn btn-block btn-primary " onclick="window.location='/admin/pets/add';" type="button" >
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

        <section id="main-content">
            <section class="wrapper">
                <h3><i class="fa fa-angle-right"></i> Advanced Form Components</h3>
                <div class="row mt">
                    <!--  DATE PICKERS -->
                    <div class="col-lg-12">
                        <div class="form-panel">
                            <form action="#" class="form-horizontal style-form">
                                <div class="form-group">
                                    <label class="control-label col-md-3">Default Datepicker</label>
                                    <div class="col-md-3 col-xs-11">
                                        <input class="form-control form-control-inline input-medium default-date-picker" size="16" type="text" value="">
                                        <span class="help-block">Select date</span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3">Start with years viewMode</label>
                                    <div class="col-md-3 col-xs-11">
                                        <div data-date-viewmode="years" data-date-format="dd-mm-yyyy" data-date="01-01-2014" class="input-append date dpYears">
                                            <input type="text" readonly="" value="01-01-2014" size="16" class="form-control">
                                            <span class="input-group-btn add-on">
                        <button class="btn btn-theme" type="button"><i class="fa fa-calendar"></i></button>
                        </span>
                                        </div>
                                        <span class="help-block">Select date</span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3">Months Only</label>
                                    <div class="col-md-3 col-xs-11">
                                        <div data-date-minviewmode="months" data-date-viewmode="years" data-date-format="mm/yyyy" data-date="01/2014" class="input-append date dpMonths">
                                            <input type="text" readonly="" value="01/2014" size="16" class="form-control">
                                            <span class="input-group-btn add-on">
                        <button class="btn btn-theme" type="button"><i class="fa fa-calendar"></i></button>
                        </span>
                                        </div>
                                        <span class="help-block">Select month only</span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3">Date Range</label>
                                    <div class="col-md-4">
                                        <div class="input-group input-large" data-date="01/01/2014" data-date-format="mm/dd/yyyy">
                                            <input type="text" class="form-control dpd1" name="from">
                                            <span class="input-group-addon">To</span>
                                            <input type="text" class="form-control dpd2" name="to">
                                        </div>
                                        <span class="help-block">Select date range</span>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <!-- /form-panel -->
                    </div>
                    <!-- /col-lg-12 -->
                </div>
                <!-- /row -->
                <!-- DATE TIME PICKERS -->
                <div class="row mt">
                    <div class="col-lg-12">
                        <div class="form-panel">
                            <form class="form-horizontal  style-form" action="#">
                                <div class="form-group">
                                    <label class="control-label col-md-3">Default input Datetimepicker</label>
                                    <div class="col-md-4">
                                        <input size="16" type="text" value="2014-01-01 10:00" readonly class="form_datetime form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3"> Component Datetimepicker</label>
                                    <div class="col-md-4">
                                        <div class="input-group date form_datetime-component">
                                            <input type="text" class="form-control" readonly="" size="16">
                                            <span class="input-group-btn">
                        <button type="button" class="btn btn-theme date-set"><i class="fa fa-calendar"></i></button>
                        </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3">Advance Datetimepicker</label>
                                    <div class="col-md-4">
                                        <div data-date="2014-02-01T10:05:00Z" class="input-group date form_datetime-adv">
                                            <input type="text" class="form-control" readonly="" size="16">
                                            <div class="input-group-btn">
                                                <button type="button" class="btn btn-theme02 date-reset"><i class="fa fa-times"></i></button>
                                                <button type="button" class="btn btn-theme date-set"><i class="fa fa-calendar"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3">Meridian Format</label>
                                    <div class="col-md-4">
                                        <div data-date="2014-01-18T15:00:00Z" class="input-group date form_datetime-meridian">
                                            <input type="text" class="form-control" readonly="" size="16">
                                            <div class="input-group-btn">
                                                <button type="button" class="btn btn-theme02 date-reset"><i class="fa fa-times"></i></button>
                                                <button type="button" class="btn btn-theme date-set"><i class="fa fa-calendar"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <!-- /form-panel -->
                    </div>
                    <!-- /col-lg-12 -->
                </div>
                <!-- row -->
                <!--  TIME PICKERS -->
                <div class="row mt">
                    <div class="col-lg-12">
                        <div class="form-panel">
                            <form class="form-horizontal  style-form" action="#">
                                <div class="form-group">
                                    <label class="control-label col-md-3">Default Timepicker</label>
                                    <div class="col-md-4">
                                        <div class="input-group bootstrap-timepicker">
                                            <input type="text" class="form-control timepicker-default">
                                            <span class="input-group-btn">
                        <button class="btn btn-theme04" type="button"><i class="fa fa-clock-o"></i></button>
                        </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3">24hr Timepicker</label>
                                    <div class="col-md-4">
                                        <div class="input-group bootstrap-timepicker">
                                            <input type="text" class="form-control timepicker-24">
                                            <span class="input-group-btn">
                        <button class="btn btn-theme04" type="button"><i class="fa fa-clock-o"></i></button>
                        </span>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <!-- /form-panel -->
                    </div>
                    <!-- /col-lg-12 -->
                </div>
                <!-- row -->
                <!--ADVANCED FILE INPUT-->
                <div class="row mt">
                    <div class="col-lg-12">
                        <div class="form-panel">
                            <form action="#" class="form-horizontal style-form">
                                <div class="form-group">
                                    <label class="control-label col-md-3">Default</label>
                                    <div class="col-md-4">
                                        <input type="file" class="default" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3">Without input</label>
                                    <div class="controls col-md-9">
                                        <div class="fileupload fileupload-new" data-provides="fileupload">
                      <span class="btn btn-theme02 btn-file">
                        <span class="fileupload-new"><i class="fa fa-paperclip"></i> Select file</span>
                      <span class="fileupload-exists"><i class="fa fa-undo"></i> Change</span>
                      <input type="file" class="default" />
                      </span>
                                            <span class="fileupload-preview" style="margin-left:5px;"></span>
                                            <a href="advanced_form_components.html#" class="close fileupload-exists" data-dismiss="fileupload" style="float: none; margin-left:5px;"></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group last">
                                    <label class="control-label col-md-3">Image Upload</label>
                                    <div class="col-md-9">
                                        <div class="fileupload fileupload-new" data-provides="fileupload">
                                            <div class="fileupload-new thumbnail" style="width: 200px; height: 150px;">
                                                <img src="http://www.placehold.it/200x150/EFEFEF/AAAAAA&text=no+image" alt="" />
                                            </div>
                                            <div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>
                                            <div>
                        <span class="btn btn-theme02 btn-file">
                          <span class="fileupload-new"><i class="fa fa-paperclip"></i> Select image</span>
                        <span class="fileupload-exists"><i class="fa fa-undo"></i> Change</span>
                        <input type="file" class="default" />
                        </span>
                                                <a href="advanced_form_components.html#" class="btn btn-theme04 fileupload-exists" data-dismiss="fileupload"><i class="fa fa-trash-o"></i> Remove</a>
                                            </div>
                                        </div>
                                        <span class="label label-info">NOTE!</span>
                                        <span>
                      Attached image thumbnail is
                      supported in Latest Firefox, Chrome, Opera,
                      Safari and Internet Explorer 10 only
                      </span>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <!-- /form-panel -->
                    </div>
                    <!-- /col-lg-12 -->
                </div>
                <!-- row -->
            </section>
            <!-- /wrapper -->
        </section>
        <!--main content end-->
        <!--main content end-->


    </section>

</form>
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

</body>

</html>
