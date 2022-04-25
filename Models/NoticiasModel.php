<?php 
class NoticiasModel extends DB{
    public function __construct(){
        $this->conectar();
    }
    
    /**
     * Obtiene todas las noticias
        * @return array
        */
        
    public function getNoticias(){
        $sql = "SELECT * FROM noticias ORDER BY fecha DESC";
        $result = $this->conexion->query($sql);
        return parent::getArrafromResult($result);
    }

    /**
     * Obtiene la noticia con el id indicado
        * @return array
        */
    public function getNoticia($id)
    {
        $sql = "SELECT * FROM noticias WHERE id_noti = {$id}";
        $result = $this->conexion->query($sql);
        return parent::getArrafromResult($result);
    }

    /**
     * Agrega una noticia con los datos indicados
        * @return array
        */
    public function addNoticia($titulo, $contenido)
    {
        $sql = "INSERT INTO noticias (titulo,descripcion) VALUES ('{$titulo}','{$contenido}')";
        $result = $this->conexion->query($sql);
        return $result;
    }

    /**
     * Actualiza la noticia con los datos que se le pasan como parametro
        * @return array
        */

    public function editNoticia($id, $titulo, $contenido)
    {
        $sql = "UPDATE noticias SET titulo = '{$titulo}', descripcion = '{$contenido}' WHERE id_noti = {$id}";
        $result = $this->conexion->query($sql);
        return $result;
    }

    /**
     * Elimina la noticia con el id que se le pasa como parametro
        * @return boolean
        */
    public function deleteNoticia($id)
    {
        $sql = "DELETE FROM noticias WHERE id_noti = {$id}";
        $result = $this->conexion->query($sql);
        return $result;
    }
   
}
