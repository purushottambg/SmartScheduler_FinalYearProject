
<?php /*
session_start();
$username="";
$email="";
$error=array();

//data retrieve operation
$db= new mysqli('localhost','root','','scheduler') or die("Could'nt Connect To The Database!");
//$username=mysqli_real_escape_string($db,$_POST['username']);
//$password=mysqli_real_escape_string($db,$_POST['password']);
//$password=mysqli_real_escape_string($db,$_POST['password1']);
//$password=mysqli_real_escape_string($db,$_POST['password2']);

//validation of the data
if(empty($username)) {array_push($error,"Username must be provided");};
if(empty($password)) {array_push($error,"Password must be provided");};
if(empty($password1)) {array_push($error,"Password1 must be provided");};
if(empty($password2)) {array_push($error,"Password2 must be provided");};
//if($password1 != $password2) {array_push($error,"Password1 do not match Password2");};

//check if user already exists
$user_check_query="SELECT * from users where username='$username' LIMIT 1";
$results= $db->($user_check_query);
$user   = mysqli_fetch_assoc($results);
if($user){
    if($user['username']===$username){array_push($error,"username already exist");};
}

//Register if no user found for same username
if(count($error)==0){
    $password   =   md5($password1);  //function to encrypt the password
    $query      =   "INSERT INTO users (username,email,password) VALUES ('$username','$email','$password')";
    mysqli_query($db,$query);
    $_SESSION['username']   = $username;    
    $_SESSION['success']    = "Your account has been created successfully!";

    header('location: Index.php');
    session_abort();
}*/
?>




<?php
    session_start();
    $username="";
    $email="";
    $password="";
    $password1="";
    $password2="";

    $dbConnection=new mysqli('localhost','root','','scheduler') or die("Failed to connect with database");
       
    if(isset($_POST['username'])){
        $username=mysqli_real_escape_string($dbConnection,$_POST['username']);
        $email   =mysqli_real_escape_string($dbConnection,$_POST['email']);
        $password1=mysqli_real_escape_string($dbConnection,$_POST['password']);
        $password2=mysqli_real_escape_string($dbConnection,$_POST['confirm']);
        if($password1===$password2){
            $password=md5($password1);
        }

    
    $query="INSERT INTO users (username,email,password) VALUES ('wer','dsfs','dfsd')";
    if(mysqli_query($dbConnection,$query)){
        $_SESSION['username']=$username;
        $_SESSION['success']="Your account has been created successs fully!";
        header('location :Homepage.php');
    }
    } 

?>
<?php/*
    $db= new mysqli('localhost','root','','scheduler') or die("failed to connect");
     
    $q="INSERT INTO users (username,email,password) VALUES ('pallavi4purushottam','pallvi4purushottam@gmail.com','74311432')";
   if( mysqli_query($db,$q)){
       echo "Successfull!";
   }
?>