<?php

namespace modules\rbac;

use yii\web\AssetBundle;

/**
 * Class RbacAsset
 *
 * @package modules\rbac
 */
class RbacAsset extends AssetBundle
{
    /**
     * @var string
     */
    public $sourcePath = '@modules/rbac/assets';

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
