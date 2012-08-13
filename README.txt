* ディレクトリの準備

  $ sudo mkdir /var/log/lager_sample
  $ sudo chown (your username) /var/log/lager_sample

* ビルド

  $ make

* 起動

  lager_sample:start().

* ログ出力

  lager_sample:debug("this is debug log", []).

  lager_sample:error("this is error ~p", ["hoge"]).

* Syslogへログ出力

Syslogへのログ出力を試したい場合はsyslogブランチを使用します。

  $ git checkout -b syslog origin/syslog
  $ make
