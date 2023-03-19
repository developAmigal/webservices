<?php
namespace App\Controllers;

require JPATH_ROOT . '/vendor/autoload.php';

use App\Controllers\DefaultController;
use App\Models\PagesModel;
use App\Models\DefaultModel;

require_once 'DefaultController.php';
require_once JPATH_ROOT.'/App/Models/DefaultModel.php';
require_once JPATH_ROOT.'/App/Models/PagesModel.php';

class PagesController extends DefaultController
{
    public function index()
    {
        $model = new PagesModel($this->getInput(),$this->getContainer()->get('db'));
        $items= $model->getItems();
        return array('items'=>$items);
    }
    
    public function show()
    {
        $alias = $this->getApplication()->get('routeVars')['id'];
        if(isset($alias))
        {
            $model = new PagesModel($this->getInput(), $this->getContainer()->get('db'));
        }
        return array('item=>$item');
    }
}
?>