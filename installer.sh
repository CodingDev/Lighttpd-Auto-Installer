echo "Lighttpd Auto Installer v1.0"
clear

echo "Update Linux..."
apt-get -y update
clear

echo "Upgrade Linux..."
apt-get -y upgrade
clear

echo "Stopping Apache..."
service apache2 stop
clear

echo "Installing Lighttpd..."
apt-get install -y lighttpd
clear

echo "Remove index.html..."
rm /var/www/index.html
clear

echo "Installing MySQL..."
apt-get install -y mysql-server mysql-client
clear

echo "Installing php5..."
apt-get install -y php5-cgi
clear

echo "Update lighttpd.conf..."
clear
echo 'server.modules = (
        "mod_access",
        "mod_alias",
        "mod_compress",
        "mod_redirect",
        "mod_fastcgi",
#       "mod_rewrite",
)

server.document-root        = "/var/www"
server.upload-dirs          = ( "/var/cache/lighttpd/uploads" )
server.errorlog             = "/var/log/lighttpd/error.log"
server.pid-file             = "/var/run/lighttpd.pid"
server.username             = "www-data"
server.groupname            = "www-data"

index-file.names            = ( "index.php", "index.html",
                                "index.htm", "default.htm",
                                "index.lighttpd.html" )

url.access-deny             = ( "~", ".inc" )

static-file.exclude-extensions = ( ".php", ".pl", ".fcgi" )

include_shell "/usr/share/lighttpd/use-ipv6.pl"

dir-listing.encoding        = "utf-8"
server.dir-listing          = "enable"

compress.cache-dir          = "/var/cache/lighttpd/compress/"
compress.filetype           = ( "application/x-javascript", "text/css", "text/html", "text/plain" )

include_shell "/usr/share/lighttpd/create-mime.assign.pl"
include_shell "/usr/share/lighttpd/include-conf-enabled.pl"

fastcgi.server = ( ".php" => ((
    "bin-path" => "/usr/bin/php-cgi",
    "socket" => "/tmp/php.sock"
)))' > /etc/lighttpd/lighttpd.conf
clear

echo "Restart lighttpd..."
/etc/init.d/lighttpd restart
clear

echo "Installing php5 modules..."
apt-get install -y php5-mysql php5-curl php5-gd php5-idn php-pear php5-imagick php5-imap php5-mcrypt php5-memcache php5-ming php5-ps php5-pspell php5-recode php5-snmp php5-sqlite php5-tidy php5-xmlrpc php5-xsl
clear

echo "Restart lighttpd..."
/etc/init.d/lighttpd restart
clear

echo "Installing phpmyadmin..."
apt-get install -y phpmyadmin
clear

echo "Installation Complete!"
echo "Lighttpd Auto Installer v1.0"
clear

echo "Update Linux..."
apt-get -y update
clear

echo "Upgrade Linux..."
apt-get -y upgrade
clear

echo "Stopping Apache..."
service apache2 stop
clear

echo "Installing Lighttpd..."
apt-get install -y lighttpd
clear

echo "Remove index.html..."
rm /var/www/index.html
clear

echo "Installing MySQL..."
apt-get install -y mysql-server mysql-client
clear

echo "Installing php5..."
apt-get install -y php5-cgi
clear

echo "Update lighttpd.conf..."
clear
echo 'server.modules = (
        "mod_access",
        "mod_alias",
        "mod_compress",
        "mod_redirect",
        "mod_fastcgi",
#       "mod_rewrite",
)

server.document-root        = "/var/www"
server.upload-dirs          = ( "/var/cache/lighttpd/uploads" )
server.errorlog             = "/var/log/lighttpd/error.log"
server.pid-file             = "/var/run/lighttpd.pid"
server.username             = "www-data"
server.groupname            = "www-data"

index-file.names            = ( "index.php", "index.html",
                                "index.htm", "default.htm",
                                "index.lighttpd.html" )

url.access-deny             = ( "~", ".inc" )

static-file.exclude-extensions = ( ".php", ".pl", ".fcgi" )

include_shell "/usr/share/lighttpd/use-ipv6.pl"

dir-listing.encoding        = "utf-8"
server.dir-listing          = "enable"

compress.cache-dir          = "/var/cache/lighttpd/compress/"
compress.filetype           = ( "application/x-javascript", "text/css", "text/html", "text/plain" )

include_shell "/usr/share/lighttpd/create-mime.assign.pl"
include_shell "/usr/share/lighttpd/include-conf-enabled.pl"

fastcgi.server = ( ".php" => ((
    "bin-path" => "/usr/bin/php-cgi",
    "socket" => "/tmp/php.sock"
)))' > /etc/lighttpd/lighttpd.conf
clear

echo "Restart lighttpd..."
/etc/init.d/lighttpd restart
clear

echo "Installing php5 modules..."
apt-get install -y php5-mysql php5-curl php5-gd php5-idn php-pear php5-imagick php5-imap php5-mcrypt php5-memcache php5-ming php5-ps php5-pspell php5-recode php5-snmp php5-sqlite php5-tidy php5-xmlrpc php5-xsl
clear

echo "Restart lighttpd..."
/etc/init.d/lighttpd restart
clear

echo "Installing phpmyadmin..."
apt-get install -y phpmyadmin
clear

echo "Installation Complete!"
echo "Thanks 4 using the Installer."
echo "Made by CodingDev.de"