<?php

namespace modules\demo\models;

/**
 * Description of newPHPClass
 *
 * @author HAO
 */
class Test {

    public static function test() {
        
        $data = \modules\users\models\User::find()->asArray()->all();
        print_r($data);
        echo 'Hello world';
    }

}
