<?php

namespace hp\utils;

use hp\utils\UShort;
use hp\models\Translate;

/**
 * Description of UTranslate
 *
 * @author HAO
 */
class UTranslate {

    const TYPE_LABEL = 'label';
    const TYPE_BUTTON = 'button';
    const TYPE_MENU = 'menu';
    const TYPE_MODEL = 'model';
    const TYPE_APP = 'app';

    public static function t($category = self::TYPE_LABEL, $string, $param = []) {

        $messages = UShort::cache()->getOrSet(['TRANSLATION', 'lang' => UShort::app()->language, 'cate' => $category], function() use ($category) {
            $translations = Translate::find()->where([
                        'category' => $category,
                        'language_code' => UShort::app()->language
                    ])->all();
            $messages = [];
            foreach ($translations as $row) {
                $messages[$row->message] = $row->translation;
            }
            return $messages;
        });


        if (isset($messages[$string]))
            return strtr($messages[$string], $param);
        else
            return strtr($string, $param);
    }

}
