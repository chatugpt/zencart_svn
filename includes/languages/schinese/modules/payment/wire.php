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
  define('MODULE_PAYMENT_WIRE_TEXT_CONFIG_1_1','打开电汇模块');
  define('MODULE_PAYMENT_WIRE_TEXT_CONFIG_1_2','您要使用银行电汇吗?');
  define('MODULE_PAYMENT_WIRE_TEXT_CONFIG_2_1','收款人姓名:');
  define('MODULE_PAYMENT_WIRE_TEXT_CONFIG_2_2','请输入收款人姓名');
  define('MODULE_PAYMENT_WIRE_TEXT_CONFIG_3_1','银行账号:');
  define('MODULE_PAYMENT_WIRE_TEXT_CONFIG_3_2','例如: 本外币一本通号码');
  define('MODULE_PAYMENT_WIRE_TEXT_CONFIG_4_1','电话号码:');
  define('MODULE_PAYMENT_WIRE_TEXT_CONFIG_4_2','收款人的电话号码');
  define('MODULE_PAYMENT_WIRE_TEXT_CONFIG_5_1','银行名称:');
  define('MODULE_PAYMENT_WIRE_TEXT_CONFIG_5_2','银行名称');
  define('MODULE_PAYMENT_WIRE_TEXT_CONFIG_6_1','银行地址:');
  define('MODULE_PAYMENT_WIRE_TEXT_CONFIG_6_2','请输入银行所在地地址');
  define('MODULE_PAYMENT_WIRE_TEXT_CONFIG_7_1','银行代码:');
  define('MODULE_PAYMENT_WIRE_TEXT_CONFIG_7_2','相关银行唯一的国际代码');
  define('MODULE_PAYMENT_WIRE_TEXT_CONFIG_8_1','显示顺序');
  define('MODULE_PAYMENT_WIRE_TEXT_CONFIG_8_2','显示顺序：小的显示在前。'); 
  define('MODULE_PAYMENT_WIRE_TEXT_CONFIG_9_1','设置订单状态');
  define('MODULE_PAYMENT_WIRE_TEXT_CONFIG_9_2','设置采用西联汇款的订单状态'); 
  
  define('MODULE_PAYMENT_WIRE_TEXT_TITLE', '银行电汇');
  define('MODULE_PAYMENT_WIRE_TEXT_DESCRIPTION', '请付款到:<br><br>' .  '<b>'. MODULE_PAYMENT_WIRE_TEXT_CONFIG_2_1 . '</b>' . MODULE_PAYMENT_WIRE_NAME . '<br>' .  '<b>'.MODULE_PAYMENT_WIRE_TEXT_CONFIG_3_1 . '</b>' . MODULE_PAYMENT_WIRE_ACCOUNT . '<br>' .  '<b>'.MODULE_PAYMENT_WIRE_TEXT_CONFIG_4_1 . '</b>' . MODULE_PAYMENT_WIRE_TELEPHONE . '<br>'  .   '<b>'. MODULE_PAYMENT_WIRE_TEXT_CONFIG_5_1 . '</b>' . MODULE_PAYMENT_WIRE_BANK_NAME . '<br>'  .   '<b>'. MODULE_PAYMENT_WIRE_TEXT_CONFIG_6_1 . '</b>' . MODULE_PAYMENT_WIRE_BANK_ADDRESS . '<br>'  .  '<b>'. MODULE_PAYMENT_WIRE_TEXT_CONFIG_7_1 . '</b>' . MODULE_PAYMENT_WIRE_SWIFT_CODE . '<br>' . '<font size=2 color="red"><b>请您付款之后，告知我们您的姓名、付款金额、付款币种、付款国别</b><br><b>我们收到汇款后，订单才会处理。</b></font>');

  define('MODULE_PAYMENT_WIRE_TEXT_EMAIL_FOOTER', "请付款到:\n\n" . MODULE_PAYMENT_WIRE_TEXT_CONFIG_2_1 . MODULE_PAYMENT_WIRE_NAME . " - " . MODULE_PAYMENT_WIRE_TEXT_CONFIG_3_1 . MODULE_PAYMENT_WIRE_ACCOUNT . " - "  . MODULE_PAYMENT_WIRE_TEXT_CONFIG_4_1 . MODULE_PAYMENT_WIRE_TELEPHONE . " - "  . MODULE_PAYMENT_WIRE_TEXT_CONFIG_5_1 . MODULE_PAYMENT_WIRE_BANK_NAME . " - "  . MODULE_PAYMENT_WIRE_TEXT_CONFIG_6_1 . MODULE_PAYMENT_WIRE_BANK_ADDRESS . " - "  . MODULE_PAYMENT_WIRE_TEXT_CONFIG_7_1 . MODULE_PAYMENT_WIRE_SWIFT_CODE . "\n\n" . 
'<b>请您付款之后，告知我们您的姓名、付款金额、付款币种、付款国别</b>' . "\n\n" .  '<b>我们收到汇款后，订单才会处理。</b>');

?>
