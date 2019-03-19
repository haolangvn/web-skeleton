<?php

namespace hp\frontend;

use Yii;

/**
 * Class Bootstrap
 * @package modules\main
 */
class Bootstrap {

    public function __construct() {
        $urlManager = Yii::$app->urlManager;
        $urlManager->addRules(
                [
                    // Declaration of rules here
                    '/' => 'main/default/index',
                    'main/default/<_a>' => 'main/default/<_a>',
                ]
        );
    }

}
