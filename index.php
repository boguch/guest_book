<?php
session_start();
$title = "Главная страница";
require_once "header.php";

$mysql = new mysqli("MySQL-8.2","root","","users_test");
$mysql->query("SET NAMES 'utf8'");

?>

<section class="u-clearfix u-section-1">
<div class="u-clearfix u-sheet u-sheet-1">
        <h1 style = "text-align:center" >Главная страница </h1>
        <p style = "text-align:center">Пожалуйста заполните форму, чтобы оставить своё сообщение на сайте </p>
        <div class="u-form u-form-1">
          <form action="check_post.php" method ="post" class="u-clearfix u-form-spacing-10 u-form-vertical u-inner-form" style="padding: 10px;">
            <div class="u-form-group u-form-name">
              <label for="name-1898" class="u-label">Имя</label>
              <input type="text" placeholder="Введите Ваше имя" name="username" class="u-input u-input-rectangle" value="<?php echo $_SESSION['s_username'] ?>" required="">
              <div class = "text-danger"><?php echo $_SESSION['error_username']?></div>
            </div>
            <div class="u-form-email u-form-group">
              <label for="email-1898" class="u-label">Эл. почта</label>
              <input type="email" placeholder="Введите имейл адрес" name="email" value="<?php echo $_SESSION['s_email']?>" class="u-input u-input-rectangle" required="">
              <div class = "text-danger"><?php echo $_SESSION['error_email']?></div>
            </div>
            <div class="u-form-group u-form-message">
              <label for="message-1898" class="u-label">Сообщение</label>
              <textarea placeholder="Введите Ваше сообщение" rows="4" cols="50"  name="message" class="u-input u-input-rectangle" required=""><?php echo $_SESSION['s_message']?></textarea>
              <div class = "text-danger"><?php echo $_SESSION['error_message']?></div>
            </div>
            <div class="u-form-group u-form-group-3">
              <br><img src="captcha.php" alt="Капча изображение"><br>
              <label for="text-362e" class="u-label">Поле ввода</label>
              <input type="text" placeholder="введите проверочный код" name="kapcha" value="<?php echo $_SESSION['kapcha']?>" class="u-input u-input-rectangle">
              <div class = "text-danger"><?php echo $_SESSION['error_captcha']?></div>
            </div>
            <div class="u-align-left u-form-group u-form-submit">
              <input type = "hidden" name = "button_click_time" value = "">
              
              <button type ="submit" onclick = "document.getElementsByName('button_click_time')[0].value= new Date" class="u-btn u-btn-submit u-button-style">Отправить</button>
            </div>
    </form>
        </div>
</div>
</section>

<?php
    $_SESSION['user_ip'] = $_SERVER['REMOTE_ADDR'];
    $_SESSION['user_browser'] = $_SERVER['HTTP_USER_AGENT'];

    $_SESSION['error_username'] = "";
    $_SESSION['error_email'] = "";
    $_SESSION['error_message'] = "";
    $_SESSION['error_captcha'] = "";

    $_SESSION['s_username'] = "";
    $_SESSION['s_email'] = "";
    $_SESSION['kapcha'] = "";
    $_SESSION['s_message'] = "";
    $_SESSION['s_captcha'] = "";



    $mysql->close();

?>

<?php

require_once "footer.php";
?>