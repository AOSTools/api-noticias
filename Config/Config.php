<?php

/**
 * 
 * @author yeimar
 */


/**
 * URL
 */

define('URL_PROTOCOL', 'http://');
define('URL_DOMAIN', $_SERVER['HTTP_HOST']);
define('URL_SUB_FOLDER', str_replace(basename($_SERVER['SCRIPT_NAME']), '', $_SERVER['SCRIPT_NAME']));
define('URL', URL_PROTOCOL . URL_DOMAIN . URL_SUB_FOLDER);
