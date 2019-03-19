<?php

use mdm\admin\components\MenuHelper;
use yii\widgets\Menu;
use hp\utils\UTranslate;

$items = MenuHelper::getAssignedMenu(Yii::$app->user->id, null, function ($menu) {

            $child = false;
            $icon = 'fa-circle-o';
            if ($menu['icon']) {
                $icon = $menu['icon'];
            }

            $label = '<i class="fa ' . $icon . '"> </i> <span>' . UTranslate::t(UTranslate::TYPE_MENU, $menu['name']) . '</span>';
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

if (YII_DEBUG) {
//    $items[] = [
//        'label' => Yii::t('app', 'Navigation'),
//        'options' => ['class' => 'header',],
//    ];
    $items[] = [
        'label' => Yii::t('app', 'Yii Tool'),
        'options' => ['class' => 'header',],
    ];

    $items[] = [
        'label' => '<i class="fa fa-file-code-o"></i> <span>' . Yii::t('app', 'Gii') . '</span>',
        'url' => ['/gii']
    ];
    $items[] = [
        'label' => '<i class="fa fa-share"></i> <span>' . Yii::t('app', 'Debug') . '</span>',
        'url' => ['/gii']
    ];
}



echo Menu::widget([
    'options' => ['class' => 'sidebar-menu',],
    'encodeLabels' => false,
    'submenuTemplate' => "\n<ul class='treeview-menu'>\n{items}\n</ul>\n",
    'activateParents' => true,
    'items' => $items
]);
?>