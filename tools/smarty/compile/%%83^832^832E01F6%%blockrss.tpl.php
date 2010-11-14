<?php /* Smarty version 2.6.20, created on 2010-11-08 01:03:05
         compiled from /home/vincent/workspace/boutik/modules/blockrss/blockrss.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/home/vincent/workspace/boutik/modules/blockrss/blockrss.tpl', 12, false),)), $this); ?>
<!-- Block RSS module-->
<div id="rss_block_left" class="block">
	<h4><?php echo $this->_tpl_vars['title']; ?>
</h4>
	<div class="block_content">
		<?php if ($this->_tpl_vars['rss_links']): ?>
			<ul>
				<?php $_from = $this->_tpl_vars['rss_links']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['rss_link']):
?>
					<li><a href="<?php echo $this->_tpl_vars['rss_link']['url']; ?>
"><?php echo $this->_tpl_vars['rss_link']['title']; ?>
</a></li>
				<?php endforeach; endif; unset($_from); ?>
			</ul>
		<?php else: ?>
			<?php echo smartyTranslate(array('s' => 'No RSS feed added','mod' => 'blockrss'), $this);?>

		<?php endif; ?>
	</div>
</div>
<!-- /Block RSS module-->