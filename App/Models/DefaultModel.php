<?php 
namespace App\Models;
require JPATH_ROOT . '/vendor/autoload.php';

use Joomla\Input\Input;
use Joomla\Model\DatabaseModelInterface;
use Joomla\Model\DatabaseModelTrait;
use Joomla\Database\DatabaseDriver;


class DefaultModel 
{
    use DatabaseModelTrait;
    protected $input;
    
    public function __construct(Input $input, DatabaseDriver $db)
    {
        $this->setDb($db);
        $this->input = $input;
    }
    
    public function getItem()
    {
        echo '<br /> DefaultModel::getItems';
        return "Result from DefaultModel : getItem";
    }
}
?>
