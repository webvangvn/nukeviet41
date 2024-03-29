<!-- BEGIN: main -->
<table class="tab1">
	<tbody>
		<tr>
			<td>
			<form id="filter-form" method="get" action="{NV_BASE_ADMINURL}index.php?{NV_LANG_VARIABLE}={NV_LANG_DATA}&{NV_NAME_VARIABLE}={MODULE_NAME}&amp;{NV_OP_VARIABLE}={OP}">
				<input style="width:120px" type="text" name="q" value="{DATA_SEARCH.q}" onfocus="if(this.value == '{LANG.filter_enterkey}') {this.value = '';}" onblur="if (this.value == '') {this.value = '{LANG.filter_enterkey}';}"/>
				{LANG.filter_from}
				<input class="text" value="{DATA_SEARCH.from}" type="text" id="from" name="from" readonly="readonly" style="width:80px" />
				{LANG.filter_to}
				<input class="text" value="{DATA_SEARCH.to}" type="text" id="to" name="to" readonly="readonly" style="width:80px" />
				<select class="text" name="lang">
					<!-- BEGIN: lang -->
					<option value="{lang.key}"{lang.selected}>{lang.title}</option>
					<!-- END: lang -->
				</select>
				<select class="text" name="user">
					<!-- BEGIN: user -->
					<option value="{user.key}"{user.selected}>{user.title}</option>
					<!-- END: user -->
				</select>
				<select class="text" name="module">
					<!-- BEGIN: module -->
					<option value="{module.key}"{module.selected}>{module.title}</option>
					<!-- END: module -->
				</select>
				<input type="button" name="action" value="{LANG.filter_action}"/>
				<input type="button" name="cancel" value="{LANG.filter_cancel}" onclick="window.location='{URL_CANCEL}';"{DISABLE}/>
				<input type="button" name="clear" value="{LANG.filter_clear}"/>
			</form></td>
		</tr>
	</tbody>
</table>
<script type="text/javascript">
$(document).ready(function() {
	$("#from,#to").datepicker({
		showOn : "both",
		dateFormat : "dd.mm.yy",
		changeMonth : true,
		changeYear : true,
		showOtherMonths : true,
		buttonText : '{LANG.select}',
		showButtonPanel : true,
		showOn : 'focus'
	});
	$('input[name=clear]').click(function() {
		$('#filter-form .text').val('');
		$('input[name=q]').val('{LANG.filter_enterkey}');
	});
	$('input[name=action]').click(function() {
		var f_q = $('input[name=q]').val();
		var f_from = $('input[name=from]').val();
		var f_to = $('input[name=to]').val();
		var f_lang = $('select[name=lang]').val();
		var f_module = $('select[name=module]').val();
		var f_user = $('select[name=user]').val();
		if ((f_q != '{LANG.filter_enterkey}' && f_q != '' ) || f_from != '' || f_to != '' || f_lang != '' || f_user != '' || f_module != '') {
			$('#filter-form input, #filter-form select').attr('disabled', 'disabled');
			window.location = '{NV_BASE_ADMINURL}index.php?{NV_LANG_VARIABLE}={NV_LANG_DATA}&{NV_NAME_VARIABLE}={MODULE_NAME}&{NV_OP_VARIABLE}={OP}&filter=1&checksess={checksess}&q=' + f_q + '&from=' + f_from + '&to=' + f_to + '&lang=' + f_lang + '&module=' + f_module + '&user=' + f_user;
		} else {
			alert('{LANG.filter_err_submit}');
		}
	});
});
</script>
<table class="tab1">
	<colgroup>
		<col style="width: 35px"/>
		<col style="width: 60px"/>
		<col span="6" />
	</colgroup>
	<thead>
		<tr>
			<td><input type="checkbox" name="all" id="check_all"/></td>
			<td class="center"><a href="{DATA_ORDER.lang.data.url}" title="{DATA_ORDER.lang.data.title}" class="{DATA_ORDER.lang.data.class}">{LANG.log_lang}</a></td>
			<td><a href="{DATA_ORDER.module.data.url}" title="{DATA_ORDER.module.data.title}" class="{DATA_ORDER.module.data.class}">{LANG.log_module_name}</a></td>
			<td> {LANG.log_name_key} </td>
			<td> {LANG.log_note} </td>
			<td> {LANG.log_username} </td>
			<td><a href="{DATA_ORDER.time.data.url}" title="{DATA_ORDER.user.data.title}" class="{DATA_ORDER.time.data.class}">{LANG.log_time}</a></td>
			<!-- BEGIN: head_delete -->
			<td class="center"> {LANG.log_feature} </td>
			<!-- END: head_delete -->
		</tr>
	</thead>
	<tbody>
		<!-- BEGIN: row -->
		<tr>
			<td><input type="checkbox" name="all" class="list" value="{DATA.id}"/></td>
			<td class="center"> {DATA.lang} </td>
			<td> {DATA.module_name} </td>
			<td> {DATA.name_key} </td>
			<td> {DATA.note_action} </td>
			<td> {DATA.username} </td>
			<td> {DATA.time} </td>
			<!-- BEGIN: delete -->
			<td class="center"><a href="{DEL_URL}" class = "delete delete_icon">{GLANG.delete}</a></td>
			<!-- END: delete -->
		</tr>
		<!-- END: row -->
	</tbody>
	<tfoot>
		<tr>
			<td colspan="8">
			<!-- BEGIN: foot_delete -->
			<input type="button" value="{GLANG.delete}" id="delall" /> <input type="button" value="{LANG.log_empty}" id="logempty" style="margin-right: 50px;" />
			<!-- END: foot_delete -->
			<!-- BEGIN: generate_page -->
			<div class="generate_page">{GENERATE_PAGE}</div>
			<!-- END: generate_page -->
			</td>
		</tr>
	</tfoot>
</table>
<script type='text/javascript'>
//<![CDATA[
$(function() {
	$("#check_all").click(function() {
		if ($("#check_all").prop("checked")) {
			$('input.list').prop("checked", true);
		} else {
			$('input.list').prop("checked", false);
		}
	});
	$('#delall').click(function() {
		var listall = [];
		$('input.list:checked').each(function() {
			listall.push($(this).val());
		});
		if (listall.length < 1) {
			alert("{LANG.log_del_no_items}");
			return false;
		}
		if (confirm("{LANG.log_del_confirm}")) {
			$.ajax({
				type : 'POST',
				url : '{URL_DEL}',
				data : 'listall=' + listall,
				success : function(data) {
					var s = data.split('_');
					if (s[0] == 'OK')
						window.location = '{BACK_URL}';
					alert(s[1]);
				}
			});
		}
	});
	$('a.delete').click(function(event) {
		event.preventDefault();
		if (confirm("{LANG.log_del_confirm}")) {
			var href = $(this).attr('href');
			$.ajax({
				type : 'POST',
				url : href,
				data : '',
				success : function(data) {
					var s = data.split('_');
					if (s[0] == 'OK') {
						window.location = '{BACK_URL}';
					} else {
						alert(s[1]);
					}
				}
			});
		}
	});
	$("#logempty").click(function() {
		if (confirm("{LANG.log_del_confirm}")) {
			$("#logempty").attr("disabled", "disabled");
			$.ajax({
				type : 'POST',
				url : '{NV_BASE_ADMINURL}index.php',
				data : nv_name_variable + "=" + nv_module_name + "&" + nv_fc_variable + "=logs_del&logempty={checksess}",
				success : function(data) {
					if (data == 'OK')
						window.location = "{NV_BASE_ADMINURL}index.php?" + nv_name_variable + "=" + nv_module_name + "&" + nv_fc_variable + "={OP}";
					else
						alert(data);
					$("#logempty").removeAttr("disabled");
				}
			});
		}
	});
});
//]]>
</script>
<!-- END: main -->