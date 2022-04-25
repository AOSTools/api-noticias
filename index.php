<?php
header('Content-Type: text/json');

require_once 'Helper/Helper.php';
require_once 'App/Db.class.php';
require_once 'App/Controller.php';
require_once 'Controller/Errores.php';
require_once '';

$url = $_GET['url'] ?? 'home/home';
if ($url == null) {
    new Errores("La url no es valida");
    exit(0);
}
$url = rtrim($url, '/');
$url = explode('/', $url);
if (count($url) < 2) {
    new Errores("La url no es valida");
    exit(0);
}

$fileController =  "Controller/" . ucfirst($url[0]) . ".php";
if (file_exists($fileController)) {
    require_once $fileController;
    $controller = new $url[0]($url[1], $url[2] ?? '');
    
} else {
    new Errores("La url no es valida");
    exit(0);
}
