<?php

namespace modules\demo\backend\controllers;

use yii\filters\VerbFilter;
use yii\filters\AccessControl;

/**
 * Description of TestController
 *
 * @author HAO
 */
class DefaultController extends \yii\web\Controller {

    public function behaviors() {
        return [
            'verbs' => $this->getVerb(),
            'access' => $this->getAccess()
        ];
    }

    /**
     * @return array
     */
    private function getVerb() {
        return [
            'class' => VerbFilter::class,
            'actions' => [
                'delete' => ['POST'],
                'logout' => ['POST'],
            ],
        ];
    }

    /**
     * @return array
     */
    private function getAccess() {
        return [
            'class' => AccessControl::class,
            'rules' => [
                [
                    'actions' => ['login'],
                    'allow' => true,
                    'roles' => ['?']
                ],
                [
                    'actions' => ['logout'],
                    'allow' => true,
                    'roles' => ['@']
                ],
                [
                    'allow' => true,
                    'roles' => ['managerDemo']
                ],
            ],
        ];
    }

    public function actionIndex() {
        return $this->render('index');
    }

    public function actionUpdate() {
        return $this->render('update');
    }

}
