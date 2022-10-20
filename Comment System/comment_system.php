<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
   
       Enter comments:<input type="text" name="comment" id="comment">
            <button id="submit" name="submit" onclick="insertComment()">Insert Comments</button>
            
   <h2>Entered Comments:</h2>
   <div id="show">
       
   </div>
    
    
    
</body>

<script type="text/javascript">
    
    
    
 function insertComment(){
     
     var comment = $("#comment").val();
     
     $.ajax({
         url : "comment.php",
         type : "POST",
         data : {
             comment : comment
         }, 
         
         success:function(data){
            fuck();
         }
     });
     
 };
    fuck();
        
        function fuck(){
            $.ajax({
               url: "display.php",
                type : "post",
                
                success: function(gotData){
                    $("#show").html(gotData);
                }
            });
        }
   
    
    
    
    </script>
</html>


