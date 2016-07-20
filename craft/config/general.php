<?php

/**
 * General Configuration
 *
 * All of your system's general configuration settings go in here.
 * You can see a list of the default settings in craft/app/etc/config/defaults/general.php
 */

return array(

  '.dev' => array(
    'siteUrl' => 'http://chrisgriffith.dev'
  ),

  'preview.chrisgriffith.co' => array(
    'siteUrl' => 'http://preview.chrisgriffith.dev'
  ),

  'chrisgriffith.co' => array(
    'siteUrl' => 'http://chrisgriffith.co',

    # Production Database.
    'server' => '159.203.200.98',
    'database' => 'chrisg-production',
    'user' => 'chrisg',
    'password' => 'chr15g',
  ),

);
