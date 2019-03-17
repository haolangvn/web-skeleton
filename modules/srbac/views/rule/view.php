<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model \modules\srbac\models\BizRuleModel */

$this->title = Yii::t('yii2mod.rbac', 'Rule : {0}', $model->name);
$this->params['breadcrumbs'][] = ['label' => Yii::t('yii2mod.rbac', 'Rules'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $model->name;
$this->render('/layouts/_sidebar');
?>
<div class="box">
    <div class="box-body table-responsive">
        <p>
            <?php echo Html::a(Yii::t('yii2mod.rbac', 'Update'), ['update', 'id' => $model->name], ['class' => 'btn btn-primary']); ?>
            <?php
            echo Html::a(Yii::t('yii2mod.rbac', 'Delete'), ['delete', 'id' => $model->name], [
                'class' => 'btn btn-danger',
                'data-confirm' => Yii::t('yii2mod.rbac', 'Are you sure to delete this item?'),
                'data-method' => 'post',
            ]);
            ?>
        </p>

        <?php
        echo DetailView::widget([
            'model' => $model,
            'attributes' => [
                'name',
                'className',
            ],
        ]);
        ?>
    </div>
</div>