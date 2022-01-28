<?php 
     

     require '../../../../../parsers/ParserSetup.php';
      $id= $_POST['userid'];
      global $doc;
      $sallesParent = $root->getElementsByTagName('salles')->item(0);
      foreach ($sallesParent->childNodes as $child) {
          if ($child->nodeType == 1 && ($id == $child->getAttribute('id'))) {
              $capacite=$child->getAttribute('capacite');
          }
      }
      
      echo' <div class="container-fluid">
            <div class="form-group input-group">
            <span class="input-group-addon" style="width:150px;">numero:</span>
            <input type="text" style="width:350px;" name="id" class="form-control" id="id" value="'.$id.'" readonly/>
            </div>
            <div class="form-group input-group">
            <span class="input-group-addon" style="width:150px;">capacite:</span>
            <input type="text" style="width:350px;" name="capacite" class="form-control" value="'.$capacite.'"  id="capacite"/>
            </div>    
        </div>';

?>