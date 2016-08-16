<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Attachment extends CI_Controller {
    
    var $sql;
    var $messageId;
    var $attachment;
    var $date;

    public function __construct() {
        parent:: __construct();
            
        $this->load->model('database'); 
    } 
        
    public function index(){}

    public function addMessage($objAttachment)
    {
        $data = json_decode($objAttachment, true);

        if($data == null)
        {
            echo 0;
            return 0;
        } 

        $values = $data[0];
        $messageId = $values['messageId'];
        $attachment = $values['attachment'];

        $this->sql = "INSERT INTO Attachment (messageId, date, attachment) VALUES($messageId, now(), '$attachment')";  

        $bool = $this->database->insert2db($this->sql); 

        echo $bool;
        return $bool;
    }

    public function deleteAttachment($idAttachment)
    {
        $this->sql = "DELETE FROM Attachment WHERE id = $idAttachment";  

        $bool = $this->database->insert2db($this->sql);   

        echo $bool;
        return $bool;
    }

    public function getAttachment($idAttachment)
    {
        $this->sql = "SELECT * FROM Attachment WHERE id = $idAttachment";  
        $data = $this->database->db_query($this->sql);

        $spots = array();

        for ($i=0; $i < count($data); $i++) { 
            
            $values = $data[$i];
            $values['attachment'] = base64_encode($values['attachment']);
  
            array_push($spots,$values);
        }

        echo json_encode($spots);
        return json_encode($spots);
    }

    public function listAttachmentsByMessageId($idMessage)
    {
        $this->sql = "SELECT * FROM Attachment WHERE messageId=$idMessage";  
        $data = $this->database->db_query($this->sql);

        $spots = array();

        for ($i=0; $i < count($data); $i++) { 
            
            $values = $data[$i];
            $values['attachment'] = base64_encode($values['attachment']);
  
            array_push($spots,$values);
        }

        echo json_encode($spots);
        return json_encode($spots);
    }
}
