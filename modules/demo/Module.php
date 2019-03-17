<?php

namespace modules\demo;

/**
 * Description of Module
 *
 * @author HAO
 */
class Module extends \yii\base\Module {

    public $isBackend;

    public function init() {

        parent::init();

        if ($this->isBackend) {
            $this->controllerNamespace = 'modules\demo\backend\controllers';
            $this->setViewPath('@modules/demo/backend/views');
        } else {
            $this->controllerNamespace = 'modules\demo\frontend\controllers';
            $this->setViewPath('@modules/demo/frontend/views');
        }
    }

    /**
     * @param string $category
     * @param string $message
     * @param array $params
     * @param null|string $language
     * @return string
     */
    public static function t($category, $message, $params = [], $language = null) {
        return Yii::t('modules/users/' . $category, $message, $params, $language);
    }

}
