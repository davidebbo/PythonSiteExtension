curl -o %tmp%\python.zip https://www.python.org/ftp/python/3.5.1/python-3.5.1-embed-amd64.zip
d:\7zip\7za e %tmp%\python.zip -od:\home\Python35 -y
copy /y wfastcgi.py %home%\Python35

rem Only copy the starter files if the site doesn't already have a web.config
if not exist %home%\site\wwwroot\web.config copy wwwroot %home%\site\wwwroot
