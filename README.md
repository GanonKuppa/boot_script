# boot_script
ラズパイが起動時に実行しているスクリプト

# 使い方メモ

## root権限で実行したいコマンド
rc.localを利用。

    sudo vim /etc/rc.local

    -------------エディタが開く--------------
    下を追記
    /home/ユーザー名/boot_script/r_boot_script.sh


## ユーザー権限で実行したいコマンド

cronの@rebootを用いると便利。

    sudo chmod 777 /home/ユーザー名/boot_script/boot_script.sh      //権限を設定         
    crontab -u ユーザー名 -e　　　　　　　                           //crontabの設定ファイルを開く

    -------------エディタが開く--------------

    @reboot /home/ユーザー名/boot_script/boot_script.sh             //boot_script.shを絶対パスで指定         
