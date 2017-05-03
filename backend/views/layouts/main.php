<?php

/* @var $this \yii\web\View */
/* @var $content string */

use common\assets\AmazeuiAsset;
use yii\helpers\Html;

AmazeuiAsset::register($this);
?>
<?php $this->beginPage() ?>
<!doctype html>
<html class="no-js fixed-layout" lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <?= Html::csrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head(); ?>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />

    <link rel="icon" type="image/png" href="favicon.ico">

    <link rel="apple-touch-icon-precomposed" href="favicon.ico">
    <meta name="apple-mobile-web-app-title" content="移动端 buufi 后台管理系统" />
</head>
<body>

<?php $this->beginBody() ?>

<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，Amaze UI 暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
    以获得更好的体验！</p>
<![endif]-->

<?=$this->render('header.php')?>

<div class="am-cf admin-main">
    <!-- sidebar start -->
    <?=$this->render('sidebar.php')?>
    <!-- sidebar end -->

    <!-- content start -->
    <?=$content?>
    <!-- content end -->

</div>

<a href="#" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}"></a>

<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<![endif]-->

<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
