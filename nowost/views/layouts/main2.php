
<?php
/* @var $this \yii\web\View */
/* @var $content string */

use app\widgets\Alert;
use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use app\assets\AppAsset;
AppAsset::register($this);

?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?= Html::csrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
	<link rel="stylesheet" href="css/slimbox2.css" type="text/css" media="screen" />
	<link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="free_versia_dla_slabovidyashih/special.js"></script>   
</head>
<body>
<body>
<?php $this->beginBody() ?>
<div id="background">

<div id="templatemo_wrapper">
	<div id="templatemo_header">
    	<div id="site_title"><a href="#">Aqua HTML Template</a></div>
    </div> <!-- END of -->
    
    <div id="templatmeo_menu">
    	<ul>
        	<li><a href="#home" class="home">Home</a></li>
            <li><a href="#about" class="about">About</a></li>
            <li><a href="#portfolio" class="portfolio">Portfolio</a></li>
            <li><a href="#services" class="services">Services</a></li>
            <li><a href="#contact" class="contact">Contact</a></li>
		</ul>
    </div> <!-- END of -->
    
    <div id="templatemo_main">
    	<div id="home" class="main_box">
        	<h1>Aqua Theme</h1>
        	<div class="col col_23">
            	<img src="images/templatemo_image_01.jpg" alt="image" class="img_float_l" />
                <p><em>Quisque vel urna ac nunc sagittis adipiscing. Morbi sem nulla, dictum id convallis eget, ultrices ut eros. Duis in magna elit.</em></p>
                <p align="justify"> Maecenas enim nisl, semper dictum faucibus sed, tincidunt et ligula. Proin lacinia convallis tempus. Suspendisse libero neque, molestie sit amet imperdiet sollicitudin, eleifend eget sem. In eget sapien lorem, vitae tempus justo. Sed molestie ultrices dolor, eu ullamcorper neque bibendum eu. In mollis imperdiet sapien eget malesuada. Nullam tincidunt tellus ac sem suscipit interdum.</p>
                <div class="cleaner h30"></div>
                <h3>Our Services</h3>
                <p>Proin lacinia convallis tempus. Suspendisse libero neque, molestie sit amet imperdiet sollicitudin, eleifend eget sem. In eget sapien lorem, vitae tempus justo. Sed molestie ultrices dolor, eu ullamcorper neque bibendum eu. Validate <a href="http://validator.w3.org/check?uri=referer" rel="nofollow"><strong>XHTML</strong></a> &amp; <a href="http://jigsaw.w3.org/css-validator/check/referer" rel="nofollow"><strong>CSS</strong></a>.</p>
          <ul class="tmo_list">
                    <li>Nulla facilisi. Maecenas ac odio ipsum donec cursus</li>
                    <li>Fusce risus tortor, interdum in malesuada pulvinar</li>
                    <li>Proin facilisis ullamcorper turpis, in placerat</li>
                    <li>Sed vel justo quis ligula blandit commodo molestie</li>
                    <li>Ut tristique sagittis arcu, vel laoreet turpis</li>
                </ul>
			</div>
            <div class="col col_13 no_margin_right">
            	<h3>Testimonial</h3>
                <blockquote>
                    <p>Nam ultricies euismod lorem vitae hendrerit. Ut sollicitudin, dolor at placerat lobortis, odio lectus ultricies velit, eget varius lorem ante vel odio. Aliquam neque ipsum, aliquam eget auctor nec, malesuada sit amet risus. Aliquam mollis viverra massa, vitae pulvinar odio accumsan ullamcorper.</p>
                    <cite>John - <span>New Company</span></cite>
			  </blockquote>
                <div class="cleaner h30"></div>
                
            	<h3>Updates</h3>
                <ul class="twitter_post">
                  <li>Aenean ligula dolor, cursus in interdum semper, auctor et metus. <a href="#">http://bit.ly/46oaND</a></li>
                    <li>Phasellus in erat erat, sed pulvinar nunc. Duis vel mauris a dolor fringilla scelerisque nec et libero. <a href="#">http://bit.ly/32WZck</a></li>
                    <li>Donec cursus sem sit amet nibh ornare a luctus tellus faucibus. Vivamus vel dolor purus. <a href="#">http://bit.ly/86vCxd</a></li>
                </ul>
            </div>
            <div class="cleaner"></div>
            <div class="main_bottom">
	            <a href="#templatemo_header"></a>
			</div>
            <div class="cleaner"></div>
		</div> <!-- END of home -->

        </div>
    
    <div id="templatemo_footer">
    	Компания © 2019 
    </div>

</div>
<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>