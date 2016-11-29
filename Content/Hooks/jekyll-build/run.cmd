IF EXIST %HOME%/site/repository/_config.yml (

    call jekyll build -s "%HOME%/site/repository" -d "%HOME%/site/wwwroot" --config %HOME%/site/repository/_config.yml,%HOME%/siteextensions/JekyllExtension/Hooks/save_webjobs.yml

)