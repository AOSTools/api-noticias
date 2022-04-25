<?php
model('noticias');
class Noticias extends Controller
{
    private $modelo;
    public function __construct($param, $authparam)
    {
        $this->modelo = new NoticiasModel();
        parent::__construct($param, $authparam);
    }

    /**
     * Obtiene todas las noticias
     * @return array
     */
    public function getAll()
    {
        header('HTTP/1.1 200 OK');
        $info = array(
            "success" => true,
            "msg" => "Registros obtenidos correctamente",
            "data" => $this->modelo->getNoticias()
        );

        echo json_encode($info);
    }

    /**
     * Obtiene la noticia con el id indicado
     * @return array
     */
    public function getOne()
    {
        if (isset($_POST['id_noti'])) {
            header('HTTP/1.1 200 OK');
            $info = array(
                "success" => true,
                "msg" => "Registro obtenido correctamente",
                "data" => $this->modelo->getNoticia($_POST['id_noti'])
            );
        } else {
            header('HTTP/1.1 400 Bad Request');
            $info = array(
                "success" => false,
                "msg" => "El parametro id_noti es obligatorio"
            );
        }
        echo json_encode($info);
    }

    /**
     * Agrega una noticia con los datos indicados
     * @return json
     */
    public function add()
    {
        if (isset($_POST['titulo']) && isset($_POST['descripcion'])) {
            $this->modelo->addNoticia($_POST['titulo'], $_POST['descripcion']);
            header('HTTP/1.1 200 OK');
            $info = array(
                "success" => true,
                "msg" => "Registro agregado correctamente"
            );
        } else {
            header('HTTP/1.1 400 Bad Request');
            $info = array(
                "success" => false,
                "msg" => "El parametro titulo y contenido son obligatorios"
            );
        }
        echo json_encode($info);
    }

    /**
     * Actualiza la noticia con los datos que se le pasan como parametro
     * @return json
     */
    public function edit()
    {
        if (isset($_POST['id_noti']) && isset($_POST['titulo']) && isset($_POST['descripcion'])) {
            $this->modelo->editNoticia($_POST['id_noti'], $_POST['titulo'], $_POST['descripcion']);
            header('HTTP/1.1 200 OK');
            $info = array(
                "success" => true,
                "msg" => "Registro editado correctamente"
            );
        } else {
            header('HTTP/1.1 400 Bad Request');
            $info = array(
                "success" => false,
                "msg" => "El parametro id_noti, titulo y contenido son obligatorios"
            );
        }
        echo json_encode($info);
    }

    /**
     * @param $id_noti
     */

    public function delete()
    {
        if (isset($_POST['id_noti'])) {
            $siExisteRegistro = $this->modelo->getNoticia($_POST['id_noti']);
            if (count($siExisteRegistro) > 0) {
                $this->modelo->deleteNoticia($_POST['id_noti']);
                header('HTTP/1.1 200 OK');
                $info = array(
                    "success" => true,
                    "msg" => "Registro eliminado correctamente"
                );
            }else{
                header('HTTP/1.1 400 Bad Request');
                $info = array(
                    "success" => false,
                    "msg" => "El registro que desea eliminar no existe"
                );
            }
        } else {
            header('HTTP/1.1 400 Bad Request');
            $info = array(
                "success" => false,
                "msg" => "El parametro id_noti es obligatorio"
            );
        }
        echo json_encode($info);
    }
}
