<!-- BEGIN: empty -->
<div class="center">
	<b>{LANG.nv_lang_error_exit}</b>
</div>
<meta http-equiv="Refresh" content="3;URL={URL}" />
<!-- END: empty -->
<!-- BEGIN: main -->
<table class="tab1">
	<thead>
		<tr class="center">
			<td>{LANG.nv_lang_nb}</td>
			<td>{LANG.nv_lang_module}</td>
			<td>{LANG.nv_lang_area}</td>
			<td>{LANG.nv_lang_author}</td>
			<td>{LANG.nv_lang_createdate}</td>
			<td>{LANG.nv_lang_func}</td>
		</tr>
	</thead>
	<tbody>
		<!-- BEGIN: loop -->
		<tr>
			<td class="center">{ROW.stt}</td>
			<td>{ROW.module}</td>
			<td>{ROW.langsitename}</td>
			<td class="center">{ROW.author}</td>
			<td class="center">{ROW.createdate}</td>
			<td class="center"><a class="edit_icon" href="{ROW.url_edit}" title="{LANG.nv_admin_edit}">{LANG.nv_admin_edit}</a>
			<!-- BEGIN: write -->
			- <a class="default_icon" href="{ROW.url_export}" title="{LANG.nv_admin_write}">{LANG.nv_admin_write}</a>
			<!-- END: write -->
			</td>
		</tr>
		<!-- END: loop -->
	</tbody>
</table>
<!-- END: main -->