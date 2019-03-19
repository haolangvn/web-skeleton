<?php

namespace hp\backend\controllers;

use hp\utils\UShort;
use hp\utils\UTranslate;

/**
 * Description of DefaultController
 *
 * @author HAO
 */
class DefaultController extends \hp\Controller {

    public function actionIndex() {
        //Greeting in the admin panel :)
        /** @var User $identity */
        $identity = UShort::user()->identity;
        UShort::session()->setFlash('info', UTranslate::t('label', 'Welcome, {:username}!', [
                    ':username' => $identity->username
        ]));
        return $this->render('index');
    }

}
