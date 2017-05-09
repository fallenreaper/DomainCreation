echo "\$HTTP[\"host\"] =~ \"$3\" {"
echo "	server.document-root = \"$1\""
echo "	server.errorlog = \"$2/error.log\""
echo "	accesslog.filename = \"$2/access.log\""
echo "	server.error-handler-404 = \"/e404.php\""
echo '}'

