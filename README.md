# php7-memcached-client
Just PHP 7 with Memcached-Client

# Description
This Docker-Image is based on [php:7.2-fpm](https://hub.docker.com/_/php/) plus the memcached-client by installing libmemcached-dev as well as memcached-3.0.3. 

# Usage
`docker run -P -v <local-store>:/var/www mheindl/php7-memcached-client <command, like "php --version">`

# Why?
If you are develop an application like an Laravel Lumen API and on deployment want to use commands like 
`php artisan cache:clear` 
you need PHP and the Class "Memcached", otherwise you will end up in an Error like 
`$ php artisan cache:clear                                             
  [Symfony\Component\Debug\Exception\FatalThrowableError]  
  Class 'Memcached' not found
` 
