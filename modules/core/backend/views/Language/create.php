<?php

/* @var $this yii\web\View */
/* @var $model modules\core\models\Language */

$this->title = Yii::t('app', 'Create Language');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Languages'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="language-create">

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>