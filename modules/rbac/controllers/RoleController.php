<?php

namespace modules\srbac\controllers;

use yii\rbac\Item;
use modules\srbac\base\ItemController;

/**
 * Class RoleController
 *
 * @package modules\srbac\controllers
 */
class RoleController extends ItemController
{
    /**
     * @var int
     */
    protected $type = Item::TYPE_ROLE;

    /**
     * @var array
     */
    protected $labels = [
        'Item' => 'Role',
        'Items' => 'Roles',
    ];
}
