# YII FRAMEWORK

### Cara Menginstall

* download / clone repo ini
* buka menggunakan text editor
* buka cmd lalu ketikkan
  ```
  > php init
  ```
* buat database baru (nama terserah anda)
* import yiiblog.sql kedalam database yang baru anda buat tadi
* ubah nama database pada file main-local.php yang berada didalam folder common/config/main-local.php menjadi
  ```
  'components' => [
        'db' => [
            'class' => 'yii\db\Connection',
            'dsn' => 'mysql:host=localhost;dbname=(nama database anda)',
            'username' => 'root',
            'password' => '',
            'charset' => 'utf8',
        ],
        'urlManager' => [
            'enablePrettyUrl' => true,
            'showScriptName' => false,
            'rules' => [
            ],
        ],
        'mailer' => [
            'class' => 'yii\swiftmailer\Mailer',
            'viewPath' => '@common/mail',
            // send all mails to a file by default. You have to set
            // 'useFileTransport' to false and configure a transport
            // for the mailer to send real emails.
            'useFileTransport' => true,
        ],
    ],
    ```
    
    
### Cara Menjalankan

* Buka CMD lalu ketikkan syntax dibawah. kita jalankan menggunakan local PHP development. 
  ```
  > cd C:\xampp\htdocs\yiiblog
  > php -S 127.0.0.1:8000 -t frontend/web
  ```
* Buka ```127.0.0.1:8000``` pada browser anda


### Screenshot

* Main Screen

![Main Screen](https://github.com/bennyfajri/web-berita-yii/blob/main/ScreenShot/1.PNG)

* Detail Berita

![Full Berita](https://github.com/bennyfajri/web-berita-yii/blob/main/ScreenShot/2.PNG)

* List Kategori/Berita/user/komentar

![list Kategori](https://github.com/bennyfajri/web-berita-yii/blob/main/ScreenShot/3.PNG)

* Menambah Kategori/Berita/user/komentar

![add Kategori](https://github.com/bennyfajri/web-berita-yii/blob/main/ScreenShot/4.PNG)
  
  
