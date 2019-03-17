<?php

namespace modules\rbac\controllers;

use yii\rbac\Item;
use modules\rbac\base\ItemController;

/**
 * Class PermissionController
 *
 * @package modules\rbac\controllers
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
