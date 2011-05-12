<?php
require('includes/application_top.php');
$action = (isset($_GET['action']) ? $_GET['action'] : '');
if (zen_not_null($action)) {
	if ($logo_image = new upload('logoimg')) {
		$logo_image->set_destination(DIR_FS_CATALOG_TEMPLATES.$template_dir.'/images');
		$logo_image->parse();
		if(in_array(substr(strtolower($logo_image->filename),-3,3),array('gif','jpg'))){
			$logo_image->set_filename('logo.gif');
			if ($logo_image->save()) {
				if(copy(DIR_FS_CATALOG_TEMPLATES.$template_dir.'/images/logo.gif',DIR_FS_ADMIN.'images/logo.gif')){
					zen_redirect(zen_href_link(FILENAME_SETLOGO));
				}
			}
		}else {
			$messageStack->add(MESSAGE_SETLOGO_ERROR,'error');
		}
	}
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=<?php echo CHARSET; ?>" />
<title><?php echo TITLE; ?></title>
<link rel="stylesheet" type="text/css" href="includes/stylesheet.css">
    <link rel="stylesheet" type="text/css" href="includes/cssjsmenuhover.css" media="all" id="hoverJS">
<script language="javascript" src="includes/menu.js"></script>
    <script language="javascript" src="includes/general.js"></script>
    <script type="text/javascript">
    <!--
    function init()
    {
      cssjsmenu('navbar');
      if (document.getElementById)
      {
        var kill = document.getElementById('hoverJS');
        kill.disabled = true;
      }
    if (typeof _editor_url == "string") HTMLArea.replaceAll();
    }
    // -->
    </script>
</head>

<body onLoad="init()">
<?php require(DIR_WS_INCLUDES . 'header.php'); ?>

<br class="clearBoth" />
<?php echo '<h1>' . BOX_SETLOGO . '</h1>';?>
<br class="clearBoth" />
<?php echo zen_draw_form('setlogo', FILENAME_SETLOGO, 'action=upload', 'post', 'enctype="multipart/form-data"');?>
<table border="0" width="99%" cellspacing="0" cellpadding="5">
	<tr class="dataTableHeadingRow">
		<td class="dataTableHeadingContent" align="center" style="width:250px;"><?php echo TABLE_HEADING_LOGO_IMG; ?></td>
		<td class="dataTableHeadingContent" align="center"><?php echo TABLE_HEADING_UPLOAD; ?></td>
	</tr>
	<tr>
		<td class="dataTableHeadingContent" align="center" ><img src="<?php echo DIR_WS_CATALOG_TEMPLATE.$template_dir.'/images/logo.gif'; ?>"> </td>
		<td class="dataTableHeadingContent" align="center" ><?php echo zen_draw_file_field('logoimg'); ?>
		<?php echo zen_image_submit('button_save.gif', IMAGE_SAVE).' '.TABLE_HEADING_MESSAGE; ?>
		</td>
	</tr>

</table>
</form>
<?php require(DIR_WS_INCLUDES . 'footer.php'); ?>
</body>
</html>
<?php require(DIR_WS_INCLUDES . 'application_bottom.php'); ?>