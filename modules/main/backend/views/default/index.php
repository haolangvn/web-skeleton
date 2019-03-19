<?php

use yii\helpers\Url;
use modules\users\Module as UserModule;
use hp\utils\UTranslate;

/* @var $this yii\web\View */

$this->title = UTranslate::t(UTranslate::TYPE_LABEL, 'Home');
$this->params['title']['small'] = UTranslate::t(UTranslate::TYPE_LABEL, 'Dashboard');
?>

<section class="content main-backend-default-index">
    <div class="row">
        <?php // if (\Yii::$app->user->can(\modules\rbac\models\Permission::PERMISSION_MANAGER_USERS)) : ?>
        <div class="col-md-4">
            <div class="box box-default">
                <div class="box-header with-border">
                    <h3 class="box-title"><?= UTranslate::t('label', 'Users') ?></h3>

                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip"
                                title="<?= UTranslate::t(UTranslate::TYPE_LABEL, 'Collapse'); ?>">
                            <i class="fa fa-minus"></i></button>
                        <button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip"
                                title="<?= UTranslate::t(UTranslate::TYPE_LABEL, 'Remove'); ?>">
                            <i class="fa fa-times"></i></button>
                    </div>
                </div>
                <div class="box-body">
                    <a class="btn btn-app" href="<?= Url::to(['/users/default/index']); ?>">
                        <i class="fa fa-users"></i> <?= UTranslate::t('label', 'Users'); ?>
                    </a>
                    <?php // if (\Yii::$app->user->can(\modules\rbac\models\Permission::PERMISSION_MANAGER_RBAC)) : ?>
                    <a class="btn btn-app" href="<?= Url::to(['/rbac/assignment/index']); ?>">
                        <i class="fa fa-unlock"></i> <?= UTranslate::t('label', 'RBAC'); ?>
                    </a>
                    <?php // endif; ?>
                </div>
            </div>
        </div>
        <?php // endif; ?>

    </div>
</section>
