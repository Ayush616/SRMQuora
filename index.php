<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.13.0/css/all.css" integrity="sha384-Bfad6CLCknfcloXFOyFnlgtENryhrpZCe29RTifKEixXQZ38WheV+i/6YWSzkz3V" crossorigin="anonymous">


    
    <style>
        body {
              background-image: url('bg.jpg');
              background-repeat: no-repeat;
              background-attachment: fixed; 
              background-size: 100% 100%;
        }

        .loginbox{
            background-color: white;
            margin-left: 30%;
            margin-top: 15% ;
            margin-right: 30%;
            padding: 15px;
        }
        #loader {
            position: fixed;
            left: 0px;
            top: 0px;
            width: 100%;
            height: 100%;
            z-index: 9999;
            background: url('bars.svg') 50% 50% no-repeat rgb(249,249,249);
            opacity: .8;
        }

   
     
    </style>
</head>
<body>
       <div id="loader"></div>
        <div class="shadow card loginbox container-small">
                <div class="row justify-content-center">
                    <div class="temp">
                        <img src="srm_quora_logo.png" width= "140" class="rounded mx-auto d-block" alt="Cinque Terre">
                        <h6 class="text-center">A Place to learn, discover and share your knowlege.</h6>
                        
                    </div>
                </div>
                <hr>

                <div class="row justify-content-between align-items-center">

                    <div class="col-sm-6 my-col text-center" style="border-right: 1px outset">
                        <div class="row justify-content-center mb-2">
                            <button class="btn btn-danger"><i class="fab fa-google-plus"></i>  Sign Up with Gmail</button>
                        </div>   
                        <div class="row justify-content-center"> 
                            <a class="text-decoration-none small" data-toggle="modal" href="" 
                            data-target="#signup">Sign Up with your email</a>
                        </div>
                    </div>

                    <div class="col-sm-5 my-col mt-2">
                                
                            <form action="validation.php" method="POST">
                                <div class="form-group">
                                    <input type="email" name="email" class="form-control mb-2" id="exampleInputEmail1"
                                     aria-describedby="emailHelp" placeholder="Enter email">

                                     <input type="password" name="pass" class="form-control mb-2" id="exampleInputPassword1" 
                                     placeholder="Password">
                                     
                                     <a class="text-decoration-none small" href="">Forgot Password?</a>
                                     <input type="submit" value="Login" name="login" class="btn btn-dark btn-sm float-right">

                                </div>
                            </form>
                    </div>

                </div>
        </div>


    <!--------------------SIGNUP MODAL---------------------------------->    

        <div class="modal" id="signup">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">

                   <form action="validation.php" method="POST" enctype="multipart/form-data"
                   oninput='repass.setCustomValidity(repass.value != pass.value ? "Passwords do not match." : "")'>
                    <div class="modal-header">
                        <p class="display-4">Sign Up with Us.<br>
                        <p class="small"> Fill your information to Sign up.</p>
                    </div>

                    <div class="modal-body">
                     
                        <div class="row modal-row">
                            <div class="col-md-3 custom-call form-group">
                                <label class="small font-weight-bold" for="first">FIRST NAME</label>
                                <input type="text" class="form-control" id="first" name="first" required>
                            </div>
                            <div class="col-md-3 custom-call form-group">
                                <label class="small font-weight-bold" for="last">LAST NAME</label>
                                <input type="text" class="form-control" id="last" name="last" required>
                            </div>
                            <div class="col-md-6 custom-call form-group">
                                <label class="small font-weight-bold" for="first">EMAIL ID</label>
                                <input type="email" class="form-control" placeholder= "example@srmap.edu.in" 
                                name="email" id="email" aria-describedby="emailhelp" required>
                                <small id="emailhelp" class="text-muted">Please enter University Email only</small>
                            </div>
                        </div>
                        <div class="row modal-row">
                            <div class="col-md-5 custom-call form-group">
                                <label class="small font-weight-bold" for="des">SHORT TITLE</label>
                                <input type="text" class="form-control" name="title" id="des" placeholder="Ex: Full Stack Web Developer" required>
                            </div>
                            <div class="col-md-4 custom-call form-group">
                                <label class="small font-weight-bold" for="username">USERNAME</label>
                                <input type="text" class="form-control" name="username" id="username" required>
                            </div>
                            <div class="col-3 custom-call form-group">
                                <label class="small font-weight-bold" for="dob">DOB</label>
                                <input type="text" placeholder="dd-mm-yy" class="form-control" name="dob" id="dob" required>
                            </div>
                           
                        </div>
                        <div class="row modal-row">
                            <div class="col custom-call form-group">
                                <label class="small font-weight-bold" for="city">CITY/VILLAGE/TOWN</label>
                                <input type="text" class="form-control" name="city" id="city" required>
                            </div>
                            <div class="col custom-call form-group">
                                <label class="small font-weight-bold" for="state">STATE</label>
                                <input type="text" class="form-control" name="state" id="state" required>
                            </div>
                            <div class="col custom-call form-group">
                                <label class="small font-weight-bold" for="mobile">MOBILE</label>
                                <input type="number" class="form-control" name="mobile" id="mobile" required>
                            </div>
                        </div>
                        <div class="row modal-row">
                            <div class="col-md-4 custom-call form-group">
                                <label class="small font-weight-bold" for="pass">PASSWORD</label>
                                <input type="text" class="form-control" name="pass" id="pass" required>
                                <small id="pass" class="form-text text-muted">
                                    Your password must be 8-20 characters long, contain letters and numbers, and must not contain spaces, special characters, or emoji.
                                  </small>
                            </div>
                            <div class="col-md-4 custom-call form-group">
                                <label class="small font-weight-bold" for="repass">CONFIRM PASSWORD</label>
                                <input type="password" class="form-control" name="repass" id="repass" required>
                                <small id="repass" class="form-text text-muted">
                                    Password and Confirm Password field must be same.
                                  </small>
                            </div>
                            <div class="col-md-4 custom-call form-group">
                                <label class="small font-weight-bold" for="dp">UPLOAD YOUR IMAGE</label>
                                <input type="file" class="form-control" name="dp" id="dp" required>
                                <small id="dplabel" class="form-text text-muted">
                                    Please upload your image file with extension .jpg, .jpeg, .png only.
                                  </small>
                            </div>
                            
                        </div>

                    </div>

                    <div class="modal-footer">
                        <button type="submit" class="btn btn-success" name="signup">SignUp</button>
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                    </div>
                  </form>
                </div>

            </div>

        </div>

</body>
<script type="text/javascript">

    function passchecker(){
            
        pass = document.getElementById("pass").value;
       
            if(pass.length>8 && pass.match(/[a-z]/) && pass.match(/[A-Z]/) && 
                                        pass.match(/[0-9]/) && pass.match(/.[(,!,@,#,$,%,^,&,*,)]/)){
            document.getElementById("pass").setCustomValidity("");
            }else{
                document.getElementById("pass").setCustomValidity("Your Password in not following the required format.");
            }

    }

    document.getElementsByName("signup")[0].onclick = passchecker;
    

</script>

<script>
    
    
    
    
    
    
    </script>
<script>

    window.onload = function(){
       
        $("#loader").fadeOut("slow");
    };
    
//      window.onload = function() {
//    if (window.jQuery) {  
//        // jQuery is loaded  
//        alert("Yeah!");
//    } else {
//        // jQuery is not loaded
//        alert("Doesn't Work");
//    }
//}
    </script>
</html>