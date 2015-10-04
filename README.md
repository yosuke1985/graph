
# ローカル環境でのAWSのキー利用方法手順
- gemの`config`を利用しています
1. `config/settings.local.yml.sample`ファイルを`config/settings.local.yml`にリネームして下さい。
2. `config/settings.local.yml`の`access_key:`と`secret_key:`にそれぞれキーを記述してください。
3. 利用したい箇所にて`Settings.aws.access_key`と`Settings.aws.secret_key`と記述してください。