<?php

use yii\widgets\Menu;
use modules\core\utils\UTranslate;

function checkPermission($permission) {
    echo ltrim($permission);
    if (Yii::$app->user->can($permission)) {
        return true;
    }
    return false;
    
    do {
        Yii::trace($controller->getUniqueId(), 'CON');
        if (Yii::$app->user->can('/' . ltrim($controller->getUniqueId() . '/*', '/'))) {
            return true;
        }
        $controller = $controller->module;
    } while ($controller !== null);
}

$items = [
    [
        'label' => UTranslate::t('General Menu', UTranslate::TYPE_MENU),
        'options' => ['class' => 'header',],
    ],
    [
        'label' => '<i class="fa fa-dashboard"></i> <span>' . UTranslate::t('Home', UTranslate::TYPE_MENU) . '</span>',
        'url' => ['/main/default/index'],
    ],
    [
        'label' => '<i class="fa fa-users"></i> <span>' . UTranslate::t('Users', UTranslate::TYPE_MENU) . '</span>',
        'url' => ['/users/default/index'],
        'visible' => checkPermission('/users/default/index'),
    ],
    [
        'label' => '<i class="fa fa-unlock"></i> <span>' . Yii::t('app', 'RBAC') . '</span> <span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>',
        'url' => ['/rbac'],
        'options' => ['class' => 'treeview'],
        'visible' => Yii::$app->user->can('AdminPermission'),
        'items' => [
            [
                'label' => '<i class="fa fa-circle-o"> </i><span>' . Yii::t('app', 'Route') . '</span>',
                'url' => ['/rbac/route/index'],
            ],
            [
                'label' => '<i class="fa fa-circle-o"> </i><span>' . Yii::t('app', 'Permission') . '</span>',
                'url' => ['/rbac/permission/index'],
            ],
            [
                'label' => '<i class="fa fa-circle-o"> </i><span>' . Yii::t('app', 'Role') . '</span>',
                'url' => ['/rbac/role/index'],
            ],
            [
                'label' => '<i class="fa fa-circle-o"> </i><span>' . Yii::t('app', 'Rule') . '</span>',
                'url' => ['/rbac/rule/index'],
            ],
            [
                'label' => '<i class="fa fa-circle-o"> </i><span>' . Yii::t('app', 'Assignment') . '</span>',
                'url' => ['/rbac/assignment/index'],
            ],
        ],
    ],
    [
        'label' => '<i class="fa fa-link"></i> <span>' . Yii::t('app', 'Demo Link') . '</span>',
        'url' => ['/demo/default/index'],
        'visible' => Yii::$app->user->can('demo'),
    ],
    [
        'label' => '<i class="fa fa-link"></i> <span>' . Yii::t('app', 'Multilevel') . '</span> <span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>',
        'url' => ['#'],
        'options' => ['class' => 'treeview'],
        'visible' => !Yii::$app->user->isGuest,
        'items' => [
            [
                'label' => '<i class="fa fa-circle-o"> </i><span>' . Yii::t('app', 'Link in level 2') . '</span>',
                'url' => ['#'],
            ],
            [
                'label' => '<i class="fa fa-circle-o"> </i><span>' . Yii::t('app', 'Link in level 2') . '</span><span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>',
                'url' => ['#'],
                'options' => ['class' => 'treeview'],
                'items' => [
                    [
                        'label' => Yii::t('app', 'Link in level 3'),
                        'url' => ['#'],
                    ],
                ]
            ],
        ],
    ],
    [
        'label' => Yii::t('app', 'Yii Tool'),
        'options' => ['class' => 'header',],
    ],
    [
        'label' => '<i class="fa fa-file-code-o"></i> <span>' . Yii::t('app', 'Gii') . '</span>',
        'url' => ['/gii']
    ],
    [
        'label' => '<i class="fa fa-share"></i> <span>' . Yii::t('app', 'Debug') . '</span>',
        'url' => ['/gii']
    ],
];
echo Menu::widget([
    'options' => ['class' => 'sidebar-menu',],
    'encodeLabels' => false,
    'submenuTemplate' => "\n<ul class='treeview-menu'>\n{items}\n</ul>\n",
    'activateParents' => true,
    'items' => $items,
]);
?>