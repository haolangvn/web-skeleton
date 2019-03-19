<?php

namespace modules\demo\frontend;

use Yii;

/**
 * Class Bootstrap
 * @package modules\users
 */
class Bootstrap {

    public function __construct() {

        $urlManager = Yii::$app->urlManager;
        $urlManager->addRules([$this->rulesFrontend()]);
    }

    /**
     * Group rules frontend
     * @return array
     */
    protected function rulesFrontend() {
        return [
            'class' => 'yii\web\GroupUrlRule',
            'rules' => [
                'demo/default/index' => 'demo/default/index'
            ],
        ];
    }

}
