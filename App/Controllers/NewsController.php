<?php
namespace App\Controllers;

use App\Controllers\DefaultController;

require_once 'DefaultController.php';

class NewsController extends DefaultController
{
    public function index()
    {
        return "NewsController: index";
    }
    
    public function edit()
    {
        echo 'NewsConntroller:Edit kaldt';
        
        $routeVars = $this->getApplication()->get('routeVars');
        array_key_exists('id',$routeVars) ? $id = $routeVars['id'] : $id=''; // get('id')
        return 'NewsController: edit '.$id;
    }
}
?>