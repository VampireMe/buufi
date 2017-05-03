<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/5/3
 * Time: 15:09
 */

namespace common\assets;


use yii\web\AssetBundle;

class AmazeuiAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
        '/amazeui/css/amazeui.flat.css',
        '/amazeui/css/admin.css',
        '/amazeui/css/app.css',
    ];
    public $js = [
        '/amazeui/js/jquery.min.js',
        '/amazeui/js/amazeui.js',
        '/amazeui/js/app.js',
        '/amazeui/js/amazeui.ie8polyfill.min.js',
    ];
    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap\BootstrapAsset',
    ];

}