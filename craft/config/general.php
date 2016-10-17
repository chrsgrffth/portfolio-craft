<?php

/**
 * General Configuration
 *
 * All of your system's general configuration settings go in here.
 * You can see a list of the default settings in craft/app/etc/config/defaults/general.php
 */

return array(

  '*' => array(
    'omitScriptNameInUrls' => true,
  ),

  '.dev' => array(
    'siteUrl' => 'http://craft.chrisgriffith.dev',
    'devMode' => true,
  ),

  '.co' => array(
    'siteUrl' => 'http://chrisgriffith.co',
    'devMode' => false,
  ),

);