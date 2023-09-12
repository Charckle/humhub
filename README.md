### Where we are
Its solution uses the image provided by mriedmann, version 1.13.2. Its a solution that combines php and nginx into a single image. The other option is to have them in different containers. Due to the complexity and the low amount of people using it, I decided to go with the combined.

Disable autoinstall and debugging, when moved into production. Autoinstall will do nothing, but, its good practice.

additional configuration can be found on the [docker page](https://hub.docker.com/r/mriedmann/humhub)


### https
- the app will be returning all the links as http, so add the proxy server as "trustedHost", or just add `$_SERVER['HTTPS'] = 'on';` before `return`, in the web.php config in the config folder:
<pre>

$_SERVER['HTTPS'] = 'on';

return [
    'components' => [
        'request' => [
            'trustedHosts' => ['127.0.0.1/32', '10.108.29.30']
        ],
    ]
];
</pre>
