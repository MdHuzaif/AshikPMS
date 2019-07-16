<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    
    <title>Login to Demo of IMSPROBD </title>
  
    
    
    
   
    <style type="text/css">
        .error {
            color: red;
        }

body {font-family: Arial, Helvetica, sans-serif;}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

/* Set a style for all buttons */
button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}
div.sticky {
  position: -webkit-sticky;
  position: sticky;
  top: 0;
  background-color: gray;
  padding: 50px;
  font-size: 20px;
}
button:hover {
  opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
  position: relative;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
  position: absolute;
  right: 25px;
  top: 0;
  color: #000;
  font-size: 35px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: red;
  cursor: pointer;
}

/* Add Zoom Animation */
.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)} 
  to {-webkit-transform: scale(1)}
}
  
@keyframes animatezoom {
  from {transform: scale(0)} 
  to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}





.main {
  padding: 16px;
  margin-top: 30px;
  height: 1500px; /* Used in this example to enable scrolling */
}

 .footer {
  background-color: #777;
  padding: 10px;
  text-align: center;
  background-color: white;
   color: black;
}
</style>
    
    
</head>
<body>
 <nav class="navbar navbar-inverse">
  <a href="https://www.imsprobd.com"><h4>IMSPROBD</h4></a>
  <a href="">{{ "   "  }}</a>
  <a href="#Features"> <strong> <font color="yellow" ><h4>হিসাবের গড়মিল আর না!!      নিরাপদ বেঁচাকেনা করুন আমাদের inventory management software এর মাধ্যমে, ঘরে বসেই বেঁচাকেনার সব হিসেব দেখুন </h4>   </font></strong> </a>
  <a href="#contact">Contact: 01644529316</a>
</nav>

<h2> Welcome to secured IMSPROBD DEMO Login </h2>
<p>A secure and fast business management software for your business</p>

   
     <div class="container">
<div id="loginbox">
    {{-- @if(Session::has('success_message'))
        <div class="alert">
            {{ Session::get('success_message') }}
        </div>
    @endif
    @if(Session::has('error_message'))
        <div class="alert">
            {{ Session::get('error_message') }}
        </div>
    @endif --}}
    <form class="form-vertical" action="{{route('user.check')}}" method="post">
        {{csrf_field()}}
       
        <div class="control-group">
            <div class="controls">
                    <div class="container">
                    <label>Username<b> </b> </label>
                    <input type="text" name="username"  placeholder="Enter Username" required/>
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
                    <div class="container">
                            <label><b> Password </b>  </label>
                    <input type="password" name="password" placeholder="Enter Password" required />
                </div>
                <span class="error">
                    @if($errors->has('password'))
                        {{$errors->first('password')}}
                    @endif
                </span>
            </div>
        </div>
        <div class="form-actions">
            {{-- <span class="pull-left"><a href="{{route('reset.password')}}" class="flip-link btn btn-info">Lost password?</a></span> --}}
            <span class="pull-right"><button type="submit"> Login</button></span>
        </div>
    </form>

    @if(Session::has('success_message'))
        <div class="jumbotron text-center" style="background: white;">
          <font color="blue">  {{ Session::get('success_message') }} !!</font>
        </div>
    @endif
    @if(Session::has('error_message'))
    <div class="jumbotron text-center" style="background: white;">
              <h4> <strong> <font color="red"> {{ Session::get('error_message') }} !! </font></strong> </h4>  
        </div>
    @endif
</div>


</div>

<script src="{{asset('backend/login/js/jquery.min.js')}}"></script>
<script src="{{asset('backend/login/js/matrix.login.js')}}"></script>

</body>



 <footer>
            
            <div class="footer">
                <p>For username and password please call @ 01644529316 and enjoy the demo</p>
                <div id = "Features">
    <strong> <p> Features:<p> </strong>
    <p> Sales Mangement, Bangla UI, Purchase Management, Expense Management, </p> 
    <p>Autometic Sales,Purchase,Expense report generate </p>
    <p> Any Customization you want for your business </p>
</div>
               <strong><p class="h6"> IMSPROBD is ready to deliver any secure and user friendly management software for your Business within very short time at cheap rate </p> </strong> 
                
             <strong>   <p> <a href="https://www.facebook.com/imsprobd/">  24 Hours Customer Support on Facebook </a> </p></strong> 
               
              
              
                
             </div>
            <div class="clearfix"></div>
        </footer>
</html>
