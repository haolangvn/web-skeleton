<?php

namespace hp\backend\controllers;

/**
 * Description of DefaultController
 *
 * @author HAO
 */
class DefaultController extends \hp\Controller {

    public function actionIndex() {
        //Greeting in the admin panel :)
        /** @var User $identity */
        $identity = Yii::$app->user->identity;
        Yii::$app->session->setFlash('info', Module::t('module', 'Welcome, {:username}!', [
                    ':username' => $identity->username
        ]));
        return $this->render('index');
    }

}
