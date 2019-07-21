@extends('backend.layouts.master')
@section('title')
   IMS PRO
@endsection
@section('css')
    <link rel="stylesheet" href="{{asset('backend/plugins/select2.min.css')}}">
    <!-- NProgress -->
    <link href="{{asset('backend/vendors/nprogress/nprogress.css')}}" rel="stylesheet">
    <!-- iCheck -->
    <link href="{{asset('backend/vendors/iCheck/skins/flat/green.css')}}" rel="stylesheet">
    <!-- bootstrap-progressbar -->
    <link href="{{asset('backend/vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css')}}"
          rel="stylesheet">
    <!-- JQVMap -->
    <link href="{{asset('backend/vendors/jqvmap/dist/jqvmap.min.css')}}" rel="stylesheet"/>
    <!-- bootstrap-daterangepicker -->
    <link href="{{asset('backend/vendors/bootstrap-daterangepicker/daterangepicker.css')}}" rel="stylesheet">
    <link href="{{asset('backend/vendors/fullcalendar/dist/fullcalendar.min.css')}}" rel="stylesheet">
    <link href="{{asset('backend/login/css/style.css')}}" rel="stylesheet">
@endsection

<!-- page content -->
@section('content')
    <div class="right_col" role="main">
        <!-- top tiles -->
        <div class="row tile_count" style="font-size: large;">
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12" >
{{-- Page load --}}

<script type="text/javascript">
var timeout;
document.onmousemove = function(){
  clearTimeout(timeout);
  timeout = setTimeout(function(){$('#refresh_1').load(location.href + ' #time_1');
  $('#refresh_2').load(location.href + ' #time_2');
  }, 5000);
}
</script>

{{-- <script type="text/javascript">

var timeout;
document.onmousemove = function(){
  clearTimeout(timeout);
//   timeout = setTimeout(function();
// }
    
    if (setTimeout(function()) > 100){
        setInterval("my_function1();",1)
        function my_function1(){
       $('#refresh_1').load(location.href + ' #time_1');
    }
    setInterval("my_function2();",1)
    function my_function2(){
      $('#refresh_2').load(location.href + ' #time_2');
    }
    
    }
}
    // setInterval("my_function();",500); 
    // function my_function(){
    //   $('#refresh_1').load(location.href + ' #time_1');
    // }
  </script> --}}
                <div id = "refresh_1"class=".bg-olive" style="text-align: center;border-radius: 5px;">
                    <div id ="time_1" class="well">
                    <i class="fa fa-usd"></i>
                    
                    
                            <p class="text-success"> {{$salesToday}} Taka</p>
                      
                           
                     <p class="text-danger">Today's Sale</p> 
                    
                    </div>
                </div><!--/.info-box-->
            </div><!--/.col-->

            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                {{-- Page load 
<script type="text/javascript">
    setInterval("my_function();",500); 
    function my_function(){
      $('#refresh_2').load(location.href + ' #time_2');
    }
    </script>
    --}}
                <div id = "refresh_2"class=".bg-olive" style="text-align: center;border-radius: 5px;">
                    <div id ="time_2" class="well">
                    <i class="fa fa-line-chart"></i>
                    
                    <p class="text-success">{{$totalrevenue}} Taka</p>
                    
                    <p class="text-danger">Total Sales Revenue</p> 
                    </div>
                </div><!--/.info-box-->
            </div><!--/.col-->
        
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                <div class=".bg-olive" style="text-align: center;border-radius: 5px;">
                    <div class="well">
                    <i class="fa fa-check"></i>
                    <p class="text-success">{{$totalcategory}} </p>
                    {{-- <div class="count">{{$totalcategory}}</div> --}}
                    <p class="text-danger"> Total Product Catagory  </p>
                    </div>
                </div><!--/.info-box-->
            </div><!--/.col-->
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                <div class=".bg-olive" style="text-align: center;border-radius: 5px;">
                    <div class="well">
                    <i class="fa fa-table"></i>
                    <p class="text-primary">{{$totalproduct}} </p>
                    {{-- <div class="count">{{$totalproduct}}</div> --}}
                    
                    <div class="text-danger">Total No. of Product</div>
                    </div>
                </div><!--/.info-box-->
            </div><!--/.col-->
        </div>
        <!-- /top tiles -->
        @if(Session::has('success_message'))
            <div class="alert alert-success">
                {{ Session::get('success_message') }}
            </div>
        @endif
        @if(Session::has('error_message'))
            <div class="alert alert-danger">
                {{ Session::get('error_message') }}
            </div>
        @endif
        <div class="resp"></div>
        <br>
        <div class="row">
            <div class="col-md-6">
                <div class="x_panel">
                    <div class="x_title">
                        <h2> 
                                <h3> <small> <p class="text-danger"> স্মার্ট বিক্রয় করুন  </p> </h3> </small>
                            <small>বিক্রির জন্য প্রোডাক্ট বেঁছে নিন </small>
                        </h2>
                        <ul class="nav navbar-right panel_toolbox">
                            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                <ul class="dropdown-menu" role="menu">
                                </ul>
                            </li>
                            <li><a class="close-link"><i class="fa fa-close"></i></a>
                            </li>
                        </ul>
                        <div class="clearfix"></div>
                    </div>
                    <div class="x_content">
                        <form id="btnSave" action="{{route('sales.store')}}" method="post">
                            {{ csrf_field() }}

                            <div class="form-group">
                                <label for="product_id">প্রোডাক্ট বেঁছে নিন (Chose Product) </label>
                                <select class="form-control js-example-basic-single" id="product_id" name="product_id" data-placeholder="--Search Product--" required>
                                </select>
                                <span class="error"><b>
                                       @if($errors->has('product_id'))
                                            {{$errors->first('product_id')}}
                                       @endif</b>
                                    </span>
                            </div>
                            <div class="form-group">
                                <label for="quantity">স্টকে আছে  (Stock Available )</label>
                                <input type="number" class="form-control" id="stock" name="stock" placeholder="Stock Available" disabled>
                                <span class="error"><b>
                                         @if($errors->has('stock'))
                                            {{$errors->first('stock')}}
                                         @endif</b></span>
                            </div>

                            <div class="form-group">
                                <label for="price">প্রতিটি পন্যের দাম (Price/unit*)</label>
                                <input type="float" class="form-control" name="price" id="price" placeholder="price" required>
                                <span class="error"><b>
                                         @if($errors->has('price'))
                                            {{$errors->first('price')}}
                                         @endif</b></span>
                            </div>
                            <div class="form-group">
                                <label for="sales_quantity">পন্যের পরিমাণ ( Quantity) </label>
                                <input type="float" min="1" value="1" class="form-control" id="sales_quantity" name="sales_quantity" placeholder="Quantity" required>
                                <span class="error"><b>
                                         @if($errors->has('sales_quantity'))
                                            {{$errors->first('sales_quantity')}}
                                         @endif</b></span>
                            </div>

                              <div class="form-group">
                                <label for="sales_quantity">Discount </label>
                                <input type="float" min="0" value="0" class="form-control" id="discount" name="discount" placeholder="Discount" required>
                                <span class="error"><b>
                                         @if($errors->has('sales_quantity'))
                                            {{$errors->first('sales_quantity')}}
                                         @endif</b></span>
                            </div>
                            <div class="form-group">
                                    <label for="customer_name">Customer Name and Contact No. </label>
                                    <input type="text"  class="form-control" id="customer_name" name="customer_name" placeholder="Customer Name and Contact No." >
                                   
                                </div>
                                
                               

                            <div class="form-group">
                                <label> (Sales Status):- &nbsp;</label>
                               <input type="radio" name="sales_status" value="1" id="Active" checked=""><label for="Active"> Cash  </label>
                                <!--<input type="radio" name="sales_status" id="deactive" value="0"><label for="deactive"> bKash</label>-->
                                <input type="radio" name="sales_status" id="deactive" value="2"><label for="deactive"> Credit </label>
                            </div>
                            <input type="hidden" name="birthday_status" value="0">
                            <input type="hidden" name="dob" value="2017-">
                            <input type="hidden" name="phone" value="977-">
                            <!-- /.box-body -->
                            <div class="box-footer">
                                <button type="submit" name="btnSave" class="btn btn-primary mb1 bg-red"> বিক্রির জন্য জমা করুন  Add to SmartSales </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div  class="x_panel">
                    <div class="x_title">
                        <h2>
                             <small> <h3> <p class="text-danger"> Create Bill </p> </h3> </small>
                             
                            <small> Check Product List </small>
                        </h2>
                        <ul class="nav navbar-right panel_toolbox">
                            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                   aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                <ul class="dropdown-menu" role="menu">
                                </ul>
                            </li>
                            <li><a class="close-link"><i class="fa fa-close"></i></a>
                            </li>
                        </ul>
                        <div class="clearfix"></div>
                    </div>
                    <div class="x_content">
                        <div id="saleslist">

                        </div>
                        <div id="ajaxform">

                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <br/>
    </div>
    <!-- /page content -->
@endsection

@section('script')
    <script src="{{asset('backend/plugins/select2.min.js')}}"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $(".js-example-basic-single").select2();
        });
    </script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#product_id').on('change', function () {
                var prdid = $(this).val();
                var path = 'getquantity';
                $.ajax({
                    url: path,
                    method: 'post',
                    data: {'product_id': prdid, '_token': $('input[name=_token]').val()},
                    dataType: 'text',
                    success: function (resp) {
                        console.log(resp);
                        //$('#quantity').empty();
                        $('#stock').val(resp);
                    }
                });

            });
            $('#product_id').on('change', function () {
                var prdid = $(this).val();
                var path = 'getprice';
                $.ajax({
                    url: path,
                    method: 'post',
                    data: {'product_id': prdid, '_token': $('input[name=_token]').val()},
                    dataType: 'text',
                    success: function (resp) {
                        console.log(resp);
                        //$('#price').empty();
                        $('#price').val(resp);
                    }
                });
            });
        });
    </script>
    <script>
        $(document).ready(function () {
            $.ajaxSetup({
                headers: {
                    'X-CRF-TOKEN': $('meat[name = "csrf-token"]').attr('content')
                }
            });
            $('#btnSave').on('submit', function (e) {
                e.preventDefault();
                var url = $(this).attr('action');
                var post = $(this).attr('method');
                var data = $(this).serialize();
                $.ajax({
                    url: url,
                    type: post,
                    data: data,
                    success: function (data) {
                        refreshproduct();
                        readsales();
                        ajaxform();
                        var m = "<div class='alert alert-success'>" + data.success_message + "</div>";
                        // alert(data.success_message);
                        $('.resp').html(m);
                        document.getElementById("btnSave").reset();
                    }
                });
            });
        });
        readsales();
        refreshproduct();
        readsales();
        refreshproduct();
        ajaxform();
        function readsales() {
            $.ajax({
                type: 'get',
                url: "{{url('ajaxsales-list')}}",
                dataType: 'html',
                success: function (data) {
                    $('#saleslist').html(data);
                }
            })
        }
        function ajaxform() {
            $.ajax({
                type: 'get',
                url: "{{url('ajax-form')}}",
                dataType: 'html',
                success: function (data) {
                    $('#ajaxform').html(data);
                }
            })
        }
        function refreshproduct() {
            $.ajax({
                type: 'get',
                url: "{{url('refresh-product')}}",
                dataType: 'html',
                success: function (data) {
                    $('#product_id').html(data);
                }
            })
        }
        function printorder() {
            $.ajax({
                url: "{{url('sales-allpdf')}}",
                type: 'get',
                dataType: 'html',
                success:function(data) {
                    // 
                    var mywindow = window.open('', 'This is an Example', 'height=400,width=600');
                    mywindow.document.write('<html><head><title></title>');
                    mywindow.document.write('</head><body>');
                    mywindow.document.write(data);
                    mywindow.document.write('</body></html>');
                    mywindow.document.close();
                    mywindow.focus();
                    mywindow.print();
                    mywindow.close();

                }
            });
        }

    </script>

    <!-- FastClick -->
    <script src="{{asset('backend/vendors/fastclick/lib/fastclick.js')}}"></script>
    <!-- NProgress -->
    <script src="{{asset('backend/vendors/nprogress/nprogress.js')}}"></script>
    <!-- Chart.js -->
    <script src="{{asset('backend/vendors/Chart.js/dist/Chart.min.js')}}"></script>
    <!-- gauge.js -->
    <script src="{{asset('backend/vendors/gauge.js/dist/gauge.min.js')}}"></script>
    <!-- bootstrap-progressbar -->
    <script src="{{asset('backend/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js')}}"></script>
    <!-- iCheck -->
    <script src="{{asset('backend/vendors/iCheck/icheck.min.js')}}"></script>
    <!-- Skycons -->
    <script src="{{asset('backend/vendors/skycons/skycons.js')}}"></script>
    <!-- Flot -->
    <script src="{{asset('backend/vendors/Flot/jquery.flot.js')}}"></script>
    <script src="{{asset('backend/vendors/Flot/jquery.flot.pie.js')}}"></script>
    <script src="{{asset('backend/vendors/Flot/jquery.flot.time.js')}}"></script>
    <script src="{{asset('backend/vendors/Flot/jquery.flot.stack.js')}}"></script>
    <script src="{{asset('backend/vendors/Flot/jquery.flot.resize.js')}}"></script>
    <!-- Flot plugins -->
    <script src="{{asset('backend/vendors/flot.orderbars/js/jquery.flot.orderBars.js')}}"></script>
    <script src="{{asset('backend/vendors/flot-spline/js/jquery.flot.spline.min.js')}}"></script>
    <script src="{{asset('backend/vendors/flot.curvedlines/curvedLines.js')}}"></script>
    <!-- DateJS -->
    <script src="{{asset('backend/vendors/DateJS/build/date.js')}}"></script>
    <!-- JQVMap -->
    <script src="{{asset('backend/vendors/jqvmap/dist/jquery.vmap.js')}}"></script>
    <script src="{{asset('backend/vendors/jqvmap/dist/maps/jquery.vmap.world.js')}}"></script>
    <script src="{{asset('backend/vendors/jqvmap/examples/js/jquery.vmap.sampledata.js')}}"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="{{asset('backend/vendors/moment/min/moment.min.js')}}"></script>
    <script src="{{asset('backend/vendors/bootstrap-daterangepicker/daterangepicker.js')}}"></script>
    <script src="{{asset('backend/vendors/fullcalendar/dist/fullcalendar.min.js')}}"></script>
    <!-- Custom Theme Scripts -->
@endsection




