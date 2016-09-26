<?php

/**
 * General Configuration
 *
 * All of your system's general configuration settings go in here.
 * You can see a list of the default settings in craft/app/etc/config/defaults/general.php
 */

return array(

  '.dev' => array(
    'devMode' => true,
    'siteUrl' => 'http://craft.chrisgriffith.dev'
  ),

  // 'herokuapp.com' => array(
  //   'siteUrl' => 'http://preview.chrisgriffith.dev'
  // ),

  '.co' => array(
    'devMode' => false,
    'siteUrl' => 'http://www.chrisgriffith.co',
  ),

);
