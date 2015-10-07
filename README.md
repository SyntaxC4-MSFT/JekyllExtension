# Jekyll Site Extension

The Jekyll Site Extension adds support for Jekyll to Azure Web App.

## Install

1. Create an Azure Web App
2. Set an App Setting for `SCM_COMMAND_IDLE_TIMEOUT` to `600`
3. [Install](http://blog.syntaxc4.net/post/2015/02/05/how-to-enable-a-site-extension-in-azure-websites.aspx) the Jekyll Site Extension

> Note: This site extension downloads `ruby` and `devkit` so the installation takes upwards of 15 minutes. Be Patient.

That's it! Just hook up your GitHub Account or Push a local Git Repo with your Jekyll site.