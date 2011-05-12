<?php
//
// +----------------------------------------------------------------------+
// |zen-cart Open Source E-commerce                                       |
// +----------------------------------------------------------------------+
// | Copyright (c) 2003 The zen-cart developers                           |
// |                                                                      |   
// | http://www.zen-cart.com/index.php                                    |   
// |                                                                      |   
// | Portions Copyright (c) 2003 osCommerce                               |
// +----------------------------------------------------------------------+
// | This source file is subject to version 2.0 of the GPL license,       |
// | that is bundled with this package in the file LICENSE, and is        |
// | available through the world-wide-web at the following url:           |
// | http://www.zen-cart.com/license/2_0.txt.                             |
// | If you did not receive a copy of the zen-cart license and are unable |
// | to obtain it through the world-wide-web, please send a note to       |
// | license@zen-cart.com so we can mail you a copy immediately.          |
// +----------------------------------------------------------------------+
// $Id: wire.php v1.1 2008-03-22 Jack $
//
  define('MODULE_PAYMENT_WIRE_TEXT_CONFIG_1_1','Enable Wire Transfer Payment Module');
  define('MODULE_PAYMENT_WIRE_TEXT_CONFIG_1_2','Do you want to accept wire transfer payment?');
  define('MODULE_PAYMENT_WIRE_TEXT_CONFIG_2_1','Account Name:');
  define('MODULE_PAYMENT_WIRE_TEXT_CONFIG_2_2','Receiver Account Name');
  define('MODULE_PAYMENT_WIRE_TEXT_CONFIG_3_1','Account Number:');
  define('MODULE_PAYMENT_WIRE_TEXT_CONFIG_3_2','Receiver Account Number');
  define('MODULE_PAYMENT_WIRE_TEXT_CONFIG_4_1','Receiver Telephone:');
  define('MODULE_PAYMENT_WIRE_TEXT_CONFIG_4_2','Receiver Telephone');
  define('MODULE_PAYMENT_WIRE_TEXT_CONFIG_5_1','Bank Name:');
  define('MODULE_PAYMENT_WIRE_TEXT_CONFIG_5_2','Bank Name');
  define('MODULE_PAYMENT_WIRE_TEXT_CONFIG_6_1','Bank Address:');
  define('MODULE_PAYMENT_WIRE_TEXT_CONFIG_6_2','Bank Address');
  define('MODULE_PAYMENT_WIRE_TEXT_CONFIG_7_1','Swift Code:');
  define('MODULE_PAYMENT_WIRE_TEXT_CONFIG_7_2','Swift Code');
  define('MODULE_PAYMENT_WIRE_TEXT_CONFIG_8_1','Sort order of display.');
  define('MODULE_PAYMENT_WIRE_TEXT_CONFIG_8_2','Sort order of display. Lowest is displayed first.'); 
  define('MODULE_PAYMENT_WIRE_TEXT_CONFIG_9_1','Set Order Status');
  define('MODULE_PAYMENT_WIRE_TEXT_CONFIG_9_2','Set the status of orders made with this payment module to this value');
  
  define('MODULE_PAYMENT_WIRE_TEXT_TITLE', 'Wire Transfer Payment');
  define('MODULE_PAYMENT_WIRE_TEXT_DESCRIPTION', 'Make Payable To:<br><br>' .  '<b>'. MODULE_PAYMENT_WIRE_TEXT_CONFIG_2_1 . '</b>' . MODULE_PAYMENT_WIRE_NAME . '<br>' .  '<b>'.MODULE_PAYMENT_WIRE_TEXT_CONFIG_3_1 . '</b>' . MODULE_PAYMENT_WIRE_ACCOUNT . '<br>' .  '<b>'.MODULE_PAYMENT_WIRE_TEXT_CONFIG_4_1 . '</b>' . MODULE_PAYMENT_WIRE_TELEPHONE . '<br>'  .   '<b>'. MODULE_PAYMENT_WIRE_TEXT_CONFIG_5_1 . '</b>' . MODULE_PAYMENT_WIRE_BANK_NAME . '<br>'  .   '<b>'. MODULE_PAYMENT_WIRE_TEXT_CONFIG_6_1 . '</b>' . MODULE_PAYMENT_WIRE_BANK_ADDRESS . '<br>'  .  '<b>'. MODULE_PAYMENT_WIRE_TEXT_CONFIG_7_1 . '</b>' . MODULE_PAYMENT_WIRE_SWIFT_CODE . '<br>' . '<font size=2 color="red"><b>After the payment, plese tell us your name, amount, currency and country.</b><br><b>Your order will not be shipped until we receive the payment.</b></font>');
  
  define('MODULE_PAYMENT_WIRE_TEXT_EMAIL_FOOTER', "Make Payable To:\n\n" . MODULE_PAYMENT_WIRE_TEXT_CONFIG_2_1 . MODULE_PAYMENT_WIRE_NAME . " - " . MODULE_PAYMENT_WIRE_TEXT_CONFIG_3_1 . MODULE_PAYMENT_WIRE_ACCOUNT . " - "  . MODULE_PAYMENT_WIRE_TEXT_CONFIG_4_1 . MODULE_PAYMENT_WIRE_TELEPHONE . " - "  . MODULE_PAYMENT_WIRE_TEXT_CONFIG_5_1 . MODULE_PAYMENT_WIRE_BANK_NAME . " - "  . MODULE_PAYMENT_WIRE_TEXT_CONFIG_6_1 . MODULE_PAYMENT_WIRE_BANK_ADDRESS . " - "  . MODULE_PAYMENT_WIRE_TEXT_CONFIG_7_1 . MODULE_PAYMENT_WIRE_SWIFT_CODE . "\n\n" . '<b>After the payment, plese tell us your name, amount, currency and country.</b>' . "\n\n" .  '<b>Your order will not be shipped until we receive the payment.</b>');

?>
