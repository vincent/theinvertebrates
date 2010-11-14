<?php

if (!defined('_CAN_LOAD_FILES_'))
	exit;

class BlockCurrenciesInColumn extends Module
{
	function __construct()
	{
		$this->name = 'blockcurrenciesincolumn';
		$this->tab = 'Blocks';
		$this->version = 0.1;

		parent::__construct();

		$this->displayName = $this->l('Currency block (column)');
		$this->description = $this->l('Adds a block for selecting a currency');
	}

	function install()
	{
		if (!parent::install())
			return false;
		if (!$this->registerHook('rightColumn'))
			return false;
		return true;
	}

	/**
	* Returns module content for header
	*
	* @param array $params Parameters
	* @return string Content
	*/
	function hookRightColumn($params)
	{
		global $smarty;
		$currencies = Currency::getCurrencies();
		if (!sizeof($currencies))
			return '';
		$smarty->assign('currencies', $currencies);
		return $this->display(__FILE__, 'blockcurrenciesincolumn.tpl');
	}

}

?>
