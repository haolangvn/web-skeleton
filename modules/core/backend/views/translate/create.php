<?php

/* @var $this yii\web\View */
/* @var $model modules\core\models\Translate */

$this->title = 'Create Translate';
$this->params['breadcrumbs'][] = ['label' => 'Translates', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="translate-create">

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>