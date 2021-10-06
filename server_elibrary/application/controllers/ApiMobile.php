<?php
header("Access-Control-Allow-Headers: Access-Control-Allow-Origin, Accept");
defined('BASEPATH') OR exit('No Script Direct');
 class ApiMobile extends CI_Controller{
 	function __construct(){
 		parent:: __construct();
 		date_default_timezone_set('Asia/Jakarta');
 		error_reporting(E_ALL);
 		ini_set('Display Error', 1);
 	}

     function getDataBooks(){
         $q = $this->db->get('tb_library_books');
         if($q->num_rows()>0){
             $data['message'] = "Success get data";
             $data['status'] = 200;
             $data['data']= $q->result();
         }else{
             $data['message'] = "Failed get data";
             $data['status'] = 404;
         }

         echo json_encode($data);
     }

     //fungsi register
     function registerUser(){
         $user_name = $this->input->post('user_name');
         $email = $this->input->post('email');
         $password = $this->input->post('password');


         $this->db->where('email', $email);
         $this->db->or_where('user_name', $user_name);
         $q = $this->db->get('tb_user');

         if($q->num_rows()>0){
             //kalau sudah terdaftar
             $data['status']=404;
             $data['message'] = "Username / email sudah terdaftar";

         }else{
             //kalau belum terdaftar
             $save['user_name'] = $user_name;
             $save['email'] = $email;
             $save['password'] = md5($password);

             $querySaved = $this->db->insert('tb_user', $save);

             if($querySaved){
                $data['message'] = "Success register data";
                $data['status'] = 200;
             }else{
                $data['message'] = "Failed register data";
                $data['status'] = 404;
             }
         }

         echo json_encode($data);
     }

     function loginUser(){

         $user_name = $this->input->post('user_name');
         $password = $this->input->post('password');

         $this->db->where('user_name', $user_name);
         $this->db->where('password', md5($password));

         $q = $this->db->get('tb_user');

         if($q->num_rows()>0){
            $data['message'] = "Success Login";
            $data['status'] = 200;
            $data['data']= $q->result();
        }else{
            $data['message'] = "Failed Login";
            $data['status'] = 404;
        }

        echo json_encode($data);

     }

     function addBooksReader(){
        $id_book              = $this->input->post('id_book');
        $id_user_reader             = $this->input->post('id_user_reader');
        $uuid_file             = $this->input->post('uuid_file');
        $open_bookAt             = $this->input->post('open_bookAt');

         $save['id_book']  = $id_book;
         $save['id_user_reader'] = $id_user_reader;
        $save['uuid_file'] = $uuid_file;
          $save['open_bookAt']  = date('d-m-Y H:i:s');
        
          $querySaved          = $this->db->insert('tb_readers_book', $save);
          if ($querySaved) {
              $data['status']  = 200;
              $data['message'] = 'Successfully Add Data';
            $data['data'] = $save;
            
            
          } else {
              $data['status']  = 404;
              $data['message'] = 'Failed Add Data';
          }
      
      echo json_encode($data);	
 }

 function updateCloseTimeReader(){
    $uuid_file = $this->input->post('uuid_file');
    $close_bookAt             = $this->input->post('close_bookAt');
    
    
    $this->db->where('uuid_file', $uuid_file);
        $save['close_bookAt']  = date('d-m-Y H:i:s');
        
        $query = $this->db->update('tb_readers_book', $save);

        // Ouput Request
        $data1 = array(
            'message' => "Successfully Update",
            'status' => 200,
            
        );

    

    echo json_encode($data1);

}
}