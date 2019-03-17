
<h1>Hello World</h1>
<code><?= __FILE__ ?></code>
<pre>
    <?= \modules\demo\models\Test::test(); ?>
</pre>

<pre>
    <?= Yii::$app->formatter->asDatetime(time()) ?>
</pre>

<pre>
    <?php var_dump(\Yii::$app->user->can('demo')) ?>
</pre>
