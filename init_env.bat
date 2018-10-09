CD /D "%~dp0"

SET RUBYOPT=-EUTF-8

REM 使用するツールのインストール
CALL bundle install --path bundler

REM スタイル用のフォントのインストール
CALL bundle exec asciidoctor-pdf-cjk-kai_gen_gothic-install
