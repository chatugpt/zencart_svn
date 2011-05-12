<?php 
if (!defined('IS_ADMIN_FLAG')) {
  die('Illegal Access');
}
  $rs = $db->Execute('SELECT configuration_id,configuration_key FROM ' . TABLE_CONFIGURATION . ' WHERE configuration_key="HEADER_ALT_TEXT" LIMIT 1');
  $cid = $rs->recordCount() ? $rs->fields['configuration_id'] : '';
  $za_contents[] = array('text' => BOX_SETLOGO, 'link' => zen_href_link(FILENAME_SETLOGO, '', 'NONSSL'));
  $za_contents[] = array('text' => BOX_SETLOGO_INFO, 'link' => zen_href_link(FILENAME_SETLOGO_INFO, 'gID=1&cID='.$cid, 'NONSSL'));
?>