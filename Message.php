<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Message extends CI_Controller {
    
    var $sql;

    var $userFromId;
    var $userToId;
    var $status;
    var $message;
    
    public function __construct() {
        parent:: __construct();
            
        $this->load->model('database'); //model
    } 
        
    public function index(){}

    public function addMessage($objMessage)
    {
        $data = json_decode($objMessage, true);

        if($data == null)
        {
            echo 0;
            return 0;
        } 

        $values = $data[0];
        $message = $values['message'];
        $userFromId = $values['userFromId'];
        $userToId = $values['userToId'];

        $this->sql = "INSERT INTO Messages (message, date, userFromId, userToId, status, isApproved, isReported) VALUES('$message', now(), $userFromId, $userToId, NULL, NULL, NULL)";  

        $bool = $this->database->insert2db($this->sql); 

        echo $bool;
        return $bool;
    }

    public function deleteMessage($idMessage)
    {
        $this->sql = "DELETE FROM Messages WHERE id = $idMessage";  

        $bool = $this->database->insert2db($this->sql);   

        echo $bool;
        return $bool;
    }

    public function approveMessage($idMessage, $isApproved)
    {
        $this->sql = "UPDATE Messages SET isApproved=$isApproved WHERE id=$idMessage";
        $bool = $this->database->insert2db($this->sql); 

        echo $bool;
        return $bool;
    }

    public function reportMessage($idMessage, $isReported)
    {
        $this->sql = "UPDATE Messages SET isReported=$isReported WHERE id=$idMessage";
        $bool = $this->database->insert2db($this->sql); 

        echo $bool;
        return $bool;
    }

    public function setStatusMessage($idMessage, $Status)
    {
        $this->sql = "UPDATE Messages SET status='$Status' WHERE id=$idMessage";
        $bool = $this->database->insert2db($this->sql); 

        echo $bool;
        return $bool;
    }

    public function getMessage($idMessage)
    {
        $this->sql = "SELECT * FROM Messages WHERE id = $idMessage";  
        $data = $this->database->db_query($this->sql);

        echo json_encode($data);
        return json_encode($data);
    }

    public function listMessages($UserId1, $UserId2)
    {
        $this->sql = "SELECT * FROM Messages WHERE (userFromId = $UserId1 and userToId = $UserId2) OR (userFromId = $UserId2 and userToId = $UserId1)";  
        $data = $this->database->db_query($this->sql);

        echo json_encode($data);
        return json_encode($data);
    }
    
}
