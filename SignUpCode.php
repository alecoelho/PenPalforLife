<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class SignUpCode extends CI_Controller {
    
    var $sql;
    
    public function __construct() {
        parent:: __construct();
            
        $this->load->model('database'); 
    } 
        
    public function index(){}

    public function setSignUpCode($userID)
    {
        $this->sql = "DELETE FROM SignupCodes WHERE userId = $userID";  

        $this->database->insert2db($this->sql);  

        $this->sql = "INSERT INTO SignupCodes (userId, signupCode) VALUES($userID, UUID())";  

        $bool = $this->database->insert2db($this->sql); 

        echo $bool;
        return $bool;
    }

    public function getSignUpCode($userID)
    {
        $this->sql = "SELECT * FROM SignupCodes WHERE userId = $userID";  
        $data = $this->database->db_query($this->sql);

        echo json_encode($data);
        return json_encode($data);
    }
    
}
