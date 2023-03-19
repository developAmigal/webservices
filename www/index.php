<?php

define ('JPATH_ROOT', dirname(__DIR__));
define ('JPATH_CONFIGURATION',JPATH_ROOT.'/App/Config');
use App\App;
use App\Service\ConfigServiceProvider;
use App\Service\DatabaseServiceProvider;

include JPATH_ROOT. '/App/App.php';
require_once(JPATH_ROOT.'/App/Service/ConfigServiceProvider.php');
require_once(JPATH_ROOT.'/App/Service/DatabaseServiceProvider.php');

if (! file_exists ( JPATH_ROOT . '/vendor/autoload.php' )) {
	header ( 'HTTP/1.1 500 Internal Server Error', null, 500 );
	echo '<html><head><title>Server Error</title></head><body><h1>Composer Not Installed</h1><p>Composer is not set up properly, please run "composer install".</p><p>'.JPATH_ROOT.'</p>
	<p> working dir '.getcwd().'</body></html>';
	
	exit ( 500 );
}

require JPATH_ROOT . '/vendor/autoload.php';

$container = new \Joomla\DI\Container;
$container->registerServiceProvider(
    new \App\Service\ConfigServiceProvider(JPATH_CONFIGURATION.'/config.json')
    )
    ->registerServiceProvider( new \App\Service\DatabaseServiceProvider);
$application = new \App\App($container);
$application->execute(); // execute App.php



?>