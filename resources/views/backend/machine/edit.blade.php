@extends('backend.layouts.master')
@section('title')
    Machinaries Edit Page
@endsection
@section('css')

@endsection
<!-- page content -->
@section('content')
    <div class="right_col" role="main">
        <div class="">
            <div class="page-title">
                <div class="title_left">
                    <h3>Machinaries Management </h3>
                </div>
                <div class="title_right">
                    <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                        <div class="col-md-5 col-sm-5 col-xs-12 form-group top_search" style="padding-left: 75px;">
                            <div class="input-group">
                                <a href="{{route('backend.machine.index')}}" class="btn btn-success">View Machinaries</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="clearfix"></div>
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
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="x_panel">
                        <div class="x_title">
                            <h2>Edit Machinaries</h2>
                            <ul class="nav navbar-right panel_toolbox">
                                <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                       aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                    <ul class="dropdown-menu" role="menu">
                                        <li><a href="#">Settings 1</a>
                                        </li>
                                        <li><a href="#">Settings 2</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a class="close-link"><i class="fa fa-close"></i></a>
                                </li>
                            </ul>
                            <div class="clearfix"></div>
                        </div>
                        <div class="x_content">
                        <form action="{{url('/update-machine',$machine->id)}}" method="post">
                        
                                {{ csrf_field()}}
                                <div class="form-group">
                                    <label for="name">ShopName*</label>
                                    <input type="text" class="form-control" id="shopname" value="{{$machine->shopname}}" name="shopname"
                                           placeholder="Enter Shopname">
                                    <span class="error"><b>
                            @if($errors->has('name'))
                                                {{$errors->first('name')}}
                                            @endif</b>
                        </span>
                                </div>

                                <div class="form-group">
                                    <label for="name">Total*</label>
                                    <input type="number" class="form-control" id="shopname" value="{{$machine->total}}" name="total"
                                           placeholder="Enter Total">
                                    <span class="error"><b>
                            @if($errors->has('name'))
                                                {{$errors->first('name')}}
                                            @endif</b>
                        </span>
                                </div>
                                

                                <div class="form-group">
                                    <label for="name">Damaged*</label>
                                    <input type="number" class="form-control" id="damage" value="{{$machine->damage}}" name="damage"
                                           placeholder="Enter damaged Machine">
                                    <span class="error"><b>
                            @if($errors->has('name'))
                                                {{$errors->first('name')}}
                                            @endif</b>
                        </span>
                                </div>
                               
                                
                                <div class="box-footer">
                                    <button type="submit" name="btnCreate" class="btn btn-primary">Update Machinaries</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /page content -->
@endsection

