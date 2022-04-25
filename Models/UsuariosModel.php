<?php
class UsuariosModel extends DB
{

    public function __construct()
    {
        $this->conectar();
    }

    public function validarLogin($user, $pass)
    {
        $sql = "SELECT * FROM usuarios WHERE user = '{$user}' AND password = md5('{$pass}')";
        $result = $this->conexion->query($sql);
        if ($registro = $result->fetch_assoc()) {
            $registro['token'] = token();
            $this->guardarToken($registro['token'], $user);
            return $registro;
        } else {
            return false;
        }
    }

    private function guardarToken($token, $user)
    {
        $sql = "INSERT INTO token SET token = '{$token}', user = '{$user}',fecha  = now(), ip = '{$_SERVER['REMOTE_ADDR']}'";
        $this->conexion->query($sql);
    }

    public function validarToken($token)
    {
        $sql = "SELECT * FROM token WHERE token = '{$token}'";
        $result = $this->conexion->query($sql);
        $registros = parent::getArrafromResult($result);
        return (count($registros) > 0 ? true : false);
    }
}
