<?php

namespace App\Controllers;

require JPATH_ROOT.'/vendor/autoload.php';

use App\Models\DefaultModel;
use Joomla\Controller\AbstractController;
use Joomla\DI\Container;
use Joomla\DI\ContainerAwareInterface;
use Joomla\Router\Router;

require_once JPATH_ROOT . '/App/Models/DefaultModel.php';
//include JPATH_ROOT . '/App/Models/DefaultModel.php';

class DefaultController extends AbstractController implements ContainerAwareInterface
{
    private $container;
    
    public function execute()
    {
        $app=$this->getApplication();
        $uri = $app->get('uri'); //get URI from Applicatication
        
        $route = $uri->route;    // find the route stored in Application
        $router=$app->get('router'); // get the router
        $task='';
        $id='';
        $input = $this->getInput();
       
        if(!is_null($route) && !$route == '')
        {
            $resolveRoute = $router->parseRoute($route); // resolve the route
            $routeVars = $resolveRoute->getRouteVariables(); // get router varibales
            $app->set('routeVars',$routeVars);
            $task = $routeVars['task'];  // get('task','index')
            if( isset($routeVars['id'])) 
            {
                $id = $routeVars['id'];
                
            } else $id='';
            $input->set('task',$task);
            $input->set('id',$id);
        }
        $config=$this->getContainer()->get('config');
        if(method_exists($this,$task))
            return $this->$task();
        else
            echo 'Metod not found';
    
    }
    
    public function getcontainer()
    {
        return $this->container;
    }
    
    public function setContainer(Container $container)
    {
        $this->container = $container;
        return $this;
    }
}


?>