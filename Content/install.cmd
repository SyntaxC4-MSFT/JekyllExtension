mkdir Commands
cd Commands

::Download Dependencies
curl -L -o Ruby-2.2.3.zip http://dl.bintray.com/oneclick/rubyinstaller/ruby-2.2.2-i386-mingw32.7z
start /wait d:\7zip\7za x Ruby-2.2.3.zip -oRuby-2.2.3

curl -L -o RubyDevKit.exe http://dl.bintray.com/oneclick/rubyinstaller/defunct/DevKit-tdm-32-4.5.2-20110712-1620-sfx.exe
start /wait d:\7zip\7za x RubyDevKit.exe -oRubyDevKit

::Clean up Zip Files
rm Ruby-2.2.3.zip
rm RubyDevKit.exe

::Configure RubyDevKit

cd RubyDevKit

call %HOME%\SiteExtensions\JekyllExtension\Commands\Ruby-2.2.3\ruby-2.2.2-i386-mingw32\bin\ruby dk.rb init
echo - %HOMEDRIVE%/home/SiteExtensions/JekyllExtension/Commands/Ruby-2.2.3/ruby-2.2.2-i386-mingw32 >> config.yml
call %HOME%\SiteExtensions\JekyllExtension\Commands\Ruby-2.2.3\ruby-2.2.2-i386-mingw32\bin\ruby dk.rb install

::Install Jekyll

SET SSL_CERT_FILE=%PROGRAMFILES(x86)%\git\usr\ssl\certs\ca-bundle.crt

for filename in `cat $INSTALL_GEMS` ; do

    call %HOME%\SiteExtensions\JekyllExtension\Commands\Ruby-2.2.3\ruby-2.2.2-i386-mingw32\bin\gem install $filename 

done

::Install WebJob

mkdir %HOME%\site\wwwroot\app_data\jobs\triggered
mv %HOME%\SiteExtensions\JekyllExtension\Hooks\jekyll-build %HOME%\site\wwwroot\app_data\jobs\triggered\jekyll-build