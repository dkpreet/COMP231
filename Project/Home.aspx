<!DOCTYPE html>
<!--[if IE 8]>
    <html class="ie ie8">
<![endif]-->
<!--[if IE 9]>
    <html class="ie ie9">
<![endif]-->
<!--[if gt IE 9]><!-->
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en-US">
<!--<![endif]-->
<head>
    <title>Build TimeTable</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- Web Fonts  -->
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800|Shadows+Into+Light" />
    <!-- third party style sheets -->
    <link href="Css/bootstrap.css" rel="stylesheet" />
    <link href="Css/component.css" rel="stylesheet" />
    <link href="Css/animated-theme.css" rel="stylesheet" />
    <link href="Css/font.css" rel="stylesheet" />
    <link href="Css/Magnifice-popup.css" rel="stylesheet" />
    <link href="Css/modal-window.css" rel="stylesheet" />
    <link href="Css/setting.css" rel="stylesheet" />
    <link href="Css/site.css" rel="stylesheet" />
    <link href="Css/slider.css" rel="stylesheet" />
    <link href="Css/theme-animate.css" rel="stylesheet" />
    <link href="Css/theme-blue.css" rel="stylesheet" />
    <link href="Css/theme-element.css" rel="stylesheet" />
    <link href="Css/theme-responsive.css" rel="stylesheet" />
    <link href="Css/theme-shop.css" rel="stylesheet" />
    <link href="Css/theme.css" rel="stylesheet" />
    <script type="text/javascript" src="/Content/ThirdParty/Modernizr/Modernizr-2.6.2/modernizr.js">
    </script>
    <!--[if lte IE 8]>
    <script type="text/javascript" src="~/Content/ThirdParty/Respond/Respond-1.3.0/respond.min.js">
    </script>
<![endif]-->
    <!--Start of Zopim Live Chat Script-->

    <!--End of Zopim Live Chat Script-->
    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
            m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-53828246-1', 'auto');
        ga('send', 'pageview');

    </script>
</head>
<body class="one-page" data-target=".single-menu" data-spy="scroll" data-offset="200">
    <div class="body">
        <header class="single-menu flat-menu">
            <div class="container">
                <h2 class="logo" id="logoHolder">
                    <a href="/">
                        <img alt="wiwet" src="Image/Logo.png" />
                    </a>
                </h2>
                <button class="btn btn-responsive-nav btn-inverse" data-toggle="collapse" data-target=".nav-main-collapse">
                </button>
            </div>
            <div class="navbar-collapse nav-main-collapse collapse">
                <div class="container">
                    <div class="social-icons">
                        <%-- <ul class="social-icons">
                    <li class="facebook">
                        <a href="https://www.facebook.com/pages/Wiwet-Themes/1983446825129370" target="_blank" title="Facebook">
                            Facebook
                        </a>
                    </li>
                    <li class="twitter">
                        <a href="https://twitter.com/WiwetThemes" target="_blank" title="Twitter">
                            Twitter
                        </a>
                    </li>
                    <li class="googleplus">
                        <a href="http://google.com/+Wiwet-ASP-NET-Templates" target="_blank" title="Google+">
                            Google+
                        </a>
                    </li>
                    
                </ul>--%>
                    </div>
                    <nav class="nav-main">
                        <ul class="nav nav-pills nav-main" id="mainMenu">
                            <li class="dropdown active">
                                <a data-hash class="dropdown-toggle" href="#home">Home
                                </a>
                            </li>
                            <li>
                                <a data-hash href="#themes" title="ASP.NET Templates">Programmes and Courses
                                </a>
                            </li>
                            <li>
                                <a href="/CustomTemplate">Admission
                                </a>
                            </li>
                            <li>
                                <a data-hash href="#contact" title="Dont Be Shy!">Student Life
                                </a>
                            </li>
                            <li>
                                <a href="/HowTo" title="How To">About Centennial
                                </a>
                            </li>


                            <li>
                                <a href="/Account/Login">Log In
                                </a>
                            </li>
                            <%-- <li>
                        <a href="/Cart" title="Your Cart">
                            <i class="icon icon-shopping-cart">
                            </i>
                            &nbsp;Cart
                        </a>
                    </li>--%>
                        </ul>
                    </nav>
                </div>
            </div>
        </header>
        <div role="main" class="main" id="home">
            <div id="content" class="content full">
                <div class="slider-container slider-container-fullscreen hidden-xs">
                    <div class="slider" id="revolutionSliderFullScreen">
                        <ul>
                            <li data-transition="fade" data-slotamount="10" data-masterspeed="300">
                                <%-- <img src="Image/index.jpg" data-fullwidthcentering="on" alt="" />--%>
                                <div class="tp-caption top-label lfl stl"
                                    data-x="400"
                                    data-y="100"
                                    data-speed="300"
                                    data-start="500"
                                    data-easing="easeOutExpo">
                                    Fully integrated with Visual Studio
                                </div>

                                <div class="tp-caption sft stb center-caption"
                                    data-x="0"
                                    data-y="290"
                                    data-speed="300"
                                    data-start="2500"
                                    data-easing="easeOutExpo">
                                    <%-- <a data-hash href="#themes" class="btn btn-lg btn-primary main-button">
                                Get Them Now!
                            </a>--%>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>


                <section class="highlight top">
                    <div class="container">
                        <div class="row" id="themes">
                            <div class="col-md-12">
                                <h1>
                                    <strong style="color: #3ADF00">Centennial College
                                    </strong>
                                </h1>




                            </div>

                        </div>
                    </div>
                </section>

                <section class="parallax" data-stellar-background-ratio="0.5"
                    style="background-image: url(Image/img1.jpg);">
                    <div class="container">

                        <i class="icon icon-featured" data-appear-animation="bounceIn"></i>
                        <%-- <h2 class="short text-shadow big white bold">
                            <strong>
                                Custom Templates
                            </strong>
                        </h2>--%>
                    </div>

                </section>
                <table style="width: 100%">
                    <tr>
                        <td style="text-align: center; padding-left:220px">
                            <table style="width: 80%">
                                <tr>
                                    <td>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <h3 class="featured">Campus
                                                </h3>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-12">
                                                    <p class="featured">
                                                        Centennial College marked the beginning of construction of its Centennial Residence and Culinary Arts Centre with a groundbreaking ceremony on October 15, 2014 and excavation for the building is well underway at the Progress Campus. The eight storey structure will accommodate a residence for 740 students on floors two through seven, a dynamic Culinary Arts Centre teaching facility on the ground floor, and conference and events space on the top floor. 
                                                    </p>
                                                    <hr class="tall" />
                                                    <p class="featured">
                                                        <p class="featured">The 353,300-square-foot project was designed by Diamond Schmitt Architects, which also designed the L-Block that opened at the Progress Campus in October 2010. The design features a blend of residential, teaching and event space that promises to make the mixed-use building a popular destination. The residence will feature two- and four-bedroom suites, allowing a private bedroom for every resident and a bathroom and kitchen in each suite. There will also be communal kitchens, lounge space, a yoga studio and movie screening room where students can gather together.</p>
                                                        <a href="/CustomTemplate"></a>
                                                        <p class="featured">The striking building concept takes the shape of a quadrangle with a central courtyard to allow natural light to reach all of the residence rooms. The Culinary Arts Centre includes seven kitchen labs, a teaching restaurant, cafe and eight new classrooms with capacity for up to 600 students. The conference and events centre located on the top floor will accommodate up to 425 guests. The building will be LEED Silver-certified with a focus on sustainable “green” practices as they apply to the hospitality industry.</p>

                                                        <p class="featured">The $85-million Centennial Residence and Culinary Arts Centre will address student demand for accommodations while providing the space needed for the College’s growing programs in culinary arts. Knightstone Capital Management is undertaking the planning, financing, construction and management of the project. Other key partners include Canadian Campus Communities and FRAM Building Group. Occupancy is slated for September 2016.</p>
                                                    </p>

                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>





            </div>

            <footer class="short" id="footer">
                <div class="container">
                    <div class="row">
                        <div class="col-md-8">
                            <h4>Three ways modern Graphic Design has changed
                            </h4>
                            <p>
                                We live in a world where visuals are important. Ever since print media existed, demand that it look slick and eye-catching has put talented graphic....
                            </p>
                        </div>
                        <div class="col-md-3 col-md-offset-1">

                            <ul class="list icons list-unstyled">
                                <li>

                                    <a href="http://www.centennialcollege.ca/?gclid=CMC669DwlssCFZCIaQodouEBbw">CentennialCollege.ca
                                    </a>
                                </li>
                            </ul>

                        </div>
                    </div>
                </div>
                <div class="footer-copyright">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-1">
                                <a href="/" class="logo">
                                    <img alt="Logo" class="img-responsive" src="Image/SmallLogo.png" />
                                </a>
                            </div>
                            <div class="col-md-7">
                                <p>
                                    © Copyright 2016 | Created By Team1
                       
                                </p>
                            </div>
                            <div class="col-md-4">
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
        <div class="hide-window wait-modal-window" id="please-wait-window">
            <span>
                <img src="../../../../Content/Images/Global/Icons/Loader-24x24.gif" alt="Please Wait" title="Please Wait" />
                Please wait...
            </span>
        </div>
</body>
<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
</script>
<script>
    window.jQuery || document.write('<script src="vendor/jquery.js"><\/script>')
</script>
<script type="text/javascript" src="/Content/Scripts/plugins.js">
</script>
<script type="text/javascript" src="/Content/ThirdParty/JQuery/jQueryEasing/jQueryEasing-1.3/jquery.easing.1.3.js">
</script>
<script type="text/javascript" src="/Content/ThirdParty/JQuery/jQueryAppear/jquery.appear.js">
</script>
<script type="text/javascript" src="/Content/ThirdParty/JQuery/JQueryCookie/1.3.1/jquery.cookie.js">
</script>
<script type="text/javascript" src="/Content/ThirdParty/Bootstrap/3.0.0/js/bootstrap.min.js">
</script>
<script type="text/javascript" src="/Content/ThirdParty/RevolutionSlider/1.5.3/js/jquery.themepunch.plugins.min.js">
</script>
<script type="text/javascript" src="/Content/ThirdParty/RevolutionSlider/1.5.3/js/jquery.themepunch.revolution.min.js">
</script>
<script type="text/javascript" src="/Content/ThirdParty/Flexslider/2.2.0/jquery.flexslider.js">
</script>
<script type="text/javascript" src="/Content/ThirdParty/CircleFlipSlideshow/1.0.0/js/jquery.flipshow.js">
</script>
<script type="text/javascript" src="/Content/ThirdParty/MagnificPopup/0.9.3/dist/jquery.magnific-popup.min.js">
</script>
<script type="text/javascript" src="/Content/ThirdParty/JQuery/Stellar/0.6.2/jquery.stellar.min.js">
</script>
<script type="text/javascript" src="/Content/ThirdParty/JQuery/JQueryValidation/1.11.1/jquery.validate.js">
</script>

<!-- Current Page Scripts -->
<script type="text/javascript" src="Script/view.home.js">
</script>
<script type="text/javascript" src="Script/view.contact.js">
</script>
<!-- Theme Initializer -->
<script type="text/javascript" src="Script/theme.js">
</script>
<script type="text/javascript" src="Script/Site.js">
</script>
<script type="text/javascript" src="Script/Setting.js">
</script>
<script type="text/javascript" src="Script/jquery.theme.functions.js">
</script>


<script type="text/javascript" src="Script/ContactPage.js">
</script>
<script type="text/javascript" src="Script/Contact.js">
</script>
<script src="Script/Widget.js"></script>
<script type="text/javascript" src="Script/Widget.js" async="async"></script>

</html>
