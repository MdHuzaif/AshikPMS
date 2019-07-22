@extends('backend.layouts.master')
@section('title')
    Machinaries Listing Page
@endsection
@section('css')

@endsection
<!-- page content -->
@section('content')
    <div class="right_col" role="main">
        <div class="">
            <div class="page-title">
                <div class="title_left">
                    <h3>Machinaries Management</h3>
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
                            <h2>Listing Machinaries</h2>
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
                        <div class="x_content">
                            <table class="table table-responsive">
                                <thead>
                                <tr>
                                    <th>S.N.</th>
                                    <th>Shop Name</th>
                                    <th>Total</th>
                                    <th>Running</th>
                                    <th>Damage</th>
                                    <th>updated_date</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                <?php $i=1 ?>
                                @foreach($machine as $m)
                                    <tr>
                                        <td> {{$i++}}</td>
                                        
                                       <td>{{$m->shopname}}</td>
                                       <td>{{$m->total}}</td>
                                       <td>{{$m->run}}</td>
                                       <td>{{$m->damage}}</td>
                        
                                       <td>{{$m->updated_at ? $m->updated_at->diffForHumans() : 'no date'}}</td>
                    
                                        <td>
                                            <div class="row">
                                                <div class="col-md-5">
                                                    <a href=" {{route('backend.machine.edit',$m->id)}}" class="btn btn-info "><i class="fa fa-pencil"></i> Edit</a>
                                                </div>
                                               
                                            </div>
                                        </td>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                    
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