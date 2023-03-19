<?php
namespace App;


require JPATH_ROOT . '/vendor/autoload.php';


use Joomla\Application\AbstractWebApplication;
use Joomla\Application\Controller\ControllerResolver;
use Joomla\DI\Container;
use Joomla\DI\ContainerAwareInterface;
use Joomla\Router\Router;
use Joomla\Router\Route;
use Joomla\Uri\Uri;
use Joomla\Database\DatabaseDriver;
use Joomla\Database\DatabaseFactory;
use Monolog\Logger;
use Monolog\Handler\StreamHandler;

use App\Router\AppRouter;
use App\Controllers\DefaultController;
use App\Controllers\NewsController;


require_once 'Controllers/DefaultController.php';
require_once 'Controllers/NewsController.php';
require_once 'Controllers/PagesController.php';
require_once JPATH_ROOT . '/App/Router/AppRouter.php';

final class App extends AbstractWebApplication implements ContainerAwareInterface
{
    protected $container;
    protected $maps;
    
    public function __construct(Container $container)
    {
        parent::__construct();
        $this->setContainer($container);
        
        $config = $container->get('config');
        $this->config->merge($config);
        if($this->config->get('system.display_errors')== true )
        {
            error_reporting(E_ALL);
            ini_set('display_errors',1);
        }
        
        $this->container->logger = new Logger('app_log');
        $this->container->logger->pushHandler(
            new StreamHandler(JPATH_ROOT.'/App/Logs/app.log'));
        // logger usage
        
    }
    
    protected function doExecute()
    {
        try
        {
        $router = new AppRouter($this->input, $this);
        $this->set('router',$router);
        $maps = json_decode(file_get_contents(JPATH_ROOT. '/App/Config/routes.json'), true);
           
        foreach($maps as $path => list($controller,$filter,$default))
        {
            $controller='App'.$controller;
            $router->addRoute(
                new Route(
                    [],
                    $path,
                    $controller
                    ,$filter
                    ,$default
                    )
                );
        }
        $uri = $this->get('uri');
        
        $route = $this->get('uri.route');
         if(!is_null($route))
        {
            $routeResolver = $router->parseRoute($this->get('uri.route',''));
            $controllerResolver = new ControllerResolver();
            $controller =$controllerResolver->resolve($routeResolver)[0];
        }
        else $controller = new DefaultController;
        
        $controller->setContainer($this->container);
        $controller->setInput($this->input)->setApplication($this);
        
        $content = $controller->execute();
        }
        catch(ErrorException $e)
        {
            $this->container->logger->error($e->getMessage);
            $content = 'Error noget gik galt, se log';
        }
        $this->setBody(json_encode($content));
    }
    
    public function setContainer(Container $container)
    {
        $this->container = $container;
        return $this;
        
    }
    
    public function getContainer()
    {
        return $this->container;
    }
    
}
    
?>