<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "berita".
 *
 * @property int $id_berita
 * @property string $judul
 * @property string $isi_berita
 * @property int $id_kategori
 * @property int $jml_baca
 * @property int $id_user
 * @property string $data_created
 *
 * @property Kategori $kategori
 * @property Muhammadbenifajri1811081018 $user
 * @property Komentar[] $komentars
 */
class Berita extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'berita';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['judul', 'isi_berita', 'id_kategori'], 'required'],
            [['isi_berita'], 'string'],
            [['id_kategori', 'jml_baca', 'id_user'], 'integer'],
            [['date_created'], 'safe'],
            [['judul'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_berita' => 'Id Berita',
            'judul' => 'Judul',
            'isi_berita' => 'Isi Berita',
            'id_kategori' => 'Id Kategori',
            'jml_baca' => 'Jml Baca',
            'id_user' => 'Id User',
            'date_created' => 'Data Created',
        ];
    }

    /**
     * Gets query for [[Kategori]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getKategori()
    {
        return $this->hasOne(Kategori::className(), ['id_kategori' => 'id_kategori']);
    }

    /**
     * Gets query for [[User]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getUser()
    {
        return $this->hasOne(User::class,['id_user' => 'id_user']);
    }

    /**
     * Gets query for [[Komentars]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getKomentars()
    {
        return $this->hasMany(Komentar::className(), ['id_berita' => 'id_berita']);
    }

    public function beforeSave($insert)
    {
        parent::beforeSave($insert);
        if ($this->isNewRecord) {
            $this->jml_baca = 0;
        }

        $this->date_created = date('Y-m-d H:i:s');
        $this->id_user = Yii::$app->user->id;

        return true;
    }

    public static function topBerita(){
        return self::find()
            ->orderBy('jml_baca DESC')
            ->limit(10)
            ->all();
    }
}
