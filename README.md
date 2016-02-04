Python Site Extension
========================

Azure Web App site extension that installs Python in a Web App. Make sure you turn off Python in the Azure Portal when using this extension.

Use these steps to install it:

- Use the new Portal for everything (https://portal.azure.com/) 
- Create a new Web App. **Don't turn on Python in portal.**
- Under the Web App, choose Tools / Extensions
- Add the Python Install extension. It'll be toward the end of the list, and there is no search function. UI is not great, but you'll find it! :)
- Deploy your site bits to wwwroot, and you should be ready to run!

Note that as is the case when using the 'built-in' Python versions, you need to include a web.config file, which will look like this (change `WSGI_HANDLER` to fit your scenario):

```xml
<configuration>
  <appSettings>
    <add key="pythonpath" value="%SystemDrive%\home\site\wwwroot" />
    <add key="WSGI_HANDLER" value="hostingstart-python.application" />
  </appSettings>
</configuration>
```

Note that the Site Extension only deploys the core Python bits. They end up getting copied in your site files under the `D:\home\Python35` folder, which you can access easily using [Kudu Console](https://github.com/projectkudu/kudu/wiki/Kudu-console). If needed, you can add missing components there, copying them from your local Python installation (you can drag and drop into Kudu Console).
 