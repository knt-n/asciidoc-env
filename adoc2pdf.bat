@ECHO OFF
CD /D "%~dp0"
SETLOCAL
SET RUBYOPT=-EUTF-8
SET FILENAME=%~dpn1
SET OPTIONS=
SET OPTIONS=%OPTIONS% -r asciidoctor-diagram
SET OPTIONS=%OPTIONS% -r asciidoctor-pdf-cjk
SET OPTIONS=%OPTIONS% -r asciidoctor-pdf-cjk-kai_gen_gothic
SET OPTIONS=%OPTIONS% -a pdf-style=KaiGenGothicJP@
SET OPTIONS=%OPTIONS% -a source-highlighter=coderay@
CALL bundle exec asciidoctor-pdf -D output %OPTIONS% "%FILENAME%.adoc"
PAUSE
