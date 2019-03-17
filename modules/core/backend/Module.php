<?php

namespace modules\core;

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
            $this->controllerNamespace = 'modules\core\backend\controllers';
            $this->setViewPath('@modules/core/backend/views');
        } else {
            $this->controllerNamespace = 'modules\core\frontend\controllers';
            $this->setViewPath('@modules/core/frontend/views');
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
