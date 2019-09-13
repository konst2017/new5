
<?php
/* @var $this \yii\web\View */
/* @var $content string */
use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use app\assets\AppAsset;
use app\assets\ltAppAsset;

use yii\data\Pagination;
use app\controllers\CategoryController;

AppAsset::register($this);
ltAppAsset::register($this);
?>
<?php  $this->beginPage() ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?= Html::csrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>

    <?php
//        $this->registerJsFile('js/html5shiv.js', ['position' => \yii\web\View::POS_HEAD, 'condition' => 'lte IE9']);
//        $this->registerJsFile('js/respond.min.js', ['position' => \yii\web\View::POS_HEAD, 'condition' => 'lte IE9']);
    ?>

    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->


<body>
<?php $this->beginBody() ?>
<div id="background">

<div id="templatemo_wrapper">
	<div id="templatemo_header">
    	<div id="site_title"><a href="#">Aqua HTML Template</a></div>
    </div> <!-- END of -->
    
   
    
	<nav id="templatmeo_menu">
 <ul>
<li><a href="<?= \yii\helpers\Url::home()?>">Главная</a>
  <li><a href="<?= \yii\helpers\Url::to(['/site/onas'])?>">O нас</a></li>
  <li><a href="">Информация</a>
  <ul>
   <li><a href="<?= \yii\helpers\Url::to(['/site/yslyg'])?>">Услуги</a></li>
<?php if(!Yii::$app->user->isGuest): ?>

									  <li><a href="<?= \yii\helpers\Url::to(['/site/logout'],['class' => 'ui inverted button', 'data-method' => 'post']); ?>"><i class="fa fa-share"> </i><?= Yii::$app->user->identity['username']?> (Выход с админки)</a></li>
<?php endif;?>
<li><a href="<?= \yii\helpers\Url::to(['/admin'])?>"><i class="fa fa-lock"></i> Логин</a></li>
   
<li>	<a href="<?= \yii\helpers\Url::to(['/category/view'])?>">Статьи </a> </li>




</option>

</a>
</li>
  </ul>
  </li>
  <li><a href="<?= \yii\helpers\Url::to(['/site/kont'])?>">Наши контакты</a></li>
  
 </ul>
</nav>	
		
  
	<!-- END of -->
    
    <div id="templatemo_main">
	
    	<div id="home" class="main_box">

         <?= $content ?>
            <div class="cleaner"></div>
            <div class="main_bottom">
	            <a href="#templatemo_header"></a>
			</div>
            <div class="cleaner"></div>
		</div> <!-- END of home -->
        
      
    </div>
    
    <div id="templatemo_footer">
    	Copyright © 2072 Your Company Name
    </div>

</div>
<?php $this->endBody() ?>
</body>

</html>
<?php $this->endPage() ?>