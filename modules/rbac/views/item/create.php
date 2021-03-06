<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model \modules\rbac\models\AuthItemModel */

$labels = $this->context->getLabels();
$this->title = Yii::t('yii2mod.rbac', 'Create ' . $labels['Item']);
$this->params['breadcrumbs'][] = ['label' => Yii::t('yii2mod.rbac', $labels['Items']), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
$this->render('/layouts/_sidebar');
?>
<div class="box">
    <div class="box-body table-responsive">
        <div class="auth-item-create">
            <?php
            echo $this->render('_form', [
                'model' => $model,
            ]);
            ?>
        </div>
    </div>
</div>
