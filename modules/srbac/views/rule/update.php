<?php

/* @var $this yii\web\View */
/* @var $model \modules\srbac\models\BizRuleModel */

$this->title = Yii::t('yii2mod.rbac', 'Update Rule : {0}', $model->name);
$this->params['breadcrumbs'][] = ['label' => Yii::t('yii2mod.rbac', 'Rules'), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->name, 'url' => ['view', 'id' => $model->name]];
$this->params['breadcrumbs'][] = Yii::t('yii2mod.rbac', 'Update');
$this->render('/layouts/_sidebar');
?>
<div class="box">
    <div class="box-body table-responsive">
        <?php
        echo $this->render('_form', [
            'model' => $model,
        ]);
        ?>
    </div>
</div>