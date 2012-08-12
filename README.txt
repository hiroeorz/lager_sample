* ディレクトリの準備

  $ sudo mkdir /var/log/lager_sample
  $ sudo chown (your username) /var/log/lager_sample


* 起動

  lager_sample:start().


* ログ出力

  lager_sample:debug("this is debug log", []).

  lager_sample:error("this is error ~p", ["hoge"]).
