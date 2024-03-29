@extends('backend.layouts.master')
@section('title')
    Machinary Listing Page
@endsection
@section('css')

@endsection
<!-- page content -->
@section('content')
    <div class="right_col" role="main">
        <div class="">
            <div class="page-title">
                <div class="title_left">
                    <h3>Machinary Management</h3>
                </div>
                <div class="title_right">
                    <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                        <div class="col-md-5 col-sm-5 col-xs-12 form-group top_search" style="padding-left: 50px;">
                            <div class="input-group">
                                <!-- add a create page -->
                                <a href="{{route('machine.create')}}" class="btn btn-success">Create Machine</a>
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
                            <h2>Listing Machines</h2>
                            <ul class="nav navbar-right panel_toolbox">
                                <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
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
                            <!---Show summery -->
                            <div class="x_content">
                
               <table width="100%" class="table table-striped table-bordered table-hover" >
                                <thead>
                                <tr>
                                    <th>S.N.</th>
                                    <th>Shop Name</th>
                                    <th>Running</th>
                                    <th>Damaged</th>
                                    <th>Total</th>
                                </tr>
                                </thead>
                                <tbody>

                                <tr>
                                    
                                   <td>1</td>
                                   <td>Machinary-1</td>
                                   <td>{{$r1}}</td>
                                   <td>{{$d1}}</td>
                                   <td>{{$t1}}</td>
                                </tr>

                                 <tr>
                                    
                                   <td>2</td>
                                   <td>Machinary-2</td>
                                   <td>{{$r2}}</td>
                                   <td>{{$d2}}</td>
                                   <td>{{$t2}}</td>
                                </tr>

                                </tbody>
                            </table><br>

                                <table width="100%" class="table table-striped table-bordered table-hover" id="machinetable">
                                <thead>
                                <tr>
                                
                                    <th>Shop Name</th>
                                    <th>Machine Name</th>
                                    <th>Status</th>
                                    <th>Issue Date</th>
                                    <th>Description</th>
                                    <th>Create Date</th>
                                    <th>Action</th>
                                    
                                    
                                </tr>
                                </thead>
                                <tbody>
                        
                                @foreach($machine as $m)
                                    <tr>
                                
                                        <td> <b>{{$m->shopName}}</b></td>
                                        <td> {{$m->machineName}}</td>
                                         <td>{{$m->status}}</td>
                                          <td>{{$m->issueDate}}</td>
                                           <td>{{$m->description}}</td>
                                        <td> {{$m->created_at}}</td>
                                        <td>
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <a href="{{route('machine.edit',$m->id)}}" class="btn btn-info"><i class="fa fa-pencil"></i> Edit</a>
                                                </div>
                                                <div class="col-md-4">
                                                    <form action="{{route('machine.delete' ,$m->id)}}" method="post">
                                                        <input type="hidden" name="_method" value="DELETE">
                                                        {{ csrf_field()}}
                                                        <button type="submit" class="btn btn-danger" onclick="return confirm('are you sure to delete?')" ><i class="fa fa-trash-o"></i> Delete</button>
                                                    </form>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                        </div>
                        <!-- Show detail--->
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /page content -->
@endsection

@section('script')
    <script type="text/javascript" src="{{asset('backend/plugins/jquery.dataTables.min.js')}}"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $('#machinetable').DataTable();
        } );
    </script>
@endsection


