<?php

namespace App\Models;
require JPATH_ROOT . '/vendor/autoload.php';
use App\Models\DefaultModel;

class PagesModel extends DefaultModel
{
    public function getItems()
    {
        $query = $this->db->getQuery(true);
        $query
        ->select('*')
        ->from($query->quoteName(('#__pages')))
        ->where('enabled=1');
        
        $this->db->setQuery($query);
        $loadList = $this->db->loadObjectList();
        return $loadList;
    }
    
    public function getItemByAlias($alias)
    {
        $query=$this->db->getQuery(true)
        ->select('a.*')
        ->from($this->db->quoteName('#__pages'))
        ->where($this->db->quoteName('a.alias').'='.$this->db->quote($alias))
        ->where($this-db->quoteName('a.enabled')."='1'")
        ;
        return $this->db->setQuery($query)->loadObject();
    }
}