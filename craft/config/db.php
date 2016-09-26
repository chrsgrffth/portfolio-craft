<?php

# Get the environment variables.
$url = getenv('CLEARDB_DATABASE_URL');
$dbparts = parse_url($url);

return array(

  '*' => array (
    'tablePrefix' => 'craft',
  ),

  '.dev' => array (
    'server' => 'localhost',
    'database' => 'chris_griffith',
    'user' => 'root',
    'password' => '',
  ),

  'herokuapp.com' => array (
    'server' => $dbparts['host'],
    'user' => $dbparts['user'],
    'password' => $dbparts['pass'],
    'database' => ltrim($dbparts['path'],'/'),
  ),

);