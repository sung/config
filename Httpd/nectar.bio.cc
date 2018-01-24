# mod_perl starter (moved to /data/Config/Httpd/nectarvariant.org.conf)
#<IfModule mod_perl.c>
#    PerlRequire "/data/Config/Httpd/mod_perl-startup.pl"
#</IfModule>

# http://search.cpan.org/dist/Catalyst-Manual/lib/Catalyst/Manual/Cookbook.pod#mod_perl_Deployment
# nectarmutation.org/main will be the catalyst part (mod_perl)
# nectarmutation.org/gbrowse2 for gbrowse
<VirtualHost *:80>
#	Servername www.nectarmutation.org
	Servername nectar.bio.cc
#	ServerAlias nectarmutation.org
    ServerAdmin sung.gong@yahoo.com
	DocumentRoot "/data/Serve/Web/Nectarmutation.org/Nectar-Web/root"
	Options -Indexes -MultiViews +FollowSymLinks

	# don't forget Includes for SSI (/ESST)
	# http://httpd.apache.org/docs/2.2/howto/ssi.html
	<Directory />
#		Options Includes FollowSymLinks
		# does not allow any directives within .htaccess
#		AllowOverride None 
	         DirectoryIndex index.php index.html index.cgi index.html.var
	         AddType application/x-httpd-php .php .inc .html
        	 Options FollowSymLinks
	         Options +ExecCGI
        	 AllowOverride All
	         Require all granted
	</Directory>

	############################################################
	## http://nectarmutation.org/main
#	PerlModule Nectar::Web
	PerlTaintCheck  On
	<Location /main>
		SetHandler  modperl
		PerlResponseHandler Nectar::Web
	</Location>
	#http://search.cpan.org/dist/Catalyst-Plugin-Static-Simple/lib/Catalyst/Plugin/Static/Simple.pm#USING_WITH_APACHE
	Alias /main/static "/data/Serve/Web/Nectarmutation.org/Nectar-Web/root/static"
	<Location /main/static>
		SetHandler default-handler
	</Location>
	#### End of Nectar Config
	############################################################

	# this enabled by a global config within httpd.conf (moved to /data/Config/Httpd/nectarvariant.org.conf)
	#Include /etc/gbrowse/apache2.conf
    # Include /data/Config/Httpd/gbrowse2.conf (old Brompton)

	# could do from 'root/index.html'
	#Redirect / /main

	#Error and access logs
    ErrorLog /data/Store/Log/Nectarmutation.org/error_log
    CustomLog /data/Store/Log/Nectarmutation.org/access_log common


</VirtualHost>
