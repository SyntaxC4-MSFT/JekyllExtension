mkdir Commands
cd Commands

::Download Dependencies
curl -L -o Ruby-2.2.3.zip http://dl.bintray.com/oneclick/rubyinstaller/ruby-2.2.2-i386-mingw32.7z
curl -L -o RubyDevKit.exe http://dl.bintray.com/oneclick/rubyinstaller/defunct/DevKit-tdm-32-4.5.2-20110712-1620-sfx.exe

::Unzip Files
d:\7zip\7za x Ruby-2.2.3.zip -oRuby-2.2.3
d:\7zip\7za x RubyDevKit.exe -oRubyDevKit

::Clean up Zip Files
rm Ruby-2.2.3.zip
rm RubyDevKit.exe

::Configure RubyDevKit

cd RubyDevKit

call D:\home\SiteExtensions\JekyllExtension\Commands\Ruby-2.2.3\ruby-2.2.2-i386-mingw32\bin\ruby dk.rb init
echo - D:/home/SiteExtensions/JekyllExtension/Commands/Ruby-2.2.3/ruby-2.2.2-i386-mingw32 >> config.yml
call D:\home\SiteExtensions\JekyllExtension\Commands\Ruby-2.2.3\ruby-2.2.2-i386-mingw32\bin\ruby dk.rb install

::Install Jekyll

call D:\home\SiteExtensions\JekyllExtension\Commands\Ruby-2.2.3\ruby-2.2.2-i386-mingw32\bin\gem install jekyll