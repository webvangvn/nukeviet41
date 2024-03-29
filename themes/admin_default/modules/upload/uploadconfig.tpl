<!-- BEGIN: main -->
<script type="text/javascript" src="{NV_BASE_SITEURL}js/jquery/jquery.validate.min.js"></script>
<script type="text/javascript" src="{NV_BASE_SITEURL}js/language/jquery.validator-{NV_LANG_INTERFACE}.js"></script>
<form action="{NV_BASE_ADMINURL}index.php?{NV_LANG_VARIABLE}={NV_LANG_DATA}&{NV_NAME_VARIABLE}={MODULE_NAME}&amp;{NV_OP_VARIABLE}={OP}" method="post" id="frm">
	<table class="tab1">
		<col style="width: 230px"/>
		<col />
		<tfoot>
			<tr>
				<td colspan="2" class="center"><input type="submit" value="{LANG.pubdate}" name="submit"/></td>
			</tr>
		</tfoot>
		<tbody>
			<tr>
				<td><strong>{LANG.nv_max_width_height}</strong></td>
				<td><input class="digits" style="width:40px; text-align: right" type="text" value="{NV_MAX_WIDTH}" name="nv_max_width" maxlength="4"/> x <input class="digits" style="width:40px; text-align: right" type="text" value="{NV_MAX_HEIGHT}" name="nv_max_height" maxlength="4"/><input type="checkbox" style="margin-left:40px;" name="nv_auto_resize" value="1" {NV_AUTO_RESIZE}/>{LANG.nv_auto_resize} </td>
			</tr>
			<tr>
				<td><strong>{LANG.nv_max_size}:</strong></td>
				<td>
				<select name="nv_max_size">
					<!-- BEGIN: size -->
					<option value="{SIZE.key}"{SIZE.selected}>{SIZE.title}</option>
					<!-- END: size -->
				</select> ({LANG.sys_max_size}: {SYS_MAX_SIZE}) </td>
			</tr>
			<tr>
				<td><strong>{LANG.upload_checking_mode}:</strong></td>
				<td>
				<select name="upload_checking_mode">
					<!-- BEGIN: upload_checking_mode -->
					<option value="{UPLOAD_CHECKING_MODE.key}"{UPLOAD_CHECKING_MODE.selected}>{UPLOAD_CHECKING_MODE.title}</option>
					<!-- END: upload_checking_mode -->
				</select> {UPLOAD_CHECKING_NOTE} </td>
			</tr>
			<tr>
				<td><strong>{LANG.uploadconfig_types}</strong></td>
				<td>
				<!-- BEGIN: types -->
				<label style="display:inline-block;width:100px"><input type="checkbox" name="type[]" value="{TYPES.key}"{TYPES.checked}/> {TYPES.title}&nbsp;&nbsp;</label>
				<!-- END: types -->
				</td>
			</tr>
			<tr>
				<td style="vertical-align:top"><strong>{LANG.uploadconfig_ban_ext}</strong></td>
				<td>
				<!-- BEGIN: exts -->
				<label style="display:inline-block;width:100px"><input type="checkbox" name="ext[]" value="{EXTS.key}"{EXTS.checked} /> {EXTS.title}&nbsp;&nbsp;</label>
				<!-- END: exts -->
				</td>
			</tr>
			<tr>
				<td style="vertical-align:top"><strong>{LANG.uploadconfig_ban_mime}</strong></td>
				<td>
				<!-- BEGIN: mimes -->
				<label style="display:inline-block;width:48%"><input type="checkbox" name="ext[]" value="{MIMES.key}"{MIMES.checked} /> {MIMES.title}&nbsp;&nbsp;</label>
				<!-- END: mimes -->
				</td>
			</tr>
		</tbody>
	</table>
</form>
<script type="text/javascript">
	$(document).ready(function() {
		$('#frm').validate();
	}); 
</script>
<!-- END: main -->