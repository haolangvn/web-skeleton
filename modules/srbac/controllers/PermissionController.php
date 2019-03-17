<?php

namespace modules\srbac\controllers;

use yii\rbac\Item;
use modules\srbac\base\ItemController;

/**
 * Class PermissionController
 *
 * @package modules\srbac\controllers
 */
class PermissionController extends ItemController
{
    /**
     * @var int
     */
    protected $type = Item::TYPE_PERMISSION;

    /**
     * @var array
     */
    protected $labels = [
        'Item' => 'Permission',
        'Items' => 'Permissions',
    ];
}
