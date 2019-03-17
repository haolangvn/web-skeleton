<?php

use yii\helpers\Html;
use yii\helpers\Json;
use modules\srbac\RbacRouteAsset;

RbacRouteAsset::register($this);

/* @var $this yii\web\View */
/* @var $routes array */

$this->title = Yii::t('yii2mod.rbac', 'Routes');
$this->params['breadcrumbs'][] = $this->title;
$this->render('/layouts/_sidebar');
?>
<div class="user-index box">
    <div class="box-body table-responsive">
        <?php
        echo Html::a(Yii::t('yii2mod.rbac', 'Refresh'), ['refresh'], [
            'class' => 'btn btn-primary',
            'id' => 'btn-refresh',
        ]);
        ?>
        <?php
        echo $this->render('../_dualListBox', [
            'opts' => Json::htmlEncode([
                'items' => $routes,
            ]),
            'assignUrl' => ['assign'],
            'removeUrl' => ['remove'],
        ]);
        ?>
    </div>
</div>
