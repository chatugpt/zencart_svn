<?php
/**
 * Side Box Template
 *
 * @package templateSystem
 * @copyright Copyright 2003-2005 Zen Cart Development Team
 * @copyright Portions Copyright 2003 osCommerce
 * @license http://www.zen-cart.com/license/2_0.txt GNU Public License V2.0
 * @version $Id: tpl_banner_box.php 2982 2006-02-07 07:56:41Z birdbrain $
 */
  $content = '';
  $content .= '<div id="' . str_replace('_', '-', $box_id . 'Content') . '" class="sideBoxContent centeredContent">';
   if(zen_not_null(ONLINE_HELP_QQ)){$content .=ONLINE_HELP_QQ.'<br/>';}
   if(zen_not_null(ONLINE_HELP_MSN)){$content .=ONLINE_HELP_MSN.'<br/>';}
   if(zen_not_null(ONLINE_HELP_SKYPE)){$content .=ONLINE_HELP_SKYPE.'<br/>';} 
  $content .= '</div>';
  $content .= '';
?>