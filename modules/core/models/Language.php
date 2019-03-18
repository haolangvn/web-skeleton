<?php

namespace modules\core\models;

use Yii;

/**
 * This is the model class for table "{{%core_language}}".
 *
 * @property string $code Language code: "vi" or "vi_VN".
 * @property string $name Language name in English.
 * @property string $native Native language name.
 */
class Language extends \modules\core\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return '{{%core_language}}';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['code', 'name', 'native'], 'required'],
            [['code'], 'string', 'max' => 12],
            [['name', 'native'], 'string', 'max' => 64],
            [['code'], 'unique'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'code' => Yii::t('app', 'Code'),
            'name' => Yii::t('app', 'Name'),
            'native' => Yii::t('app', 'Native'),
        ];
    }
}
