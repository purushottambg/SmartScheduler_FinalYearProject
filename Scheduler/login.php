<?php
    $username="";
    $password="";
    session_start();
    $dbConnection=new mysqli('localhost','root','','scheduler');        //database connection
    if( $dbConnection -> connect_errno ){
        echo "Failed to connect database ".$mysqli -> connect_error;
        exit();
    }
    if ( $_SERVER["REQUEST_METHOD"]=="POST"){                           //form data retrieval
        $username=$_POST['username'];
        $password=$_POST['password'];
    }
    $insertQuery="SELECT * FROM users WHERE username ='$username' and password='$password' LIMIT 1"; //query to be performed
    $checkUser=$dbConnection->query($insertQuery);
    if($checkUser->num_rows == 1){
        $result=$checkUser->fetch_assoc();
        $_SESSION['username']=$result['username'];
        $_SESSION['password']=$result['password'];
        echo $result['username']." you're logged in";
        header('location: Homepage.php');
    }
    else{
        $_SESSION['username']="Invalid username/password";
        header('location: Homepage.php');
    }
?>