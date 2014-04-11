<!-- BEGIN: edit -->
<div class="quote">
	<blockquote {CLASS}><span>{INFO}</span></blockquote>
</div>
<form method="post" action="{ACTION}">
	<table class="tab1 fixtab">
		<colgroup>
			<col class="w200">
			<col class="w20">
			<col class="w350">
			<col/>
		</colgroup>
		<tfoot>
			<tr>
				<td colspan="4" class="center"><input name="save" id="save" type="hidden" value="1" /><input name="go_edit" type="submit" value="{LANG.save}" /></td>
			</tr>
		</tfoot>
		<tbody>
			<!-- BEGIN: position -->
			<tr>
				<td> {POSITION0}: </td>
				<td><sup class="required"> &lowast; </sup></td>
				<td><input class="w300" name="position" id="position" type="text" value="{POSITION1}" maxlength="250" /></td>
				<td><span class="row">&lArr;</span> {POSITION2} </td>
			</tr>
			<!-- END: position -->
			<!-- BEGIN: editor -->
			<tr>
				<td> {EDITOR0}: </td>
				<td>&nbsp;</td>
				<td>
				<select name="editor" id="editor">
					<option value="">{EDITOR3}</option>
					<!-- BEGIN: loop -->
					<option value="{VALUE}" {SELECTED}>{VALUE} </option>
					<!-- END: loop -->
				</select></td>
				<td>&nbsp;</td>
			</tr>
			<!-- END: editor -->
			<!-- BEGIN: allow_files_type -->
			<tr>
				<td> {ALLOW_FILES_TYPE}: </td>
				<td>&nbsp;</td>
				<td>
				<!-- BEGIN: loop -->
				<input name="allow_files_type[]" type="checkbox" value="{VALUE}" {CHECKED} /> {VALUE}
				<br/>
				<!-- END: loop -->
				</td>
				<td>&nbsp;</td>
			</tr>
			<!-- END: allow_files_type -->
			<!-- BEGIN: allow_modify_files -->
			<tr>
				<td> {ALLOW_MODIFY_FILES}: </td>
				<td>&nbsp;</td>
				<td><input name="allow_modify_files" type="checkbox" value="1"{CHECKED} /></td>
				<td>&nbsp;</td>
			</tr>
			<!-- END: allow_modify_files -->
			<!-- BEGIN: allow_create_subdirectories -->
			<tr>
				<td> {ALLOW_CREATE_SUBDIRECTORIES}: </td>
				<td>&nbsp;</td>
				<td><input name="allow_create_subdirectories" type="checkbox" value="1"{CHECKED} /></td>
				<td>&nbsp;</td>
			</tr>
			<!-- END: allow_create_subdirectories -->
			<!-- BEGIN: allow_modify_subdirectories -->
			<tr>
				<td> {ALLOW_MODIFY_SUBDIRECTORIES}: </td>
				<td>&nbsp;</td>
				<td><input name="allow_modify_subdirectories" type="checkbox" value="1"{CHECKED} /></td>
				<td>&nbsp;</td>
			</tr>
			<!-- END: allow_modify_subdirectories -->
			<!-- BEGIN: lev -->
			<tr>
				<td> {LEV0}: </td>
				<td>&nbsp;</td>
				<td colspan="2">
				<!-- BEGIN: if -->
				<label> <input name="lev" type="radio" value="2" onclick="nv_show_hidden('modslist',0);"{CHECKED2} /> &nbsp;{LEV4} </label> &nbsp;&nbsp;&nbsp; <label> <input name="lev" type="radio" value="3" onclick="nv_show_hidden('modslist',1);"{CHECKED3} /> &nbsp; {LEV5} </label>
				<br/>
				<!-- END: if -->
				<div id="modslist" style="margin-top:10px; {STYLE}">
					{LEV1}:
					<br/>
					<div>
						<!-- BEGIN: loop -->
						<p>
							<input name="modules[]" type="checkbox" value="{VALUE}" {CHECKED} />&nbsp; {CUSTOM_TITLE}
						</p>
						<!-- END: loop -->
					</div>
				</div></td>
			</tr>
			<!-- END: lev -->
		</tbody>
	</table>
</form>
<!-- END: edit -->
<!-- BEGIN: edit_resuilt -->
<table class="tab1">
	<caption> {TITLE}: </caption>
	<colgroup>
		<col style="width: 30%"/>
		<col span="2" style="width: 35%"/>
		<col/>
	</colgroup>
	<thead>
		<tr>
			<td> {THEAD0} </td>
			<td> {THEAD1} </td>
			<td> {THEAD2} </td>
		</tr>
	</thead>
	<tbody>
		<!-- BEGIN: loop -->
		<tr>
			<td> {VALUE0} </td>
			<td> {VALUE1} </td>
			<td> {VALUE2} </td>
		</tr>
		<!-- END: loop -->
	</tbody>
</table>
<br/>
<a class="button2" href="{EDIT_HREF}"><span><span>{EDIT_NAME}</span></span></a>
<a class="button2" href="{HOME_HREF}"><span><span>{HOME_NAME}</span></span></a>
<!-- END: edit_resuilt -->