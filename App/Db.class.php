<?php 
class DB
{
    protected $conexion;
    protected $isConnected = false;
    protected $dbHost = 'localhost';
    protected $dbUser = 'root';
    protected $dbPass = '';
    protected $dbName = 'api';
    protected $dbCharset = 'utf8mb4';
    protected $dbPort = 3306;


    public function conectar()
    {
        $this->conexion = new mysqli($this->dbHost, $this->dbUser, $this->dbPass, $this->dbName, $this->dbPort,);

        if ($this->conexion->connect_errno) {
            echo "Fallo al conectar a MySQL: (" . $this->conexion->connect_errno . ")";
            $this->isConnected = false;
        }else{
            $this->isConnected = true;
        }
    }
    public function getArrafromResult($result)
    {
        $array = array();
        while ($row = $result->fetch_assoc()) {
            $array[] = $row;
        }
        return $array;
    }

    function authtoken()
    {
       
    }


    
} 

