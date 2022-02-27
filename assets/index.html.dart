// <?php
// include "config.php";
// ?>
//
// <!DOCTYPE html>
// <html dir="ltr" lang="en">
//
// <head>
// <meta charset="utf-8">
// <meta http-equiv="X-UA-Compatible" content="IE=edge">
// <meta name="viewport" content="width=device-width, initial-scale=1">
// <meta name="keywords" content="wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 5 admin, bootstrap 5, css3 dashboard, bootstrap 5 dashboard, Nice lite admin bootstrap 5 dashboard, frontend, responsive bootstrap 5 admin template, Nice admin lite design, Nice admin lite dashboard bootstrap 5 dashboard template">
// <meta name="description" content="Nice Admin Lite is powerful and clean admin dashboard template, inpired from Bootstrap Framework">
// <meta name="robots" content="noindex,nofollow">
// <title>yönetim paneli</title>
// <link rel="canonical" href="https://www.wrappixel.com/templates/niceadmin-lite/" />
// <link rel="icon" type="image/png" sizes="16x16" href="../../assets/images/favicon.png">
// <link href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/2.3.1/css/flag-icon.min.css" rel="stylesheet"/>
// <link href="../../assets/libs/chartist/dist/chartist.min.css" rel="stylesheet">
// <link href="../../dist/css/style.min.css" rel="stylesheet">
// </head>
//
// <body>
// <div class="preloader">
// <div class="lds-ripple">
// <div class="lds-pos"></div>
// <div class="lds-pos"></div>
// </div>
// </div>
// <div id="main-wrapper" data-navbarbg="skin6" data-theme="light" data-layout="vertical" data-sidebartype="full" data-boxed-layout="full">
// <aside class="left-sidebar" data-sidebarbg="skin5">
// <div class="scroll-sidebar">
// <nav class="sidebar-nav">
// <div class="navbar-brand">
// <a href="index.php" class="logo">
// <b class="logo-icon">
// <img class="logo-name" src="../../assets/images/logo.png" alt="homepage" width="50px" class="omu-logo" />
// </b>
// <span class="logo-text">
// <!-- <img class="logo-name" width="100px" src="../../assets/images/logo-name.png" alt="homepage" class="dark-logo" />  -->
// <img class="logo-name" width="100px" src="../../assets/images/logo-name.png" class="light-logo" alt="homepage" />
// </span>
// </a>
// </div>
// <ul id="sidebarnav">
// <li class="sidebar-item">
// <a class="sidebar-link waves-effect waves-dark sidebar-link" href="index.php" aria-expanded="false">
// <i class="mdi mdi-home"></i>
// <span class="hide-menu"><?php echo $lang['home'] ?> </span>
// </a>
// </li>
// <li class="sidebar-item">
// <a class="sidebar-link waves-effect waves-dark sidebar-link" href="sorulari-listele.php" aria-expanded="false">
// <i class="mdi mdi-format-list-bulleted-type"></i>
// <span class="hide-menu"><?php echo $lang['list-question'] ?> </span>
// </a>
// </li>
// <li class="sidebar-item">
// <a class="sidebar-link waves-effect waves-dark sidebar-link" href="soru-ekle.php" aria-expanded="false">
// <i class="mdi mdi-playlist-plus"></i>
// <span class="hide-menu"><?php echo $lang['add-question'] ?> </span>
// </a>
// </li>
// <li class="sidebar-item">
// <a class="sidebar-link waves-effect waves-dark sidebar-link" href="konu-ekle.php" aria-expanded="false">
// <i class="mdi mdi-playlist-plus"></i>
// <span class="hide-menu"><?php echo $lang['add-subject'] ?> </span>
// </a>
// </li>
// <li class="sidebar-item">
// <a class="sidebar-link waves-effect waves-dark sidebar-link" href="istatistikler.php" aria-expanded="false">
// <i class="mdi mdi-chart-areaspline"></i>
// <span class="hide-menu"><?php echo $lang['statics'] ?> </span>
// </a>
// </li>
// <li class="sidebar-item">
// <a class="sidebar-link waves-effect waves-dark sidebar-link" href="oneride-bulun.php" aria-expanded="false">
// <i class="mdi mdi-email"></i>
// <span class="hide-menu"><?php echo $lang['make-suggestion'] ?> </span>
// </a>
// </li>
// <li class="sidebar-item">
// <a class="sidebar-link waves-effect waves-dark sidebar-link" href="login.php" aria-expanded="false">
// <i class="mdi mdi-logout"></i>
// <span class="hide-menu"><?php echo $lang['sign-out'] ?> </span>
// </a>
// </li>
// </ul>
// </nav>
// </div>
// </aside>
// <div class="page-wrapper">
// <div class="page-breadcrumb">
// <div class="row">
// <div class="col-5 align-self-center">
// <h4 class="page-title"><?php echo $lang['home'] ?> </h4>
// </div>
// <div class="col-7 align-self-center">
// <div class="d-flex align-items-center justify-content-end flags">
// <a href="index.php?lang=tr"><img width="25px" src="../../assets/images/tr-flag.png"></a>
// <a href="index.php?lang=en"><img width="24px" src="../../assets/images/usa-flag.png"></a>
// </div>
// </div>
// </div>
// </div>
// <div class="container-fluid">
// <div class="row">
// <div class="col-lg-8">
// <div class="card">
// <div class="card-body">
// <h4 class="card-title"><?php echo $lang['gpa'] ?> </h4>
// <div class="levels ct-charts mt-3"></div>
// </div>
// </div>
// </div>
// <div class="col-lg-4">
// <div id="users" class="card">
// <div id="users" class="card-body">
// <h4 class="card-title mb-0"><?php echo $lang['users'] ?> </h4>
// <h2 class="font-light">3,658 <span class="font-16 text-success font-medium">+23%</span>
// </h2>
// <div class="mt-4">
// <div class="row text-center">
// <div class="col-6 border-right">
// <h4 class="mb-0">58%</h4>
// <span class="font-14 text-muted"><?php echo $lang['new-users'] ?> </span>
// </div>
// <div class="col-6">
// <h4 class="mb-0">42%</h4>
// <span class="font-14 text-muted"><?php echo $lang['former-users'] ?> </span>
// </div>
// </div>
// </div>
// </div>
// </div>
// </div>
// </div>
// <div class="row">
// <div class="col-12">
// <div class="card">
// <div class="card-body">
// <h4 class="card-title"><?php echo $lang['ranking'] ?> </h4>
// </div>
// <div class="table-responsive">
// <table class="table table-hover">
// <thead>
// <tr>
// <th class="border-top-0">#</th>
// <th class="border-top-0"><?php echo $lang['name'] ?> </th>
// <th class="border-top-0"><?php echo $lang['level'] ?> </th>
// <th class="border-top-0"><?php echo $lang['score'] ?> </th>
// </tr>
// </thead>
// <tbody>
// <tr>
// <td class="txt-oflo">1</td>
// <td class="txt-oflo">Şule KAPTAN</td>
// <td><span class="label label-success label-rounded">B2</span> </td>
// <td class="txt-oflo">100 / 100</td>
// </tr>
// <tr>
// <td class="txt-oflo">2</td>
// <td class="txt-oflo">Rüveyda Nur YILMAZ</td>
// <td><span class="label label-info label-rounded">B1</span></td>
// <td class="txt-oflo">92 / 100</td>
// </tr>
// <tr>
// <td class="txt-oflo">3</td>
// <td class="txt-oflo">Melike GÜMÜŞTEKİN</td>
// <td><span class="label label-purple label-rounded">A1</span></td>
// <td class="txt-oflo">84 / 100</td>
// </tr>
// <tr>
// <td class="txt-oflo">4</td>
// <td class="txt-oflo">Elif KARAGÖZ</td>
// <td><span class="label label-success label-rounded">A2</span></td>
// <td class="txt-oflo">83 / 100</td>
// </tr>
// </tbody>
// </table>
// </div>
// </div>
// </div>
// </div>
// </div>
//
// <footer class="footer text-center">
// All Rights Reserved by Nice admin. Designed and Developed by
// <a href="https://www.wrappixel.com">WrapPixel</a>.
// </footer>
// </div>
// </div>
//
// <script src="../../assets/libs/jquery/dist/jquery.min.js"></script>
// <!-- Bootstrap tether Core JavaScript -->
// <script src="../../assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
// <!-- slimscrollbar scrollbar JavaScript -->
// <script src="../../assets/extra-libs/sparkline/sparkline.js"></script>
// <!--Wave Effects -->
// <script src="../../dist/js/waves.js"></script>
// <!--Menu sidebar -->
// <script src="../../dist/js/sidebarmenu.js"></script>
// <!--Custom JavaScript -->
// <script src="../../dist/js/custom.min.js"></script>
// <!--This page JavaScript -->
// <!--chartis chart-->
// <script src="../../assets/libs/chartist/dist/chartist.min.js"></script>
// <script src="../../assets/libs/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.min.js"></script>
// <script src="../../dist/js/pages/dashboards/dashboard1.js"></script>
// </body>
//
// </html>
