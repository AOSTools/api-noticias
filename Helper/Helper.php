<?php 


function model($model)
{
  return require_once 'Models/' . ucfirst($model) .'Model'. '.php';
}

function token(){
    $letters = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890';
    $upper = str_split($letters);
    $number = range(0,9);
    shuffle($upper);
    shuffle($number);
    $token = array_merge($upper, $number);
    shuffle($token);
    $token = implode($token);
    $token = sha1($token.time());
    return $token;
    
}
