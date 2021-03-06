<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper; 

/* @var $this yii\web\View */
/* @var $model common\models\Berita */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="berita-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'judul')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'isi_berita')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'id_kategori')->dropDownList(ArrayHelper::map(common\models\kategori::
        find()->all(),'id_kategori','kategori')) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'create' : 'Update',
         ['class' => $model ->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
