<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\User2Search */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'DEMO INDEX';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="user-index box">
    <div class="box-header with-border">
        <?= Html::a('Link', '#', ['class' => 'btn btn-success btn-flat']) ?>
    </div>
    <div class="box-body table-responsive">
        DATA

        <code><?= __FILE__ ?></code>

        <pre>
            <?= \modules\demo\models\Test::test(); ?>
        </pre>


    </div>
</div>