<?php

namespace hp\models;

use Yii;

/**
 * This is the model class for table "{{%main_location_district}}".
 *
 * @property string $id
 * @property string $province_id
 * @property string $name
 */
class LocationDistrict extends \hp\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return '{{%main_location_district}}';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['province_id', 'name'], 'required'],
            [['province_id'], 'integer'],
            [['name'], 'string', 'max' => 125],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'province_id' => Yii::t('app', 'Province ID'),
            'name' => Yii::t('app', 'Name'),
        ];
    }
}
