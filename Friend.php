<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Friend extends CI_Controller {
    
    var $sql;
    
    public function __construct() {
        parent:: __construct();
            
        $this->load->model('database'); //model
    } 
        
    public function index(){}

    public function addFriend($UserID, $UserId2)
    {
        $this->sql = "INSERT INTO FRIENDS (userId, userId2, waitingForId, isApproved, isApproved2)".
        " VALUES ($UserID, $UserId2, NULL, NULL, NULL)";  

        $bool = $this->database->insert2db($this->sql);   

        echo $bool;
        return $bool;
    }

    public function deleteFriend($FriendShipId)
    {
        $this->sql = "DELETE FROM FRIENDS WHERE friendId = $FriendShipId";  

        $bool = $this->database->insert2db($this->sql);   

        echo $bool;
        return $bool;
    }

    public function approvalFriend($FriendShipId, $isApproved)
    {
        $bool = 0;

        $this->sql = "SELECT isApproved,isApproved2 FROM FRIENDS WHERE friendId = $FriendShipId";

        $data = $this->database->db_query($this->sql);
        //print_r($data);

        if($data == null)
        {
            echo $bool;
            return 0;
        }

        $val = $data[0];
        $val = $val['isApproved'];

        if($val == null)
        {
            $this->sql = "UPDATE FRIENDS SET isApproved=$isApproved WHERE friendId=$FriendShipId";
            $bool = $this->database->insert2db($this->sql);   
        }
        else
        {
            $val = $data[0];
            $val = $val['isApproved2'];

            if($val == null)
            {
                $this->sql = "UPDATE FRIENDS SET isApproved2=$isApproved WHERE friendId=$FriendShipId";
                $bool = $this->database->insert2db($this->sql);   
            }
        }
      

        echo $bool;
        return $bool;      
    }
    
    public function listFriendsByUser($UserID)
    {
        $this->sql = "SELECT * FROM FRIENDS WHERE userId = $UserID OR userId2 = $UserID";
        $data = $this->database->db_query($this->sql);

        echo json_encode($data);
        return json_encode($data);
    }
    
}