<?php

/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use frontend\assets\AppAsset;
use common\widgets\Alert;

AppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?php $this->registerCsrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
</head>
<body>
<?php $this->beginBody() ?>

<div class="wrap">
    <?php
    NavBar::begin([
        'brandLabel' => 'Blog Benny',
        'brandUrl' => Yii::$app->homeUrl,
        'options' => [
            'class' => 'navbar-inverse navbar-fixed-top',
        ],
    ]);
    $menuItems = [
        ['label' => 'Home', 'url' => ['/site/index']],
        ['label' => 'About', 'url' => ['/site/about']],
        ['label' => 'Contact', 'url' => ['/site/contact']],
    ];
    if (Yii::$app->user->isGuest) {
        $menuItems[] = ['label' => 'Signup', 'url' => ['/site/signup']];
        $menuItems[] = ['label' => 'Login', 'url' => ['/site/login']];
    } else {
        $menuItems[] = '<li>'
            . Html::beginForm(['/site/logout'], 'post')
            . Html::submitButton(
                'Logout (' . Yii::$app->user->identity->username . ')',
                ['class' => 'btn btn-link logout']
            )
            . Html::endForm()
            . '</li>';
    }
    echo Nav::widget([
        'options' => ['class' => 'navbar-nav navbar-right'],
        'items' => $menuItems,
    ]);
    NavBar::end();
    ?>

    <div class="container">
        <?= Breadcrumbs::widget([
            'links' => isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : [],
        ]) ?>
        <?= Alert::widget() ?>
        <?= $content ?>        
        <!-- <div class="row-fluid">
            <div class="col-md-12">
                <div class="jumbottron">
                    <H1>Congratulations!</H1>

                    <p class="lead">You've successfully created your Yii-powered application.</p>

                    <p><a class="btn btn-lg btn-success" href="http://www.yiiframework.com">GetStarted With Yii</a></p>
                </div>
            </div>
        </div>
        <div class="row-fluid   ">
            <div class="col-md-8">
                <?= $content ?>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading"> TopArtikel</div>
 

                    <div class="panel-body">
                        <?php foreach(common\models\berita::topBerita() as
                        $row): ?>
                        <li><?= Html::a($row->judul .' ('.$row->jml_baca.')', ['view', 'id' => $row->id_berita]) ?></li>
                        <?php endforeach; ?>
                    </div>
 
                </div>

            </div>
        </div> -->
    </div>
</div>

<footer class="footer">
    <div class="container">
        <p class="pull-left">&copy; PNP - Teknologi Informasi <?= date('Y') ?></p>

        <p class="pull-right"><?= Yii::powered() ?></p>
    </div>
</footer>

<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
