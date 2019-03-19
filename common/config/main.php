<?php

return [
    'name' => 'Web Skeleton',
    'timeZone' => 'Etc/GMT+7',
    'vendorPath' => dirname(dirname(__DIR__)) . '/vendor',
    'aliases' => [
        '@bower' => '@vendor/bower-asset',
        '@npm' => '@vendor/npm-asset',
        '@hp' => '@modules/main',
    ],
    'modules' => [
        'users' => [
            'class' => 'modules\users\Module',
        ],
    ],
    'components' => [
        'db' => [
            'class' => 'yii\db\Connection',
            'dsn' => 'mysql:host=localhost;dbname=nameDb',
            'username' => '',
            'password' => '',
            'charset' => 'utf8',
            'tablePrefix' => '',
        ],
        'authManager' => [
            'class' => 'yii\rbac\DbManager',
//            'cache' => 'cache'
//            'defaultRoles' => ['guest', 'user'],
        ],
        'cache' => [
            'class' => 'yii\caching\FileCache',
        ],
        'mailer' => [
            'useFileTransport' => false,
        ],
        'assetManager' => [
            'appendTimestamp' => true,
            'basePath' => '@app/web/assets',
        ],
    ],
];
