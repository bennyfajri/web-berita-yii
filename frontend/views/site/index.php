<?php

/* @var $this yii\web\View */

use yii\widgets\ListView;

$this->title = 'UAS Muhammad Beni Fajri';

?>
<div class="site-index">
    <div class="body-content">
        <div class="jumbotron">
            <h1>Selamat Datang!</h1>
            <p class="lead">Di Blog Muhammad Beni Fajri.</p>
        </div>
        <div class="row">
            <div class="col-lg-8">
            <?= ListView::widget([
                'dataProvider' => $dataProvider,
                'layout'=> "{items}\n {pager}",
                'itemOptions' => ['class' => 'item'],
                'itemView' => 'itemBerita'
            ]);
            ?>
            </div>
        </div>
        

    </div>
</div>
