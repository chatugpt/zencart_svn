<?php
/**
 * banner_box sidebox - used to display "square" banners in sideboxes
 *
 * @package templateSystem
 * @copyright Copyright 2003-2005 Zen Cart Development Team
 * @copyright Portions Copyright 2003 osCommerce
 * @license http://www.zen-cart.com/license/2_0.txt GNU Public License V2.0
 * @version $Id: banner_box.php 3133 2006-03-07 23:39:02Z ajeh $
 */

// test if box should display
  $show_banner_box = true;

  if ($show_banner_box == true) {
    require($template->get_template_dir('tpl_online_help.php',DIR_WS_TEMPLATE, $current_page_base,'sideboxes'). '/tpl_online_help.php');


      $title =  BOX_HEADING_ONLINE_HELP;
      $title_link = false;
      require($template->get_template_dir($column_box_default, DIR_WS_TEMPLATE, $current_page_base,'common') . '/' . $column_box_default);

  }
?>