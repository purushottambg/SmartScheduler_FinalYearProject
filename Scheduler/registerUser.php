<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rgister as a User/Organiser</title>
    <style>
        * {
        box-sizing: border-box;
        }
        .body {margin: 0;}
        .header {
        padding: 10px;
        text-align: center;
        background:orange;
        color: white;
        }
        .navbar {
        overflow: hidden;
        background-color: dimgrey;
        }
        .navbar a {
        float: left;
        display: block;
        color: white;
        text-align: center;
        padding: 10px 10px;
        }
        .navbar a.right {
        float: right;
        }
        .navbar a:hover{
        background-color: #eee;
        color: black;
        }
        .body{
            display: flex;
            flex-wrap: wrap;
        }
        .data{
            flex: 50%;
            background-color: azure;
            padding: 20px;
        }
        .login{            
            flex: 50%;
            background-color: antiquewhite;
            padding: 20px;
        }
        .logoimg{
            float: left;
            height: 85px;
            width: 160px;
        }
        .searchbutton{
            float: right;
            height: 40px;
        }
        .search{
            height: 40px;
            width: 60px;
        }
</style>
</head>
<body>   
        <div class="header">
            <div><img src="mahabharat.jpg" class="logoimg"></div>
            <h1>Welcome to the Smart Scheduler!</h1>
        </div>
        <div class="navbar">
            <a href="https://www.educba.com/finance/courses/financial-analyst-course/">Finance</a>
            <a href="https://www.educba.com/data-science/courses/data-science-course/">Data Science</a>
            <a href="https://www.educba.com/software-development/courses/software-development-course/">Software Development</a>
            <a href="https://www.educba.com/excel/courses/excel-vba-certification-course/">Excel</a>
            <a href="https://www.educba.com/design/courses/design-course/">Design</a>
            <div class="searchbutton">
                <input type="text" placeholder="search for an appointment" style="height: 38px;">
                <button type="submit" class="search">Search</button>
            </div>
        </div>
        <div class="body" style="display: flex;flex-wrap: wrap;">     <!--for entire body-->
            <div class="data" style="flex: 50%;">
                <p>This WebApplication is designed so we could help the citizen of planet C-53. In this pandemic we all must follw
                    all the government guidlines which will help us to servive this situation. this app will play key role to stop 
                    the spread of the corona virus. to stop the spread we all are trying to avoid the crowdy places so no one could
                    ever infected by this disease. and in this all i can say this web app will help you to not to gather in the queues 
                    that's one of the biggest cauuse people are coming in contact with infected people. using this app we will Schedule
                    your appointment at right time. Hope you find this webApp helpful. <b>Thank You!</b>
                </p>
            </div>
            <div class="login" style="flex: 50%;">
                <h2 align="center">LogIn </h2>
                <form action="server.php" method="POST">
                <b>     <lable for="username">username:     <input type="text" placeholder="as @Username" name="username" required></lable><br><br>
                        <lable for="email">      Email:     <input type="text" placeholder="xxxxX@gmail.com" name="email" required></lable><br><br>
                        <lable for="username">Password:     <input type="text" placeholder="as @Username" name="password" required></lable><br><br>
                        <lable for="email">   RE Enter:     <input type="text" placeholder="xxxxX@gmail.com" name="confirm" required></lable><br><br>
                        <button type="submit" style="background-color:silver;width: 250px;">Sign Up</submit></b>
                        <button type="button" style="background-color:silver;float:right;width: 100px;height: 40px;"><u><a href="registerOrganiser.php">Register as Organiser   </a></u>
                </form>
            </div>
        </div>
</body>
</html>