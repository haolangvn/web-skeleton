<?php
/* @var $this  yii\web\View */
/* @var $model \modules\rbac\models\BizRuleModel */

$this->title = Yii::t('yii2mod.rbac', 'Create Rule');
$this->params['breadcrumbs'][] = ['label' => Yii::t('yii2mod.rbac', 'Rules'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
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