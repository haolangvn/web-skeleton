<?php

namespace modules\demo;

use Yii;

/**
 * Class Bootstrap
 * @package modules\users
 */
class Bootstrap {

    public function __construct() {
        $this->registerTranslate();

        $urlManager = Yii::$app->urlManager;
        $urlManager->addRules((Yii::$app->id === 'app-backend') ? [$this->rulesBackend()] : [$this->rulesFrontend()]);
    }

    /**
     * Translate
     */
    protected function registerTranslate() {
    }

    /**
     * Group rules backend
     * @return array
     */
    protected function rulesBackend() {
        return [
            'class' => 'yii\web\GroupUrlRule',
            'rules' => [],
        ];
    }

    /**
     * Group rules frontend
     * @return array
     */
    protected function rulesFrontend() {
        return [
            'class' => 'yii\web\GroupUrlRule',
            'rules' => [
                'demo' => 'demo/default/index'
            ],
        ];
    }

}
