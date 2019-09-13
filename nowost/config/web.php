<?php
use kartik\datecontrol\Module;
$params = require __DIR__ . '/params.php';
$db = require __DIR__ . '/db.php';

$config = [
    'id' => 'basic',
    'basePath' => dirname(__DIR__),
    'bootstrap' => ['log'],
	   'defaultRoute' => 'ingrid/index',
    'aliases' => [
        '@bower' => '@vendor/bower-asset',
        '@npm'   => '@vendor/npm-asset',
    ],

'modules' => [
        'admin' => [
            'class' => 'app\modules\admin\Module',
            'layout' => 'admin',
             'defaultRoute' => 'order/index'
        ],
 'formatter' => [
        'dateFormat'=>'dd-MM-yyyy',
        'datetimeFormat' => 'yyyy-MM-dd HH:mm:ss',
    ],

'datecontrol' =>  [
            'class' => '\kartik\datecontrol\Module',
            'displaySettings' => [
                Module::FORMAT_DATE => 'dd-M-yyyy',
                Module::FORMAT_TIME => 'hh:mm',
                Module::FORMAT_DATETIME => 'dd-MM-yyyy hh:mm:ss a',
            ],
            'autoWidgetSettings' => [
                Module::FORMAT_DATE => ['pluginOptions' => [
                                                 'autoclose' => true,
                                                 'todayHighlight' => true,
                                                 'startDate' => 'current',
                                       ],
                                        'readonly' => true],
                Module::FORMAT_TIME => ['readonly' => true]
            ],
            'saveSettings' => [
                Module::FORMAT_DATE => 'php:U',
               // Module::FORMAT_TIME => 'php:u'
            ],
            'ajaxConversion' => false,
        ],

'yii2images' => [
            'class' => 'rico\yii2images\Module',
            //be sure, that permissions ok
            //if you cant avoid permission errors you have to create "images" folder in web root manually and set 777 permissions
            'imagesStorePath' => 'upload/store', //path to origin images
            'imagesCachePath' => 'upload/cache', //path to resized copies
            'graphicsLibrary' => 'GD', //but really its better to use 'Imagick'
            'placeHolderPath' => '@webroot/upload/store/no-image.png', // if you want to get placeholder when image not exists, string will be processed by Yii::getAlias
        ],

   ],

    'components' => [
 'assetManager' => [
        'bundles' => [
            'kartik\form\ActiveFormAsset' => [
                'bsDependencyEnabled' => false // do not load bootstrap assets for a specific asset bundle
            ],
        ],
    ],

        'request' => [
            // !!! insert a secret key in the following (if it is empty) - this is required by cookie validation
            'cookieValidationKey' => 'qwe1dsgfgQRRTTRTRT',
			 'baseUrl'=> '/nowost',
        ],
        'cache' => [
            'class' => 'yii\caching\FileCache',
        ],
        'user' => [
            'identityClass' => 'app\models\User',
            'enableAutoLogin' => true,
        ],
        'errorHandler' => [
            'errorAction' => 'site/error',
        ],
        'mailer' => [
            'class' => 'yii\swiftmailer\Mailer',
            // send all mails to a file by default. You have to set
            // 'useFileTransport' to false and configure a transport
            // for the mailer to send real emails.
            'useFileTransport' => true,
        ],
        'log' => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets' => [
                [
                    'class' => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],
        'db' => $db,
        
        'urlManager' => [
            'enablePrettyUrl' => true,
            'showScriptName' => false,
            'rules' => [
 'category/<id:\d+>/page/<page:\d+>' => 'category/view',
 'category/<id:\d+>/page/<page:\d+>' => 'category/index',
                'category/<id:\d+>' => 'category/view',
 'logo/<id:\d+>' => 'logo/view',
 'product/<id:\d+>' => 'product/view',
'card/<id:\d+>' => 'card/add',
'product/<id:\d+>' => 'product/index',
 'search' => 'category/search',
'onas' => 'site/onas',
            ],
        ],
        
    ],
    'params' => $params,
];

if (YII_ENV_DEV) {
    // configuration adjustments for 'dev' environment
    $config['bootstrap'][] = 'debug';
    $config['modules']['debug'] = [
        'class' => 'yii\debug\Module',
        // uncomment the following to add your IP if you are not connecting from localhost.
        //'allowedIPs' => ['127.0.0.1', '::1'],
    ];

    $config['bootstrap'][] = 'gii';
    $config['modules']['gii'] = [
        'class' => 'yii\gii\Module',
        // uncomment the following to add your IP if you are not connecting from localhost.
        //'allowedIPs' => ['127.0.0.1', '::1'],
    ];
}

return $config;
