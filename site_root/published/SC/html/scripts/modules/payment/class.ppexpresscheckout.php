<?php
/**
 * @connect_module_class_name PPExpressCheckout
 * @package DynamicModules
 * @subpackage Payment
 */
if(defined('FILE_PPEXPRESSCHECKOUTV2')){
	return false;
}else{
	define('FILE_PPEXPRESSCHECKOUTV2', 1);
}
//commented out use kernel PEAR
//set_include_path('.'.PATH_DELIMITER.'..'.PATH_DELIMITER.DIR_MODULES.'/payment/pppro/pear');
error_reporting(E_ALL & ~E_NOTICE);

require_once 'PayPal.php';
require_once 'Multi.php';

class PPExpressCheckout extends PaymentModule
{

	var $type = PAYMTD_TYPE_REPLACE;
	var $language = 'eng';
	var $default_logo = 'http://www.webasyst.net/collections/design/payment-icons/paypal.gif';

	var $CertsPath = '';

	function _initVars()
	{

		parent::_initVars();
		$this->SingleInstall = true;
		$this->CertsPath = DIR_TEMP;
		$this->title 		= PPEXPRESSCHECKOUT_TTL;
		$this->description 	= PPEXPRESSCHECKOUT_DSCR;
		$this->sort_order 	= 1;

		$this->Settings = array(
			'CONF_PPEXPRESSCHECKOUT_ENABLED',
			'CONF_PPEXPRESSCHECKOUT_USERNAME',
			'CONF_PPEXPRESSCHECKOUT_PASSWORD',
			'CONF_PPEXPRESSCHECKOUT_CERTPATH',
			'CONF_PPEXPRESSCHECKOUT_MODE',
			'CONF_PPEXPRESSCHECKOUT_PAYMENTACTION',
			'CONF_PPEXPRESSCHECKOUT_TRANSCURRENCY',
			'CONF_PPEXPRESSCHECKOUT_ORDERSTATUS',
		);
	}

	function _initSettingFields()
	{

		$this->SettingsFields['CONF_PPEXPRESSCHECKOUT_ENABLED'] = array(
			'settings_value' 		=> '1', 
			'settings_title' 			=> PPEXPRESSCHECKOUT_CFG_ENABLED_TTL, 
			'settings_description' 	=> PPEXPRESSCHECKOUT_CFG_ENABLED_DSCR, 
			'settings_html_function' 	=> 'setting_CHECK_BOX(', 
			'sort_order' 			=> 1,
		);
		$this->SettingsFields['CONF_PPEXPRESSCHECKOUT_USERNAME'] = array(
			'settings_value' 		=> '', 
			'settings_title' 			=> PPEXPRESSCHECKOUT_CFG_USERNAME_TTL, 
			'settings_description' 	=> PPEXPRESSCHECKOUT_CFG_USERNAME_DSCR, 
			'settings_html_function' 	=> 'setting_TEXT_BOX(0,', 
			'sort_order' 			=> 1,
		);
		$this->SettingsFields['CONF_PPEXPRESSCHECKOUT_PASSWORD'] = array(
			'settings_value' 		=> '', 
			'settings_title' 			=> PPEXPRESSCHECKOUT_CFG_PASSWORD_TTL, 
			'settings_description' 	=> PPEXPRESSCHECKOUT_CFG_PASSWORD_DSCR, 
			'settings_html_function' 	=> 'setting_TEXT_BOX(0,', 
			'sort_order' 			=> 1,
		);
		$this->SettingsFields['CONF_PPEXPRESSCHECKOUT_CERTPATH'] = array(
			'settings_value' 		=> '', 
			'settings_title' 			=> PPEXPRESSCHECKOUT_CFG_CERTPATH_TTL, 
			'settings_description' 	=> PPEXPRESSCHECKOUT_CFG_CERTPATH_DSCR, 
			'settings_html_function' 	=> 'setting_SINGLE_FILE(DIR_TEMP,',
			'sort_order' 			=> 1,
		);
		$this->SettingsFields['CONF_PPEXPRESSCHECKOUT_MODE'] = array(
			'settings_value' 		=> 'Sandbox', 
			'settings_title' 			=> PPEXPRESSCHECKOUT_CFG_MODE_TTL, 
			'settings_description' 	=> PPEXPRESSCHECKOUT_CFG_MODE_DSCR, 
			'settings_html_function' 	=> 'setting_RADIOGROUP(PPEXPRESSCHECKOUT_TXT_TEST.":Sandbox,".PPEXPRESSCHECKOUT_TXT_LIVE.":Live",', 
			'sort_order' 			=> 1,
		);
		$this->SettingsFields['CONF_PPEXPRESSCHECKOUT_PAYMENTACTION'] = array(
			'settings_value' 		=> 'Sale', 
			'settings_title' 			=> PPEXPRESSCHECKOUT_CFG_PAYMENTACTION_TTL, 
			'settings_description' 	=> PPEXPRESSCHECKOUT_CFG_PAYMENTACTION_DSCR, 
			'settings_html_function' 	=> 'setting_RADIOGROUP("Sale:Sale,Order:Order,Authorization:Authorization",', 
			'sort_order' 			=> 1,
		);
		$this->SettingsFields['CONF_PPEXPRESSCHECKOUT_TRANSCURRENCY'] = array(
			'settings_value' 		=> '', 
			'settings_title' 			=> PPEXPRESSCHECKOUT_CFG_TRANSCURRENCY_TTL, 
			'settings_description' 	=> PPEXPRESSCHECKOUT_CFG_TRANSCURRENCY_DSCR, 
			'settings_html_function' 	=> 'PPExpressCheckout::_settingCurrencySelect(', 
			'sort_order' 			=> 1,
		);
		$this->SettingsFields['CONF_PPEXPRESSCHECKOUT_ORDERSTATUS'] = array(
			'settings_value' 		=> '-1', 
			'settings_title' 			=> PPEXPRESSCHECKOUT_CFG_ORDERSTATUS_TTL, 
			'settings_description' 	=> PPEXPRESSCHECKOUT_CFG_ORDERSTATUS_DSCR, 
			'settings_html_function' 	=> 'setting_SELECT_BOX(PaymentModule::_getStatuses(),', 
			'sort_order' 			=> 1,
		);
	}


	/**
	 *
	 * @return CallerServices
	 */
	function &_getCaller()
	{

		require_once 'PayPal/Profile/Handler/Array.php';
		require_once 'PayPal/Profile/API.php';

		$handler =& ProfileHandler_Array::getInstance(array(
			'username' => $this->_getSettingValue('CONF_PPEXPRESSCHECKOUT_USERNAME'),
			'certificateFile' => realpath($this->CertsPath.'/'.$this->_getSettingValue('CONF_PPEXPRESSCHECKOUT_CERTPATH')),
			'subject' => null,
			'environment' => (isset($_COOKIE['ppe']) && ($_COOKIE['ppe'] == 'vld') )?'Sandbox':$this->_getSettingValue('CONF_PPEXPRESSCHECKOUT_MODE')));

		$profile =& APIProfile::getInstance($this->_getSettingValue('CONF_PPEXPRESSCHECKOUT_USERNAME'), $handler);
		$profile->setAPIPassword($this->_getSettingValue('CONF_PPEXPRESSCHECKOUT_PASSWORD'));

		$caller =& PayPal::getCallerServices($profile);

		return $caller;
	}

	/**
	 *
	 * @param $params
	 * @return PEAR_Error
	 */
	function doSetExpressCheckoutRequest($params = array())
	{

		if (!cartCheckMinTotalOrderAmount()) {
			return translate("cart_min_order_amount_not_reached").show_price(CONF_MINIMAL_ORDER_AMOUNT);
		}
		$caller = &$this->_getCaller();
		if(PayPal::isError($caller)){

			return PPEXPRESSCHECKOUT_TXT_ERRORCALLER.$caller->getMessage();
		}


		$currency = currGetCurrencyByID($this->_getSettingValue('CONF_PPEXPRESSCHECKOUT_TRANSCURRENCY'));
		$currency_iso3 = $currency['currency_iso_3'];

		$ShoppingCart = new ShoppingCart();

		$ShoppingCart->loadCurrentCart();

		$SetExpressCheckoutRequestDetails =& PayPal::getType('SetExpressCheckoutRequestDetailsType');
		/* @var $SetExpressCheckoutRequestDetails SetExpressCheckoutRequestDetailsType*/

		//deprecated since version 53.0 Use InvoiceID in PaymentDetailsType instead.
		//$pdt->setInvoiceID($order['orderID']);

		$ParsedURL = parse_url(CONF_FULL_SHOP_URL);
		$baseURL = $ParsedURL['scheme'].'://'.$ParsedURL['host'].(isset($ParsedURL['port'])&&$ParsedURL['port']?':'.$ParsedURL['port']:'');

		$SuccessURL = set_query('?token=&PayerID=&ukey=ppexpresscheckout_orderconfirmation');
		if(isset($params['success_url_query'])){
			$SuccessURL = set_query($params['success_url_query'], $SuccessURL);
		}
		if(!preg_match('/^https?:\/\//i',$SuccessURL)){
			$SuccessURL = $baseURL.$SuccessURL;
		}

		$SetExpressCheckoutRequestDetails->setReturnURL($SuccessURL);

		$CancelURL = set_query('');
		if(!preg_match('/^https?:\/\//i',$CancelURL)){
			$CancelURL = $baseURL.$CancelURL;
		}
		$SetExpressCheckoutRequestDetails->setCancelURL($CancelURL);

		$SetExpressCheckoutRequestDetails->setPaymentAction($this->_getSettingValue('CONF_PPEXPRESSCHECKOUT_PAYMENTACTION'));

		//This field is deprecated since version 53.0. Use ShipToAddress in PaymentDetailsType instead.
		if(isset($params['AddressType'])){
			$SetExpressCheckoutRequestDetails->setAddress($params['AddressType']);
		}

		if(isset($params['AddressOverride'])){
			$SetExpressCheckoutRequestDetails->setAddressOverride($params['AddressOverride']);
		}
		if(isset($params['NoShipping'])){
			$SetExpressCheckoutRequestDetails->setNoShipping($params['NoShipping']);
		}

		/**
		 * @var PaymentDetailsType
		 */
		$pdt =& PayPal::getType('PaymentDetailsType');
		//$pdt = new PaymentDetailsType;
		if(isset($params['AddressType'])){
			$pdt->setShipToAddress($params['AddressType']);
		}

		$cart_amount_uc = $ShoppingCart->calculateTotalPrice();
		$order_amount =	 RoundFloatValue($this->_convertCurrency($cart_amount_uc, 0, $currency_iso3));
		//Apply discount

		$discount = dscCalculateDiscount( $cart_amount_uc, isset($_SESSION["log"])?$_SESSION["log"]:"" );
		$discount_value = RoundFloatValue($this->_convertCurrency($discount['discount_standart_unit'], 0, $currency_iso3));;
		$order_amount -= $discount_value;

		$items = $ShoppingCart->emulate_cartGetCartContent();
		if(false) {
			$description = '';
			foreach($items['cart_content'] as $item){
				$description .= ($description?' ':'').$item['name'].'x'.$item['quantity'];
			}
			$description = translit($description);
			if(strlen($description)>127){
				$description = substr($description,124).'...';
			}
			$pdt->setOrderDescription($description);
		}else {
			$trans_currency = currGetCurrencyByID($this->_getSettingValue('CONF_PPEXPRESSCHECKOUT_TRANSCURRENCY'));

			$item_total = 0;
			$pdits = array();
			$items_count =0;
			foreach($items['cart_content'] as $item){
				$pdit = & PayPal::getType('PaymentDetailsItemType');
				$pdit = new PaymentDetailsItemType();
				$item_amount = RoundFloatValue(virtualModule::_convertCurrency($item['costUC'], 0,$trans_currency['currency_iso_3']));
				$amount =& PayPal::getType('BasicAmountType');
				$amount->setval($item_amount);
				$amount->setattr('currencyID', $trans_currency['currency_iso_3']);
				$pdit->setAmount($amount);
				$pdit->setName($item['name'],'utf-8');
				$pdit->setQuantity($item['quantity']);

				$item_total += $item_amount*$item['quantity'];
				$pdits[] = $pdit;
				unset($pdit);
				unset($amount);
			}
			if($discount_value>0) {
				$pdit = & PayPal::getType('PaymentDetailsItemType');
				$pdit = new PaymentDetailsItemType();
				$amount =& PayPal::getType('BasicAmountType');
				$amount->setval(-$discount_value);
				$amount->setattr('currencyID', $trans_currency['currency_iso_3']);
				$pdit->setAmount($amount);
				$pdit->setName(translate('str_discount'),'utf-8');
				$pdit->setQuantity(1);
					
				$item_total -= $discount_value;
				$pdits[] = $pdit;
				unset($pdit);
				unset($amount);
			}

			$m = new MultiOccurs($pdt, 'PaymentDetailsItem');
			$m = &$m;
			$m->setChildren($pdits);
			$pdt->setPaymentDetailsItem($m);

			/* Item total */
			$amount =& PayPal::getType('BasicAmountType');
			//$item_total = RoundFloatValue(virtualModule::_convertCurrency($discount_info['rest_standart_unit'],0,$trans_currency['currency_iso_3']));
			$amount->setval($item_total);
			$amount->setattr('currencyID', $trans_currency['currency_iso_3']);
			$pdt->setItemTotal($amount);
			unset($amount);

			$pdt->setOrderDescription(CONF_SHOP_NAME,'utf-8');
		}

		$BasicAmount =& PayPal::getType('BasicAmountType');
		if(isset($item_total) && $item_total != $order_amount && (abs($item_total-$order_amount)<0.1)){
			$order_amount = $item_total;
		}
		$BasicAmount->setval($order_amount);
		$BasicAmount->setattr('currencyID', $currency_iso3);

		$SetExpressCheckoutRequestDetails->setOrderTotal($BasicAmount);

		$SetExpressCheckoutRequestDetails->setPaymentDetails($pdt);


		$ec =& PayPal::getType('SetExpressCheckoutRequestType');
		$ec->setSetExpressCheckoutRequestDetails($SetExpressCheckoutRequestDetails);

		$options = getProxySettings();
		if(isset($options['host'])&&$options['host']){
			$caller->__proxy_params = array('proxy_host'=>isset($options['host'])?$options['host']:null,
					'proxy_port'=>isset($options['port'])?$options['port']:null,
					'proxy_user'=>isset($options['user'])?$options['user']:null,
					'proxy_pass'=>isset($options['password'])?$options['password']:null,);
		}

		$response = $caller->SetExpressCheckout($ec);


		if(PayPal::isError($response)){
			return $response;
		}

		$error = $this->checkResultError($response);
		if(PayPal::isError($error)){
			return $error;
		}
		Redirect($this->getExpressCheckoutURL($response->Token, '', isset($params['useraction'])?$params['useraction']:null));
	}

	/**
	 * @param string $token
	 * @return GetExpressCheckoutDetailsResponseType
	 */
	function &doExpressCheckoutDetailsRequest($token)
	{

		$caller = &$this->_getCaller();
		if(PayPal::isError($caller)){

			return $caller;
		}


		$ec =& PayPal::getType('GetExpressCheckoutDetailsRequestType');
		/* @var $ec GetExpressCheckoutDetailsRequestType */
		$ec->setToken($token);
		$response = $caller->GetExpressCheckoutDetails($ec);

		/* @var $response GetExpressCheckoutDetailsResponseType */
		$error = $this->checkResultError($response);

		if(PayPal::isError($error)){
			return $error;
		}
		return $response;
	}

	/**
	 *
	 * @param string $token
	 * @param string $payer_id
	 * @param PaymentDetailsType $PaymentDetails
	 * @return DoExpressCheckoutPaymentResponseType | PEAR_Error
	 */
	function &doDoExpressCheckoutPaymentRequest($token, $payer_id, $PaymentDetails)
	{

		$caller = &$this->_getCaller();
		if(PayPal::isError($caller)){

			return $caller;
		}
		$caller->setOpt('curl', CURLOPT_CONNECTTIMEOUT, 20);
		$caller->setOpt('curl', CURLOPT_TIMEOUT, 20);

		$details =& PayPal::getType('DoExpressCheckoutPaymentRequestDetailsType');
		/* @var $ec DoExpressCheckoutPaymentRequestDetailsType */
		$details->setToken($token);
		$details->setPayerID($payer_id);
		$details->setPaymentAction($this->_getSettingValue('CONF_PPEXPRESSCHECKOUT_PAYMENTACTION'));

		$details->setPaymentDetails($PaymentDetails);

		$ecprt =& PayPal::getType('DoExpressCheckoutPaymentRequestType');
		$ecprt->setDoExpressCheckoutPaymentRequestDetails($details);

		$response = $caller->DoExpressCheckoutPayment($ecprt);
		/* @var $response doexpresscheckoutpaymentresponsetype */
		$error = $this->checkResultError($response);
		if(PayPal::isError($error)){
			return $error;
		}
		return $response;
	}

	function _getCheckoutButtonURL()
	{

		return 'https://www.paypal.com/en_US/i/btn/btn_xpressCheckoutsm.gif';
	}

	function getCheckoutButton()
	{

		$html = '<input type="image" name="ppe_checkout" src="'.$this->_getCheckoutButtonURL().'" style="margin-right:7px;" />';
		//		$Register = &Register::getInstance();
		//		/*@var $Register Register*/
		//		$currentDivision = &$Register->get(VAR_CURRENTDIVISION);
		//		/*@var $currentDivision Division*/
		//		if($currentDivision->getUnicKey() != 'cart'){
		//			$html = '<form action="'.xHtmlSetQuery('ppexpresscheckout2=1').'" method="post">'.$html.'</form>';
		//		}
		return $html;
	}

	function install()
	{
		parent::install();
		$AbstractMod = &ModulesFabric::getModuleObjByKey('Abstract');
		/* @var $AbstractMod Abstract */
		$division_ukeys = array('cart','cart_popup');
		$interface = $AbstractMod->getConfigID().'_ppexpresscheckout_button';
		foreach ($division_ukeys as $division_ukey){

			$CDivision = &DivisionModule::getDivisionByUnicKey($division_ukey);
			if($CDivision->getID()){

				$CDivision->addInterface($interface);
			}
		}

		$PPECheckoutOrderConfirmationDivision = new Division();
		$PPECheckoutOrderConfirmationDivision->setName('PP Express Checkout - order confirmation');
		$PPECheckoutOrderConfirmationDivision->setUnicKey('ppexpresscheckout_orderconfirmation');
		$PPECheckoutOrderConfirmationDivision->setParentID(DivisionModule::getDivisionIDByUnicKey('TitlePage'));
		$PPECheckoutOrderConfirmationDivision->save();

		$PPECheckoutOrderConfirmationDivision->addInterface($AbstractMod->getConfigID().'_ppexpresscheckout_orderconfirmation');

		$PPECOrderSuccessDivision = new Division();
		$PPECOrderSuccessDivision->setName('PP Express Checkout - order success');
		$PPECOrderSuccessDivision->setUnicKey('ppec_order_success');
		$PPECOrderSuccessDivision->setParentID(DivisionModule::getDivisionIDByUnicKey('TitlePage'));
		$PPECOrderSuccessDivision->save();

		$PPECOrderSuccessDivision->addInterface($AbstractMod->getConfigID().'_ppec_order_success');
	}

	function uninstall($_ConfigID = 0)
	{

		parent::uninstall($_ConfigID);
		$AbstractMod = &ModulesFabric::getModuleObjByKey('Abstract');
		/* @var $AbstractMod Abstract */
		$division_ukeys = array('cart','cart_popup');
		$interface = $AbstractMod->getConfigID().'_ppexpresscheckout_button';
		foreach ($division_ukeys as $division_ukey){

			$CDivision = &DivisionModule::getDivisionByUnicKey($division_ukey);
			if($CDivision->getID()){

				$CDivision->deleteInterface($interface);
			}
		}
		$PPECheckoutOrderConfirmationDivision = &DivisionModule::getDivisionByUnicKey('ppexpresscheckout_orderconfirmation');

		$PPECheckoutOrderConfirmationDivision->deleteInterface($AbstractMod->getConfigID().'_ppexpresscheckout_orderconfirmation');
		$PPECheckoutOrderConfirmationDivision->delete();

		$PPECOrderSuccessDivision = &DivisionModule::getDivisionByUnicKey('ppec_order_success');

		$PPECOrderSuccessDivision->deleteInterface($AbstractMod->getConfigID().'_ppec_order_success');
		$PPECOrderSuccessDivision->delete();
	}

	/**
	 * @return PPExpressCheckout
	 */
	function &getModuleInstance()
	{

		list($PPExpressCheckoutInfo) = modGetModuleConfigs('ppexpresscheckout');
		$PPExpressCheckout = PaymentModule::getInstance($PPExpressCheckoutInfo['ConfigID']);
		return $PPExpressCheckout;
	}

	/**
	 * @param mixed $response
	 * @return PEAR_Error | null
	 */
	function checkResultError($response)
	{

		if($response->Ack != 'Success'){

			$ErrorMessage = ' ';
			if(is_array($response->Errors)){
					
				foreach($response->Errors as $_Error){

					$ErrorMessage .= $_Error->ErrorCode.'- '.$_Error->ShortMessage.' ( '.$_Error->LongMessage.' )';
					break;
				}
			}elseif(isset($response->Errors)){
					
				$ErrorMessage .= $response->Errors->ErrorCode.'- '.$response->Errors->ShortMessage.' ( '.$response->Errors->LongMessage.' )';
			}else{
				$ErrorMessage = ' '.$response->message;
			}

			return PayPal::raiseError($ErrorMessage);
		}else{
			return null;
		}
	}

	/**
	 * @param string $token
	 * @param string $payer_id
	 * @return string
	 */
	function getExpressCheckoutURL($token, $payer_id = '', $useraction = 'continue')
	{

		return 'https://www.'.($this->_getSettingValue('CONF_PPEXPRESSCHECKOUT_MODE')=='Live'?'':'sandbox.').'paypal.com/cgi-bin/webscr?cmd=_express-checkout&token='.$token.'&useraction='.$useraction;
	}

	function _settingCurrencySelect($setting_id)
	{

		return setting_CURRENCY_SELECT(array(array('title'=>PPECHECKOUT_TXT_CDCURRENCY, 'value'=>0,)), $setting_id);
	}

	function _getSettingValue($setting_name)
	{

		$setting_value = parent::_getSettingValue($setting_name);

		if($setting_name == 'CONF_PPEXPRESSCHECKOUT_TRANSCURRENCY' && !$setting_value){

			$setting_value = currGetCurrentCurrencyUnitID();
		}
			
		return $setting_value;
	}
}
?>