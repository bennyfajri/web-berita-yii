<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\Komentar */

$this->title = 'Create Komentar';
$this->params['breadcrumbs'][] = ['label' => 'Komentar', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="komentar-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
