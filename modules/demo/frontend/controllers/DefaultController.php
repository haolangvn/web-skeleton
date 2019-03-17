<?php

namespace modules\demo\frontend\controllers;

/**
 * Description of TestController
 *
 * @author HAO
 */
class DefaultController extends \yii\web\Controller {

    public function actionIndex() {
        return $this->render('index');
    }

}
