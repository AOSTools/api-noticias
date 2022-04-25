<?php
model('usuarios');
class Controller
{
    protected $model;
    
    public function __construct($param, $authparam)
    {
        $this->model = new UsuariosModel();
        if (($authparam != '') && ($authparam != 'login')) {
            if (!$this->model->validarToken($authparam)) {
                new Errores("Oops! El token es invalido");
            }
        } else if (($authparam == '') && ($param != 'login')) {
            new Errores("El token es un campo obligatorio");
        }
        if (method_exists($this, $param)) {
            $this->$param();
        } else {
            new Errores("El metodo '$param()' no existe");
        }
    }

    public function loadModel()
    {
        $model = get_class($this) . "Model";
        $fileModel = 'Models/' . $model . '.php';
        if (file_exists($fileModel)) {
            require_once $fileModel;
            $this->modelo = new $model();
        } else {
            new Errores("El modelo '$model' no existe");
        }
    }
}
