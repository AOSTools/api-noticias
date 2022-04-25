<?php 
class Home extends Controller{
    public function __construct($param,$authparam){
        parent::__construct($param, $authparam);
    }
    
    public function home(){
        $http_response_header = array(
            "HTTP/1.1 300 OK",
            "Content-Type: application/json"
        );
        $info = array(
            "success" => true,
            "msg" => "Bienvenido a la API de noticias"
        );
        
        echo json_encode($info);
        
    }
}
?>