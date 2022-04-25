<?php
class Errores
{
    public function __construct($msg = "Entrada No Valida")
    {
        $info = [
            "success" => false,
            "msg" => $msg
        ];
        echo json_encode($info);
        exit(0);
    }
}
