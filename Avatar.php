<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Avatar extends CI_Controller {
    
    var $sql;
    var $userId;
    var $eyeColor;
    var $skinColor;
    var $hatType;
    var $hairColor;
    
    public function __construct() {
        parent:: __construct();
            
        $this->load->model('database'); 
    } 
        
    public function index(){}

    public function setAvatar($objAvatar)
    {
        $data = json_decode($objAvatar, true);

        if($data == null)
        {
            echo 0;
            return 0;
        }

        $values = $data[0];
        $userId = $values['userId'];
        $eyeColor = $values['eyeColor'];
        $skinColor = $values['skinColor'];
        $hatType = $values['hatType'];
        $hairColor = $values['hairColor'];

        $this->sql = "DELETE FROM Avatars WHERE userId = $userId";  

        $this->database->insert2db($this->sql);  

        $this->sql = "INSERT INTO Avatars (userId, eyeColor, skinColor, hatType, hairColor) VALUES($userId, '$eyeColor', '$skinColor', '$hatType', '$hairColor')";  

        $bool = $this->database->insert2db($this->sql); 

        echo $bool;
        return $bool;
    }

    public function deleteAvatar($userAvatarId)
    {
        $this->sql = "DELETE FROM Avatars WHERE userId = $userAvatarId";  
        $bool = $this->database->insert2db($this->sql); 

        echo $bool;
        return $bool;
    }
    
    public function getAvatar($userAvatarId)
    {
        $this->sql = "SELECT * FROM Avatars WHERE userId = $userAvatarId";  
        $data = $this->database->db_query($this->sql);

        echo json_encode($data);
        return json_encode($data);
    }
}
