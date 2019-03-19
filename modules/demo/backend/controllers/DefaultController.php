<?php

namespace modules\demo\backend\controllers;

/**
 * Description of TestController
 *
 * @author HAO
 */
class DefaultController extends \hp\Controller {

    public function actionIndex() {
        return $this->render('index');
    }

    public function actionUpdate() {
        return $this->render('update');
    }

}
