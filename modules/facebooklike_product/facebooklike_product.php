<?php

if (!defined('_CAN_LOAD_FILES_'))
	exit;

class sendToAFriend extends Module
{
 	function __construct()
 	{
 	 	$this->name = 'facebooklike_product';
 	 	$this->version = '1.1';
 	 	$this->tab = 'Products';

		parent::__construct();

		$this->displayName = $this->l('Facebook "Like" button');
		$this->description = $this->l('Show a Facebook "Like" button below product image');
 	}

	function install()
	{
	 	if (!parent::install())
	 		return false;
	 	if (!$this->registerHook('extraLeft'))
	 		return false;
	 	if (!$this->registerHook('header'))
	 		return false;
	 	return true;
	}

	function hookExtraLeft($params)
	{
		global $smarty;
		$smarty->assign('this_path', $this->_path);
		return $this->display(__FILE__, 'product_page.tpl');
	}


	function hookHeader($params)
	{
		global $smarty;
		global $cookie, $link;

		/* Product informations */
		$product = new Product(intval(Tools::getValue('id_product')), false, intval($cookie->id_lang));
		$productLink = $link->getProductLink($product);

		/* Image */
		$images = $product->getImages(intval($cookie->id_lang));
		if ($imagse[0]['cover'])
			$cover = $image['cover'];

		$smarty->assign(array(
			'cover' => $cover,
			'product' => $product,
			'productLink' => $productLink,
			'this_path' => $this->_path
		));
		return $this->display(__FILE__, 'header.tpl');
	}
}
