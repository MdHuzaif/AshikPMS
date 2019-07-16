<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="{{asset('images/user.png')}}" rel="icon" type="image/x-icon"/>
    <link href="{{asset('images/user.png')}}" rel="shortcut icon" type="image/x-icon"/>
    <title>@Yield('title')</title>

    <!-- Bootstrap -->
    <link href="{{asset('backend/vendors/bootstrap/dist/css/bootstrap.min.css')}}" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="{{asset('backend/vendors/font-awesome/css/font-awesome.min.css')}}" rel="stylesheet">
    <!-- Custom Theme Style -->
    <link href="{{asset('backend/build/css/custom.min.css')}}" rel="stylesheet">

    <style type="text/css">
        .error {
            color: red;
        }
        
    .footer {
  background-color: #777;
  padding: 10px;
  text-align: center;
  background-color: white;
   color: black;
}

    </style>
    @Yield('css')
</head>
<body class="nav-md">
<div class="container body">
    <div class="main_container">
        <div class="col-md-3 left_col">
            <div class="left_col scroll-view">
                <div class="navbar nav_title" style="border: 0;">
                    <a href="{{route('user.dashboard')}}" class="site_title"><span>
                            <img src="{{asset('images/user.png')}}" alt="{{config('app.name')}}"></span></a>
                </div>
                <div class="clearfix"></div>
                <!-- menu profile quick info -->
                <div class="profile clearfix">
                    <div class="profile_pic">
                        <img src="{{asset('images/user.png')}}" alt="..." class="img-circle profile_img">
                    </div>
                    <div class="profile_info">
                        <span>Helllo Mr. ,</span>
                        <h2>{{ Auth::user()->name}}</h2>
                    </div>
                </div>
                <!-- /menu profile quick info -->
                <br/>

                    

                    
                <!-- sidebar menu -->
                
                <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
                    <div class="menu_section">
                        <h3>General</h3>
                        <ul class="nav side-menu">
                            @php
                             $user = Auth::user();
                             $module = $user->roles[0]->modules->sortBy('module_rank')->where('view_sidebar','=',1);
                            @endphp
                            @foreach($module as $m)
                            <li><a href="{{url($m->module_url)}}"><i class="{{$m->module_icon}}"></i>{{$m->name}}</a></li>
                            @endforeach
                        </ul>
                    </div>
                </div>
                <!-- /sidebar menu -->
            </div>
        </div>
        <!-- top navigation -->
        <div class="top_nav">
            <div class="nav_menu">
                <nav>
                    <div class="nav toggle">
                        <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                    </div>

                    <ul class="nav navbar-nav navbar-right">
                        <li class="">
                            <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown"
                               aria-expanded="false">
                                <img src="{{asset('images/user.png')}}" alt="">{{ Auth::user()->name}}
                                <span class="fa fa-power-off"></span>
                            </a>
                            <ul class="dropdown-menu dropdown-usermenu pull-right">
                                <li><a href="{{route('change.password')}}"> Change Password</a></li>
                                <li><a href="{{route('user.logout')}}"><i class="fa fa-sign-out pull-right"></i> Log Out</a>
                                </li>
                            </ul>
                        </li>

                        {{-- <li role="presentation" class="dropdown">
                            <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
                                <i class="fa fa-bell"></i>
                                <span class="badge bg-green">2 </span>
                            </a>
                            <ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu">
                                <li>
                                    <a>
                                        <span class="image"><img src="{{asset('images/user.png')}}" alt="Profile Image"/></span>
                                        <span>
                                            <span>Notification</span>
                                            <span class="time">20 minuts ago</span>
                                        </span>
                                        <span class="message"> This is Message About something From somewere Else </span>
                                    </a>
                                </li>
                                <li>
                                    <div class="text-center">
                                        <a>
                                            <strong>See All Alerts</strong>
                                            <i class="fa fa-angle-right"></i>
                                        </a>
                                    </div>
                                </li>
                            </ul>
                        </li> --}}
                    </ul>
                </nav>
            </div>
        </div>
        <!-- /top navigation -->
        <!--#####################################################
        ####################################################### -->
        <!-- page content -->
       @yield('content')
        <!-- / page content -->
        <!--#####################################################
         ####################################################### -->
        <!-- footer content -->
        <footer>
            
            <div class="footer">
                <p class="h6"> You can contact us @ 01644529316 (Rakibul Hasan)  </p>
                <p class="h6"> IMSPROBD is ready to deliver any secure and user friendly management software for your Business within very short time at cheap rate </p>
                
                <p> <a href="https://www.facebook.com/imsprobd/">  24 Hours Customer Support on Facebook </a> </p>
                <p>Any customization is available for your desired system.</p>
              
              
                
             </div>
            <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
    </div>
</div>
<!-- jQuery -->
<script src="{{asset('backend/vendors/jquery/dist/jquery.min.js')}}"></script>
<!-- Bootstrap -->
<script src="{{asset('backend/vendors/bootstrap/dist/js/bootstrap.min.js')}}"></script>
<script src="{{asset('backend/build/js/custom.min.js')}}"></script>
@Yield('script')
</body>
</html>