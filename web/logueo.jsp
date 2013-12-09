<%@page import="javax.swing.JOptionPane"%>
<%@page  session="true" language="java"%>

<!DOCTYPE html>
<html lang="es">
  <meta charset="utf-8">
    <title>Sistema de pr&eacute;stamos Arcamac</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="css/bootstrap/assets/css/bootstrap.css" rel="stylesheet">
    <link href="css/bootstrap/assets/css/bootstrap-responsive.css" rel="stylesheet">
    <style>
        body {
          padding-top: 40px;
          padding-bottom: 40px;
         /* background-color: #eee;*/
        }

        .form-signin {
          max-width: 330px;
          padding: 15px;
          margin: 0 auto;
        }
        .form-signin .form-signin-heading,
        .form-signin .checkbox {
          margin-bottom: 10px;
        }
        .form-signin .checkbox {
          font-weight: normal;
        }
        .form-signin .form-control {
          position: relative;
          font-size: 16px;
          height: auto;
          padding: 10px;
          -webkit-box-sizing: border-box;
             -moz-box-sizing: border-box;
                  box-sizing: border-box;
        }
        .form-signin .form-control:focus {
          z-index: 2;
        }
        .form-signin input[type="text"] {
          margin-bottom: -1px;
          border-bottom-left-radius: 0;
          border-bottom-right-radius: 0;
        }
        .form-signin input[type="password"] {
          margin-bottom: 10px;
          border-top-left-radius: 0;
          border-top-right-radius: 0;
        }

      /* CUSTOMIZE THE NAVBAR
      -------------------------------------------------- */
      /* Special class on .container surrounding .navbar, used for positioning it into place. */
      .navbar-wrapper {
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        z-index: 10;
        margin-top: 20px;
        margin-bottom: -90px; /* Negative margin to pull up carousel. 90px is roughly margins and height of navbar. */
      }
      .navbar-wrapper .navbar {}
      /* Remove border and change up box shadow for more contrast */
      .navbar .navbar-inner {
        border: 0;
        -webkit-box-shadow: 0 2px 10px rgba(0,0,0,.25);
           -moz-box-shadow: 0 2px 10px rgba(0,0,0,.25);
                box-shadow: 0 2px 10px rgba(0,0,0,.25);
      }

      /* Downsize the brand/project name a bit */
      .navbar .brand {
        padding: 14px 20px 16px; /* Increase vertical padding to match navbar links */
        font-size: 16px;
        font-weight: bold;
        text-shadow: 0 -1px 0 rgba(0,0,0,.5);
      }

      /* Navbar links: increase padding for taller navbar */
      .navbar .nav > li > a {
        padding: 15px 20px;
      }

      /* Offset the responsive button for proper vertical alignment */
      .navbar .btn-navbar {
        margin-top: 10px;
      }

      /* CUSTOMIZE THE CAROUSEL
      -------------------------------------------------- */

      /* Carousel base class */
      .carousel {
        margin-bottom: 60px;
      }

      .carousel .container {
        position: relative;
        z-index: 9;
      }

      .carousel-control {
        height: 80px;
        margin-top: 0;
        font-size: 120px;
        text-shadow: 0 1px 1px rgba(0,0,0,.4);
        background-color: transparent;
        border: 0;
        z-index: 10;
      }

      .carousel .item {
        height: 450px;
      }
      .carousel img {
        position: absolute;
        top: 0;
        left: 0;
        min-width: 100%;
        height: 500px;
      }

      .carousel-caption {
        background-color: transparent;
        position: static;
        max-width: 550px;
        padding: 0 20px;
        margin-top: 200px;
      }
      .carousel-caption h1,
      .carousel-caption .lead {
        margin: 0;
        line-height: 1.25;
        color: #fff;
        text-shadow: 0 1px 1px rgba(0,0,0,.4);
      }
      .carousel-caption .btn {
        margin-top: 10px;
      }

      /* MARKETING CONTENT
      -------------------------------------------------- */

      /* Center align the text within the three columns below the carousel */
      .marketing .span4 {
        text-align: center;
      }
      .marketing h2 {
        font-weight: normal;
      }
      .marketing .span4 p {
        margin-left: 10px;
        margin-right: 10px;
      }
      /* Featurettes
      ------------------------- */

      .featurette-divider {
        margin: 80px 0; /* Space out the Bootstrap <hr> more */
      }
      .featurette {
        padding-top: 120px; /* Vertically center images part 1: add padding above and below text. */
        overflow: hidden; /* Vertically center images part 2: clear their floats. */
      }
      .featurette-image {
        margin-top: -120px; /* Vertically center images part 3: negative margin up the image the same amount of the padding to center it. */
      }

      /* Give some space on the sides of the floated elements so text doesn't run right into it. */
      .featurette-image.pull-left {
        margin-right: 40px;
      }
      .featurette-image.pull-right {
        margin-left: 40px;
      }

      /* Thin out the marketing headings */
      .featurette-heading {
        font-size: 50px;
        font-weight: 300;
        line-height: 1;
        letter-spacing: -1px;
      }
      /* RESPONSIVE CSS
      -------------------------------------------------- */

      @media (max-width: 979px) {

        .container.navbar-wrapper {
          margin-bottom: 0;
          width: auto;
        }
        .navbar-inner {
          border-radius: 0;
          margin: -20px 0;
        }

        .carousel .item {
          height: 500px;
        }
        .carousel img {
          width: auto;
          height: 500px;
        }

        .featurette {
          height: auto;
          padding: 0;
        }
        .featurette-image.pull-left,
        .featurette-image.pull-right {
          display: block;
          float: none;
          max-width: 40%;
          margin: 0 auto 20px;
        }
      }
      @media (max-width: 767px) {

        .navbar-inner {
          margin: -20px;
        }

        .carousel {
          margin-left: -20px;
          margin-right: -20px;
        }
        .carousel .container {

        }
        .carousel .item {
          height: 300px;
        }
        .carousel img {
          height: 300px;
        }
        .carousel-caption {
          width: 65%;
          padding: 0 70px;
          margin-top: 100px;
        }
        .carousel-caption h1 {
          font-size: 30px;
        }
        .carousel-caption .lead,
        .carousel-caption .btn {
          font-size: 18px;
        }

        .marketing .span4 + .span4 {
          margin-top: 40px;
        }

        .featurette-heading {
          font-size: 30px;
        }
        .featurette .lead {
          font-size: 18px;
          line-height: 1.5;
        }

      }
    </style>

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="../assets/js/html5shiv.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="css/bootstrap/assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="css/bootstrap/assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="css/bootstrap/assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="css/bootstrap/assets/ico/apple-touch-icon-57-precomposed.png">
    <link rel="shortcut icon" href="css/bootstrap/assets/ico/favicon.png">
  </head>

  <body>
    <!-- NAVBAR
    ================================================== -->
    <div class="navbar-wrapper">
      <!-- Wrap the .navbar in .container to center it within the absolutely positioned parent. -->
      <div class="container">

        <div class="navbar navbar-inverse">
          <div class="navbar-inner">
            <!-- Responsive Navbar Part 1: Button for triggering responsive navbar (not covered in tutorial). Include responsive CSS to utilize. -->
            <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="brand" href="#">Pr&eacute;stamos ARCAMAC</a>
            <!-- Responsive Navbar Part 2: Place all navbar contents you want collapsed withing .navbar-collapse.collapse. -->
            <div class="nav-collapse collapse">
              <ul class="nav">
                <li class="active"><a href="#">Inicio</a></li>
                
              </ul>
            </div><!--/.nav-collapse -->
          </div><!-- /.navbar-inner -->
        </div><!-- /.navbar -->

      </div> <!-- /.container -->
    </div><!-- /.navbar-wrapper -->



    <!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel slide">
      <div class="carousel-inner">
        <div class="item active">
          <img src="images/prestamos1.png" alt="">
          
        </div>
        <div class="item">
          <img src="images/prestamos2.png" alt="">
          <div class="container">
            <div class="carousel-caption">
              <h1>ARCAMAC </h1><p />
              <h1>&nbsp;&nbsp;S.C de R.L de C.V</h1>
        <!--      <p class="lead">Entregando pr&eacute;stamos desde 2001.</p>
            --> 
            </div>
          </div>
        </div>
          
        <div class="item">
          <img src="css/bootstrap/assets/img/examples/slide-03.jpg" alt="">
          <div class="container">
            <div class="carousel-caption">
              <h1>One more for good measure.</h1>
              <p class="lead">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
              <a class="btn btn-large btn-primary" href="#">Browse gallery</a>
            </div>
          </div>
        </div>
          
          
      </div>
      <a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
      <a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
    </div><!-- /.carousel -->


    <div class="container">

        <form class="form-signin" action="./administracion/procesarLogueo.jsp" method="post">
        <center>
        <h2 class="form-signin-heading">Iniciar Sesi&oacute;n</h2>
        
        <input type="text" class="form-control" placeholder="Nombre de usuario" name="usuario" autofocus>
        
        <input type="password" class="form-control" placeholder="Password" name="pass"><p />
        
           <%
            if (request.getParameter("error") != null)
            {
                String error = request.getParameter("error");
                
                
                if (error.equals("1"))
                
                {
                    out.print("<font color=\"red\">Datos Incorrectos!, vuelva a intentarlo</font>");
                }
                
                if (error.equals("2"))
                {
                    out.print("<font color=\"red\">Debe de iniciar Sesi&oacute;n</font");
                }
            } 
        %>
        </center>
     
        <button class="btn btn-lg btn-primary btn-block" type="submit">Entrar</button>

       
        </form>

      <hr>

      <footer>
        <p>&copy;Arcamac S.C de R.L de C.V 2013</p>
      </footer>
    </div> <!-- /container -->

    <!-- Placed at the end of the document so the pages load faster -->
    <script src="css/bootstrap/assets/js/jquery.js"></script>
    <script src="css/bootstrap/assets/js/bootstrap-transition.js"></script>
    <script src="css/bootstrap/assets/js/bootstrap-alert.js"></script>
    <script src="css/bootstrap/assets/js/bootstrap-modal.js"></script>
    <script src="css/bootstrap/assets/js/bootstrap-dropdown.js"></script>
    <script src="css/bootstrap/assets/js/bootstrap-scrollspy.js"></script>
    <script src="css/bootstrap/assets/js/bootstrap-tab.js"></script>
    <script src="css/bootstrap/assets/js/bootstrap-tooltip.js"></script>
    <script src="css/bootstrap/assets/js/bootstrap-popover.js"></script>
    <script src="css/bootstrap/assets/js/bootstrap-button.js"></script>
    <script src="css/bootstrap/assets/js/bootstrap-collapse.js"></script>
    <script src="css/bootstrap/assets/js/bootstrap-carousel.js"></script>
    <script src="css/bootstrap/assets/js/bootstrap-typeahead.js"></script>
    <script>
      !function ($) {
        $(function(){
          // carousel demo
          $('#myCarousel').carousel()
        })
      }(window.jQuery)
    </script>
    <script src="css/bootstrap/assets/js/holder/holder.js"></script>
  </body>




    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="css/bootstrap/dist/js/jquery.js"></script>
    <script src="css/bootstrap/dist/js/bootstrap.min.js"></script>
  </body>
</html>