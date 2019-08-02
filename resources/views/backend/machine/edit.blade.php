@extends('backend.layouts.master')
@section('title')
    Machinary Edit Page
@endsection
@section('css')

@endsection
<!-- page content -->
@section('content')
    <div class="right_col" role="main">
        <div class="">
            <div class="page-title">
                <div class="title_left">
                    <h3>Machinary Management </h3>
                </div>
                <div class="title_right">
                    <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                        <div class="col-md-5 col-sm-5 col-xs-12 form-group top_search" style="padding-left: 75px;">
                            <div class="input-group">
                                <a href="{{route('machine.list')}}" class="btn btn-success">View Machinary</a>
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
                            <h2>Edit Machinary</h2>
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
                            <form action="{{route('machine.update',$machine->id)}}" method="post">
                               

                             {{ csrf_field()}}
                                <div class="form-group">
                                    <label for="name">Shop-Name*</label>
                                   <select class="form-control js-example-basic-single"  name="shopName" data-placeholder="--Search Heading--" required>
                                        <option value="{{$machine->shopName}}" >{{$machine->shopName}}</option>
                                    
                                        <option value="Machinary-1">Machinary-1</option>
                                        <option value="Machinary-2">Machinary-2</option>
                        
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="slug">Machine-Name*</label>
                                    <input type="text" class="form-control"  name="machineName"
                                            value="{{$machine->machineName}}">
                                    <span class="error"><b>
                                            @if($errors->has('slug'))
                                                {{$errors->first('slug')}}
                                            @endif</b>
                                         </span>
                                </div>
                                <div class="form-group">
                                    <label>Status*</label><br>
                                    @if($machine->status == "running")
                                        <input type="radio" name="status" value="running" id="Active" checked=""><label
                                                for="Active"> Running</label>
                                        <input type="radio" name="status" id="damaged" value="damaged"><label for="deactive">Damaged</label>
                                    @else
                                        <input type="radio" name="status" value="running" id="Active" ><label
                                                for="Active"> Running</label>
                                        <input type="radio" name="status" id="damaged" value="0" checked=""><label for="deactive">Damaged</label>

                                         @endif
                                </div>
                                 <div class="form-group">
                                    <label for="slug">Issue-Date*</label>
                                    <input type="date" class="form-control"  name="issueDate"
                                          value="{{$machine->issueDate}}" >
                                    <span class="error"><b>
                                            @if($errors->has('slug'))
                                                {{$errors->first('slug')}}
                                            @endif</b>
                                         </span>
                                </div>
                                 <div class="form-group">
                                    <label for="slug">Description*</label>
                                    <input type="text" class="form-control"  name="description"
                                           value="{{$machine->description}}">
                                    <span class="error"><b>
                                            @if($errors->has('slug'))
                                                {{$errors->first('slug')}}
                                            @endif</b>
                                         </span>
                                </div>
                                <!-- /.box-body -->
                                <div class="box-footer">
                                    <button type="submit" name="btnCreate" class="btn btn-primary" >Update  Machinary</button>
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

@section('script')
    
@endsection

