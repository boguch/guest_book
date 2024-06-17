<?php
session_start();
require_once "header.php";
$mysql = new mysqli("MySQL-8.2","root","","users_test");
$mysql->query("SET NAMES 'utf8'");
?>

<?php

function redirect(){
    header('Location: index.php');
    exit;
}

$username = htmlspecialchars(trim($_POST['username']));
$email = htmlspecialchars(trim($_POST['email']));
$captcha = htmlspecialchars(trim($_POST['kapcha']));
$message = htmlspecialchars(trim($_POST['message']));
$button_click_time = $_POST['button_click_time'];
$user_ip = $_SERVER['REMOTE_ADDR'];
$user_browser = $_SERVER['HTTP_USER_AGENT'];

$_SESSION['s_username'] = $username;
$_SESSION['s_email'] = $email;
$_SESSION['user_captcha'] = $captcha;
$_SESSION['s_message'] = $message;
$_SESSION['s_captcha'] = $captcha;
$check_captcha = $_SESSION['captcha'];

if (isset($_POST['kapcha'])) {

    if(strlen($username) <= 1) {
        $_SESSION['error_username'] = "Введите корректное имя";
        redirect();
    }
    else if(strlen($email) < 5 || strpos($email, "@" == false)) {
        $_SESSION['error_email'] = "Вы ввели некорреткный email";
        redirect();
    }
    else if (strlen($message) <= 10) {
        $_SESSION['error_message'] = "Сообщение не менее 10 символов";
        redirect();
    }
    else if (($captcha != $check_captcha) || $captcha == "") {
        $_SESSION['error_captcha'] = "Не правильно введена captcha";
        redirect();
    }
    else {
        $_SESSION['error_username'] = "";
        $_SESSION['error_email'] = "";
        $_SESSION['error_message'] = "";
        $_SESSION['error_captcha'] = "";

        $mysql->query("INSERT INTO `users`(`username`,`email`,`captcha`,`text`,`date`,`ip`,`browser`) VALUES('$username','$email','$captcha','$message','$button_click_time','$user_ip','$user_browser')");
        
    }
}

$mysql->close();
?>

<section class="u-clearfix u-section-1" >

<div >
        <h1 style = "text-align:center">Вы успешно оставили сообщение</h1>
        <h3 style = "text-align:center">Вы можете перейти на вкладку сообщения,</h3>
        <h3 style = "text-align:center">чтобы посмотреть сообщения других пользователей</h3>
        <h3 style = "text-align:center">или вернуться на главную, чтобы продолжить отправлять сообщения</h3>

</div>

</section>