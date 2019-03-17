<?php

use yii\helpers\Html;
use yii\helpers\Json;
use modules\rbac\RbacAsset;

RbacAsset::register($this);

/* @var $this yii\web\View */
/* @var $model \modules\rbac\models\AssignmentModel */
/* @var $usernameField string */

$userName = $model->user->{$usernameField};
$this->title = Yii::t('yii2mod.rbac', 'Assignment : {0}', $userName);
$this->params['breadcrumbs'][] = ['label' => Yii::t('yii2mod.rbac', 'Assignments'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $userName;
$this->render('/layouts/_sidebar');
?>
<div class="box">
    <div class="box-body table-responsive">
        <div class="assignment-index">

            <?php
            echo $this->render('../_dualListBox', [
                'opts' => Json::htmlEncode([
                    'items' => $model->getItems(),
                ]),
                'assignUrl' => ['assign', 'id' => $model->userId],
                'removeUrl' => ['remove', 'id' => $model->userId],
            ]);
            ?>

        </div>
    </div>
</div>

