<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="{{asset('images/user.png')}}" rel="icon" type="image/x-icon"/>
    <link href="{{asset('images/user.png')}}" rel="shortcut icon" type="image/x-icon"/>
    <title> User Registration</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="{{asset('backend/login/css/bootstrap.min.css')}}"/>
    <link rel="stylesheet" href="{{asset('backend/login/css/bootstrap-responsive.min.css')}}"/>
    <link rel="stylesheet" href="{{asset('backend/login/css/matrix-login.css')}}"/>
    <link href="{{asset('backend/login/font-awesome/css/font-awesome.css')}}" rel="stylesheet"/>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
    <style type="text/css">
        .error{
            color:red;
        }
    </style>
    <meta charset="UTF-8"/>
</head>
<body style="background-color: gray">
<div id="loginbox" style="background-color: green;">
        
    <form class="form-vertical" action="{{route('user.store')}}" method="post">
        {{csrf_field()}}
        <div class="control-group ">Welcome to User Registration </div>
        <div class="control-group">
            <div class="controls">
                <div class="input-group">
                        <label class="col-sm-2 control-label">Full Name </label>
                    <input type="text" name="name" placeholder="Full Name"/>
                </div>
                <span class="error">
                    @if($errors->has('name'))
                        {{$errors->first('name')}}
                    @endif
                </span>
            </div>
        </div>
        <div class="control-group">
            <div class="controls">
                    <div class="input-group">
                    <label class="col-sm-2 control-label">Email  </label>
                    <input type="email" name="email" placeholder="Email"/>
                </div>
                <span class="error">
                    @if($errors->has('email'))
                        {{$errors->first('email')}}
                    @endif
                </span>
            </div>
        </div>
        <div class="control-group">
            <div class="controls">
                    <div class="input-group">
                            <label class="col-sm-2 control-label">User Name </label>
                    <input type="text" name="username" placeholder="Username"/>
                </div>
                <span class="error">
                    @if($errors->has('username'))
                        {{$errors->first('username')}}
                    @endif
                </span>
            </div>
        </div>
        <div class="control-group">
            <div class="controls">
                    <div class="input-group">
                            <label class="col-sm-2 control-label">Role </label>
                    <select class="form-control" id="role_id" name="role" style="height: 38px; width: 300px">
                        <option value="">Select Role</option>
                        @foreach($role as $m)
                            <option value="{{$m->id}}">{{$m->name}}</option>
                        @endforeach
                    </select>
                </div>
                <span class="error">
                    @if($errors->has('role'))
                        {{$errors->first('role')}}
                    @endif
                </span>
            </div>
        </div>
        <div class="control-group">
            <div class="controls">
                    <div class="input-group">
                            <label class="col-sm-2 control-label">Password </label>
                    <input type="password" name="password" placeholder="Password"/>
                </div>
                <span class="error">
                    @if($errors->has('password'))
                        {{$errors->first('password')}}
                    @endif
                </span>
            </div>
        </div>
        <div class="form-actions">
            <span class="pull-left"><a href="{{route('user.dashboard')}}" class="flip-link btn btn-info">Cancel </a></span>
            <span class="pull-right"><button type="submit" name="btnSave" class="btn btn-success"> New Registeration</button></span>
        </div>
    </form>

</div>

<script src="{{asset('backend/login/js/jquery.min.js')}}"></script>
<script src="{{asset('backend/login/js/matrix.login.js')}}"></script>
</body>
</html>
