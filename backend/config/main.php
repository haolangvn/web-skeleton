<?php

$params = array_merge(
        require(__DIR__ . '/../../common/config/params.php'), require(__DIR__ . '/../../common/config/params-local.php'), require(__DIR__ . '/params.php'), require(__DIR__ . '/params-local.php')
);

return [
    'id' => 'app-backend',
    'language' => 'en', // en, ru
//'homeUrl' => '/admin',
    'basePath' => dirname(__DIR__),
    'defaultRoute' => 'main/default/index',
    'aliases' => [
        '@mdm/admin' => '@modules/yii2-admin'
    ],
    'bootstrap' => [
        'log',
        'modules\main\Bootstrap',
        'modules\users\Bootstrap'
    ],
    'modules' => [
        'main' => [
            'isBackend' => true,
        ],
        'users' => [
            'isBackend' => true,
        ],
        'rbac' => 'mdm\admin\Module',
//        'admin' => [
//            'class' => 'mdm\admin\Module',
//        ],
        'demo' => [
            'isBackend' => true,
        ]
    ],
    'components' => [
        'request' => [
            'cookieValidationKey' => '',
            'csrfParam' => '_csrf-backend',
        //'baseUrl' => '/admin',
        ],
        'assetManager' => [
            'bundles' => [
                'yii\bootstrap\BootstrapAsset' => [
                    'sourcePath' => '@vendor/almasaeed2010/adminlte/bower_components/bootstrap/dist',
                    'css' => [
                        YII_ENV_DEV ? 'css/bootstrap.css' : 'css/bootstrap.min.css',
                    ]
                ],
                'yii\bootstrap\BootstrapPluginAsset' => [
                    'sourcePath' => '@vendor/almasaeed2010/adminlte/bower_components/bootstrap/dist',
                    'js' => [
                        YII_ENV_DEV ? 'js/bootstrap.js' : 'js/bootstrap.min.js',
                    ]
                ],
            ],
        ],
        'user' => [
            'identityClass' => 'modules\users\models\User',
            'enableAutoLogin' => true,
            'identityCookie' => ['name' => '_identity-backend', 'httpOnly' => true],
            'loginUrl' => ['/users/default/login'],
        ],
        'session' => [
// this is the name of the session cookie used for login on the backend
            'name' => 'advanced-backend',
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
        'errorHandler' => [
            'errorAction' => 'backend/error',
        ],
        'urlManager' => [
            'enablePrettyUrl' => true,
            'showScriptName' => true,
            'enableStrictParsing' => true,
            'rules' => [
                '<_m>/<_c>' => '<_m>/<_c>/index',
                '<_m>/<_c>/<_a>' => '<_m>/<_c>/<_a>',
            ],
        ],
        'urlManagerFrontend' => [
            'class' => 'yii\web\UrlManager',
            //'baseUrl' => '',
            'enablePrettyUrl' => true,
            'showScriptName' => true,
            'enableStrictParsing' => true,
            'rules' => [
                'email-confirm' => 'users/default/email-confirm'
            ],
        ],
        'i18n' => [
            'translations' => [
                'yii2mod.rbac' => [
                    'class' => 'yii\i18n\PhpMessageSource',
                    'basePath' => '@modules/srbac/messages',
                ],
            // ...
            ],
        ],
    ],
    'as access' => [
//        'class' => modules\rbac\filters\AccessControl::class,
        'class' => mdm\admin\components\AccessControl::class,
        'allowActions' => [
            'users/default/*',
//            'rbac/*',
        // The actions listed here will be allowed to everyone including guests.
// So, 'admin/*' should not appear here in the production, of course.
// But in the earlier stages of your development, you may probably want to
// add a lot of actions here until you finally completed setting up rbac,
// otherwise you may not even take a first step.
        ]
    ],
// Последний визит
    'as afterAction' => [
        'class' => '\modules\users\behavior\LastVisitBehavior',
    ],
    'params' => $params,
];
