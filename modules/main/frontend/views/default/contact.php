<?php

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */

/* @var $model \modules\main\models\frontend\ContactForm */

use yii\helpers\Html;
use yii\helpers\Url;
use yii\bootstrap\ActiveForm;
use yii\captcha\Captcha;
use hp\utils\UTranslate;

$this->title = UTranslate::t(UTranslate::TYPE_LABEL, 'Contact');
$this->params['breadcrumbs'][] = $this->title;
?>

<div class="main-frontend-default-contact">
    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= UTranslate::t(UTranslate::TYPE_LABEL, 'If you have business inquiries or other questions, please fill out the following form to contact us. Thank you.'); ?>
    </p>

    <div class="row">
        <div class="col-lg-5">
            <?php $form = ActiveForm::begin(['id' => 'contact-form']); ?>
            <?php if ($model->scenario === $model::SCENARIO_GUEST) : ?>
                <div class="form-group">
                    <?= $form->field($model, 'name')->textInput(['class' => 'form-control']) ?>
                </div>
                <div class="form-group">
                    <?= $form->field($model, 'email')->textInput(['class' => 'form-control']) ?>
                </div>
            <?php endif; ?>
            <div class="form-group">
                <?= $form->field($model, 'subject')->textInput(['class' => 'form-control']) ?>
            </div>
            <div class="form-group">
                <?= $form->field($model, 'body')->textarea(['rows' => 6, 'class' => 'form-control']) ?>
            </div>
            <?php if ($model->scenario === $model::SCENARIO_GUEST) : ?>
                <div class="form-group">
                    <?= $form->field($model, 'verifyCode')->widget(Captcha::className(), [
                        'template' => '<div class="row"><div class="col-lg-3">{image}</div><div class="col-lg-6">{input}</div></div>',
                        'captchaAction' => Url::to('/main/default/captcha'),
                        'imageOptions' => [
                            'style' => 'display:block; border:none; cursor: pointer',
                            'alt' => UTranslate::t(UTranslate::TYPE_LABEL, 'Code'),
                            'title' => UTranslate::t(UTranslate::TYPE_LABEL, 'Click on the picture to change the code.'),
                        ],
                        'class' => 'form-control',
                    ]) ?>
                </div>
            <?php endif; ?>
            <div class="form-group">
                <?= Html::submitButton('<span class="glyphicon glyphicon-send"></span> ' . UTranslate::t(UTranslate::TYPE_LABEL, 'Submit'), ['class' => 'btn btn-primary', 'name' => 'contact-button']) ?>
            </div>

            <?php ActiveForm::end(); ?>
        </div>
    </div>

</div>
