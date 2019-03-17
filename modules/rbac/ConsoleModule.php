<?php

namespace modules\rbac;

/**
 * Class ConsoleModule
 *
 * Use [[\yii\base\Module::$controllerMap]] to change property of controller.
 *
 * ```php
 * 'controllerMap' => [
 *     'migrate' => [
 *         'class' => 'modules\rbac\commands\MigrateController',
 *         'migrationTable' => '{{%auth_migration}}',
 *         'migrationPath' => '@app/rbac/migrations',
 *         'templateFile' => 'your own template file'
 *     ]
 * ]
 * ```
 */
class ConsoleModule extends Module
{
    /**
     * @var string the namespace that controller classes are in
     */
    public $controllerNamespace = 'modules\rbac\commands';
}
