<?php

use mdm\admin\components\MenuHelper;
use yii\widgets\Menu;
use modules\core\utils\UTranslate;

$items = MenuHelper::getAssignedMenu(Yii::$app->user->id, null, function ($menu) {

            $child = false;
            $icon = 'fa-circle-o';
            if ($menu['icon']) {
                $icon = $menu['icon'];
            }
            
            $label = '<i class="fa ' . $icon . '"> </i> <span>' . $menu['name'] . '</span>';
            if ($menu['children']) {
                $child = true;
                $label = $label . '<span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>';
            }

            return [
                'label' => $label,
                'url' => [$menu['route']],
                'options' => $child ? ['class' => 'treeview'] : [],
                'items' => $menu['children']
            ];
        });


//$items[] = [
//    'label' => '<i class="fa fa-unlock"></i> <span>' . Yii::t('app', 'RBAC') . '</span> <span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>',
//    'url' => ['/rbac'],
//    'options' => ['class' => 'treeview'],
//    'visible' => Yii::$app->user->can('AdminPermission'),
//    'items' => [
//        [
//            'label' => '<i class="fa fa-circle-o"> </i><span>' . Yii::t('app', 'Route') . '</span>',
//            'url' => ['/rbac/route/index'],
//        ],
//        [
//            'label' => '<i class="fa fa-circle-o"> </i><span>' . Yii::t('app', 'Permission') . '</span>',
//            'url' => ['/rbac/permission/index'],
//        ],
//        [
//            'label' => '<i class="fa fa-circle-o"> </i><span>' . Yii::t('app', 'Role') . '</span>',
//            'url' => ['/rbac/role/index'],
//        ],
//        [
//            'label' => '<i class="fa fa-circle-o"> </i><span>' . Yii::t('app', 'Rule') . '</span>',
//            'url' => ['/rbac/rule/index'],
//        ],
//        [
//            'label' => '<i class="fa fa-circle-o"> </i><span>' . Yii::t('app', 'Assignment') . '</span>',
//            'url' => ['/rbac/assignment/index'],
//        ],
//    ],
//];
//echo '<pre>';
//print_r($items);
//echo '</pre>';
//$items = [
//    [
//        'label' => UTranslate::t('General Menu', UTranslate::TYPE_MENU),
//        'options' => ['class' => 'header',],
//    ],
//    [
//        'label' => '<i class="fa fa-dashboard"></i> <span>' . UTranslate::t('Home', UTranslate::TYPE_MENU) . '</span>',
//        'url' => ['/main/default/index'],
//    ],
//    [
//        'label' => '<i class="fa fa-users"></i> <span>' . UTranslate::t('Users', UTranslate::TYPE_MENU) . '</span>',
//        'url' => ['/users/default/index']
//    ],
//    [
//        'label' => '<i class="fa fa-unlock"></i> <span>' . Yii::t('app', 'RBAC') . '</span> <span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>',
//        'url' => ['/rbac'],
//        'options' => ['class' => 'treeview'],
//        'visible' => Yii::$app->user->can('AdminPermission'),
//        'items' => [
//            [
//                'label' => '<i class="fa fa-circle-o"> </i><span>' . Yii::t('app', 'Route') . '</span>',
//                'url' => ['/rbac/route/index'],
//            ],
//            [
//                'label' => '<i class="fa fa-circle-o"> </i><span>' . Yii::t('app', 'Permission') . '</span>',
//                'url' => ['/rbac/permission/index'],
//            ],
//            [
//                'label' => '<i class="fa fa-circle-o"> </i><span>' . Yii::t('app', 'Role') . '</span>',
//                'url' => ['/rbac/role/index'],
//            ],
//            [
//                'label' => '<i class="fa fa-circle-o"> </i><span>' . Yii::t('app', 'Rule') . '</span>',
//                'url' => ['/rbac/rule/index'],
//            ],
//            [
//                'label' => '<i class="fa fa-circle-o"> </i><span>' . Yii::t('app', 'Assignment') . '</span>',
//                'url' => ['/rbac/assignment/index'],
//            ],
//        ],
//    ],
//    [
//        'label' => '<i class="fa fa-link"></i> <span>' . Yii::t('app', 'Demo Link') . '</span>',
//        'url' => ['/demo/default/index'],
//        'visible' => Yii::$app->user->can('demo'),
//    ],
//    [
//        'label' => '<i class="fa fa-link"></i> <span>' . Yii::t('app', 'Multilevel') . '</span> <span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>',
//        'url' => ['#'],
//        'options' => ['class' => 'treeview'],
//        'visible' => !Yii::$app->user->isGuest,
//        'items' => [
//            [
//                'label' => '<i class="fa fa-circle-o"> </i><span>' . Yii::t('app', 'Link in level 2') . '</span>',
//                'url' => ['#'],
//            ],
//            [
//                'label' => '<i class="fa fa-circle-o"> </i><span>' . Yii::t('app', 'Link in level 2') . '</span><span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>',
//                'url' => ['#'],
//                'options' => ['class' => 'treeview'],
//                'items' => [
//                    [
//                        'label' => Yii::t('app', 'Link in level 3'),
//                        'url' => ['#'],
//                    ],
//                ]
//            ],
//        ],
//    ],
//    [
//        'label' => Yii::t('app', 'Yii Tool'),
//        'options' => ['class' => 'header',],
//    ],
//    [
//        'label' => '<i class="fa fa-file-code-o"></i> <span>' . Yii::t('app', 'Gii') . '</span>',
//        'url' => ['/gii']
//    ],
//    [
//        'label' => '<i class="fa fa-share"></i> <span>' . Yii::t('app', 'Debug') . '</span>',
//        'url' => ['/gii']
//    ],
//];


echo Menu::widget([
    'options' => ['class' => 'sidebar-menu',],
    'encodeLabels' => false,
    'submenuTemplate' => "\n<ul class='treeview-menu'>\n{items}\n</ul>\n",
    'activateParents' => true,
    'items' => $items
]);

//echo '<pre>';
//print_r($items);
//echo '</pre>';
?>