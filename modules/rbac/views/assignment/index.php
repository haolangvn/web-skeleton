<?php

use yii\grid\GridView;
use yii\helpers\ArrayHelper;
use yii\helpers\Html;
use yii\widgets\Pjax;

/* @var $this \yii\web\View */
/* @var $gridViewColumns array */
/* @var $dataProvider \yii\data\ArrayDataProvider */
/* @var $searchModel \modules\srbac\models\search\AssignmentSearch */

$this->title = Yii::t('yii2mod.rbac', 'Assignments');
$this->params['breadcrumbs'][] = $this->title;
$this->render('/layouts/_sidebar');
?>

<div class="box">
    <div class="box-body table-responsive">
        <?php Pjax::begin(['timeout' => 5000]); ?>

        <?php
        echo GridView::widget([
            'dataProvider' => $dataProvider,
            'filterModel' => $searchModel,
            'columns' => ArrayHelper::merge($gridViewColumns, [
                [
                    'class' => 'yii\grid\ActionColumn',
                    'template' => '{view}',
                ],
            ]),
        ]);
        ?>

        <?php Pjax::end(); ?>
    </div>
</div>
