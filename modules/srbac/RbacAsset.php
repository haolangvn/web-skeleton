<?php

namespace modules\srbac;

use yii\web\AssetBundle;

/**
 * Class RbacAsset
 *
 * @package modules\srbac
 */
class RbacAsset extends AssetBundle
{
    /**
     * @var string
     */
    public $sourcePath = '@modules/srbac/assets';

    /**
     * @var array
     */
    public $js = [
        'js/rbac.js',
    ];

    public $css = [
        'css/rbac.css',
    ];

    /**
     * @var array
     */
    public $depends = [
        'yii\web\YiiAsset',
    ];
}
