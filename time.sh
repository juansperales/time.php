#!/bin/bash
apt-get update
apt-get install apache2 php libapache2-mod-php -y

cat <<EOT >> /var/www/html/time.php
<?php
date_default_timezone_set("America/Argentina/Buenos_Aires");
\$date = date('m/d/Y h:i:s a', time());
echo \$date;

?>
EOT
