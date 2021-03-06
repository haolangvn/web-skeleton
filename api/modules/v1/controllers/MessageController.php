<?php

namespace api\modules\v1\controllers;

use yii\rest\Controller;
use api\modules\v1\models\Message;

/**
 * Class MessageController
 * @package api\modules\v1\controllers
 */
class MessageController extends Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        $behaviors = parent::behaviors();

        // Add CORS filter
        $behaviors['corsFilter'] = [
            'class' => \yii\filters\Cors::class,
        ];

        return $behaviors;
    }

    /**
     * @return string
     */
    public function actionIndex()
    {
        $model = new Message();
        return $model->message;
    }
}
