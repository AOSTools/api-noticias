<?php 
class Usuarios extends Controller{
    public function __construct($param,$authparam){ 
        parent::__construct($param, $authparam);
    }

    public function login()
    {
        if(!isset($_POST['user']) || !isset($_POST['pass'])){
            header('HTTP/1.1 400 Bad Request');
            new Errores("Parametros user y password son obligatorios");
        }else{
            if ($registro = $this->model->validarlogin($_POST['user'], $_POST['pass'])) {
                header("HTTP/1.1 200 OK");
                $info = array(
                    "success" => true,
                    "msg" => "Usuario validado con exito",
                    "token" => $registro['token']
                );
            }else{
                header("HTTP/1.0 401 Unauthorized");
                $info = array(
                    "success" => false,
                    "msg" => "Usuario o password incorrecto"
                );
                
            }

        }
        echo json_encode($info);
            
    }
   
}
