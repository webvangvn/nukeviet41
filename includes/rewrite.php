<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC (contact@vinades.vn)
 * @Copyright (C) 2014 VINADES.,JSC. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate 31/05/2010, 00:36
 */

if( ! defined( 'NV_MAINFILE' ) ) die( 'Stop!!!' );

if( $global_config['rewrite_optional'] )
{
	$rewrite["#(\"" . NV_BASE_SITEURL . ")index.php\?" . NV_LANG_VARIABLE . "=([a-z-]+)\&[amp;]*" . NV_NAME_VARIABLE . "=page\&[amp;]*" . NV_OP_VARIABLE . "=([a-zA-Z0-9-]+)" . $global_config['rewrite_exturl'] . "\"#"] = "\\1\\3" . $global_config['rewrite_exturl'] . "\"";
	if( $global_config['rewrite_op_mod'] != '' )
	{
		$rewrite["#(\"" . NV_BASE_SITEURL . ")index.php\?" . NV_LANG_VARIABLE . "=([a-z-]+)\&[amp;]*" . NV_NAME_VARIABLE . "=" . $global_config['rewrite_op_mod'] . "\&[amp;]*" . NV_OP_VARIABLE . "=tag/([^\"]+)\"#"] = "\\1tag/\\3\"";
		$rewrite["#(\"" . NV_BASE_SITEURL . ")index.php\?" . NV_LANG_VARIABLE . "=([a-z-]+)\&[amp;]*" . NV_NAME_VARIABLE . "=" . $global_config['rewrite_op_mod'] . "\&[amp;]*" . NV_OP_VARIABLE . "=([a-zA-Z0-9-/]+)" . $global_config['rewrite_exturl'] . "\"#"] = "\\1\\3" . $global_config['rewrite_exturl'] . "\"";
		$rewrite["#(\"" . NV_BASE_SITEURL . ")index.php\?" . NV_LANG_VARIABLE . "=([a-z-]+)\&[amp;]*" . NV_NAME_VARIABLE . "=" . $global_config['rewrite_op_mod'] . "\&[amp;]*" . NV_OP_VARIABLE . "=([a-zA-Z0-9-/]+)\"#"] = "\\1\\3" . $global_config['rewrite_endurl'] . "\"";
	}
	$rewrite["#(\"" . NV_BASE_SITEURL . ")index.php\?" . NV_LANG_VARIABLE . "=([a-z-]+)\&[amp;]*" . NV_NAME_VARIABLE . "=([a-zA-Z0-9-]+)\&[amp;]*" . NV_OP_VARIABLE . "=tag/([^\"]+)\"#"] = "\\1\\3/tag/\\4\"";
	$rewrite["#(\"" . NV_BASE_SITEURL . ")index.php\?" . NV_LANG_VARIABLE . "=([a-z-]+)\&[amp;]*" . NV_NAME_VARIABLE . "=([a-zA-Z0-9-]+)\&[amp;]*" . NV_OP_VARIABLE . "=([a-zA-Z0-9-/]+)" . $global_config['rewrite_exturl'] . "\"#"] = "\\1\\3/\\4" . $global_config['rewrite_exturl'] . "\"";
	$rewrite["#(\"" . NV_BASE_SITEURL . ")index.php\?" . NV_LANG_VARIABLE . "=([a-z-]+)\&[amp;]*" . NV_NAME_VARIABLE . "=([a-zA-Z0-9-]+)\&[amp;]*" . NV_OP_VARIABLE . "=([a-zA-Z0-9-/]+)\"#"] = "\\1\\3/\\4" . $global_config['rewrite_endurl'] . "\"";
	$rewrite["#(\"" . NV_BASE_SITEURL . ")index.php\?" . NV_LANG_VARIABLE . "=([a-z-]+)\&[amp;]*" . NV_NAME_VARIABLE . "=([a-zA-Z0-9-/]+)\"#"] = "\\1\\3" . $global_config['rewrite_endurl'] . "\"";
	$rewrite["#(\"" . NV_BASE_SITEURL . ")index.php\?" . NV_LANG_VARIABLE . "=([a-z-]+)\"#"] = "\\1\"";
}
else
{
	$rewrite["#(\"" . NV_BASE_SITEURL . ")index.php\?" . NV_LANG_VARIABLE . "=([a-z-]+)\&[amp;]*" . NV_NAME_VARIABLE . "=([a-zA-Z0-9-]+)\&[amp;]*" . NV_OP_VARIABLE . "=tag/([^\"]+)\"#"] = "\\1\\2/\\3/tag/\\4\"";
	$rewrite["#(\"" . NV_BASE_SITEURL . ")index.php\?" . NV_LANG_VARIABLE . "=([a-z-]+)\&[amp;]*" . NV_NAME_VARIABLE . "=([a-zA-Z0-9-]+)\&[amp;]*" . NV_OP_VARIABLE . "=([a-zA-Z0-9-/]+)" . $global_config['rewrite_exturl'] . "\"#"] = "\\1\\2/\\3/\\4" . $global_config['rewrite_exturl'] . "\"";
	$rewrite["#(\"" . NV_BASE_SITEURL . ")index.php\?" . NV_LANG_VARIABLE . "=([a-z-]+)\&[amp;]*" . NV_NAME_VARIABLE . "=([a-zA-Z0-9-]+)\&[amp;]*" . NV_OP_VARIABLE . "=([a-zA-Z0-9-/]+)\"#"] = "\\1\\2/\\3/\\4" . $global_config['rewrite_endurl'] . "\"";
	$rewrite["#(\"" . NV_BASE_SITEURL . ")index.php\?" . NV_LANG_VARIABLE . "=([a-z-]+)\&[amp;]*" . NV_NAME_VARIABLE . "=([a-zA-Z0-9-/]+)\"#"] = "\\1\\2/\\3" . $global_config['rewrite_endurl'] . "\"";
	$rewrite["#(\"" . NV_BASE_SITEURL . ")index.php\?" . NV_LANG_VARIABLE . "=([a-z-]+)\"#"] = "\\1\\2" . $global_config['rewrite_endurl'] . "\"";
}

?>