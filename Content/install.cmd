curl -o %tmp%\python.zip https://www.python.org/ftp/python/3.5.1/python-3.5.1-embed-amd64.zip
d:\7zip\7za e %tmp%\python.zip -od:\home\Python35
copy wfastcgi.py d:\home\Python35
