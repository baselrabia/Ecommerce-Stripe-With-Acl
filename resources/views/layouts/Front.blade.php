<!DOCTYPE html>
<html lang="en">

<head lang="en">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>Seosight - Shop</title>

    <link rel="stylesheet" type="text/css" href="{{ asset('css/fonts.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('css/crumina-fonts.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('css/normalize.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('css/grid.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('css/styles.css') }}">


    <!--Plugins styles-->

    <link rel="stylesheet" type="text/css" href="{{ asset('css/jquery.mCustomScrollbar.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('css/swiper.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('css/primary-menu.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('css/magnific-popup.css') }}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
    <!--Styles for RTL-->

    <!--<link rel="stylesheet" type="text/css" href="{{ asset('css/rtl.css') }}">-->

    <!--External fonts-->

    <link href='https://fonts.googleapis.com/css?family=Varela+Round' rel='stylesheet' type='text/css'>

</head>


<body class=" ">

    <header class="header" id="site-header">

        <div class="container">
            <h5 class="nav-item mr-auto">
                <a class="nav-link" href="/"> Home </a></h5>
            <div class="header-content-wrapper">
                <ul class="nav-add">

                    <li class="cart">

                        <a href="#" class="js-cart-animate">
                            <i class="seoicon-basket"></i>
                            <span class="cart-count">
                                {{Cart::content()->count()}}
                            </span>
                        </a>

                        <div class="cart-popup-wrap">
                            <div class="popup-cart">
                                <h4 class="title-cart align-center">
                                    ${{number_format(Cart::total())}}
                                </h4>
                                <br>
                                <a href="/cart">
                                    <div class="btn btn-small btn--dark">
                                        <span class="text">View cart</span>
                                    </div>
                                </a>
                            </div>
                        </div>

                    </li>
                </ul>
            </div>

        </div>

    </header>


    <div class="content-wrapper">

        <div class="container">
            <div class="row pt120">
                <div class="col-lg-8 col-lg-offset-2">
                    <div class="heading align-center mb60">
                        <h4 class="h1 heading-title">Programing Bookshop</h4>
                        <p class="heading-text">Buy books, and we ship to you.
                        </p>
                    </div>
                </div>
            </div>
        </div>

        <!-- End Books products grid -->

        @yield('page')

    </div>

    <!-- Footer -->

    <footer class="footer">
        <div class="sub-footer">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    </div>
                </div>
            </div>
        </div>
    </footer>



    <script src="{{ asset('js/jquery-2.1.4.min.js') }}"></script>
    <script src="{{ asset('js/crum-mega-menu.js') }}"></script>
    <script src="{{ asset('js/swiper.jquery.min.js') }}"></script>
    <script src="{{ asset('js/theme-plugins.js') }}"></script>
    <script src="{{ asset('js/main.js') }}"></script>
    <script src="{{ asset('js/form-actions.js') }}"></script>

    <script src="{{ asset('js/velocity.min.js') }}"></script>
    <script src="{{ asset('js/ScrollMagic.min.js') }}"></script>
    <script src="{{ asset('js/animation.velocity.min.js') }}"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
    <!-- ...end JS Script -->

    <script>
        @if(Session::has('success'))
        
        toastr.success('{{ Session::get('success') }}');
        @endif
        @if(Session::has('info'))
        toastr.info('{{ Session::get('info') }}');
        @endif
    </script>

</body>

<!-- Mirrored from theme.crumina.net/html-seosight/16_shop.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 27 Nov 2016 13:03:04 GMT -->

</html>
