<?php
session_start();

$image = imagecreate(200, 50);

$background_color = imagecolorallocate($image, 255, 255, 255);

$text_color = imagecolorallocate($image, 0, 0, 0);

$characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';

$_SESSION['captcha'] = ""; 

$length = 5; 
for ($i = 0; $i < $length; $i++) {
    $_SESSION['captcha'] .= $characters[rand(0, strlen($characters) - 1)];
}

imagestring($image, 5, 50, 15, $_SESSION['captcha'], $text_color);

header('Content-type: image/png');

imagepng($image);

imagedestroy($image);

?>