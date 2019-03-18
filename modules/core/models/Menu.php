<?php

namespace modules\core\models;

use Yii;

/**
 * This is the model class for table "{{%core_menu}}".
 *
 * @property int $id
 * @property string $name
 * @property int $parent
 * @property string $route
 * @property int $weight
 * @property resource $data
 * @property int $created_at
 * @property int $created_by
 * @property int $updated_at
 * @property int $updated_by
 *
 * @property Menu $parent0
 * @property Menu[] $menus
 */
class Menu extends \modules\core\ActiveRecord {

    /**
     * {@inheritdoc}
     */
    public static function tableName() {
        return '{{%core_menu}}';
    }

    /**
     * {@inheritdoc}
     */
    public function rules() {
        return [
            [['name', 'route'], 'required'],
            [['parent', 'weight'], 'integer'],
            [['data'], 'string'],
            [['name'], 'string', 'max' => 128],
            [['route'], 'string', 'max' => 255],
            [['parent'], 'exist', 'skipOnError' => true, 'targetClass' => Menu::className(), 'targetAttribute' => ['parent' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels() {
        return [
            'id' => Yii::t('app', 'ID'),
            'name' => Yii::t('app', 'Name'),
            'parent' => Yii::t('app', 'Parent'),
            'route' => Yii::t('app', 'Route'),
            'weight' => Yii::t('app', 'Weight'),
            'data' => Yii::t('app', 'Data'),
            'created_at' => Yii::t('app', 'Created At'),
            'created_by' => Yii::t('app', 'Created By'),
            'updated_at' => Yii::t('app', 'Updated At'),
            'updated_by' => Yii::t('app', 'Updated By'),
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getParent0() {
        return $this->hasOne(Menu::className(), ['id' => 'parent']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getMenus() {
        return $this->hasMany(Menu::className(), ['parent' => 'id']);
    }

}
