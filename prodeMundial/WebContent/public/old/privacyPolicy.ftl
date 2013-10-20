<table width="*" cellpadding="0" cellspacing="0" border="0">
	<tr>
		<td colspan="3" height="43"><img src="img/punto.gif" width="1" height="43" alt="" border="0"></td>
	</tr>
	<tr>
		<td width="3"><img src="img/im_corner_rec_1.jpg" width="3" height="3" alt="" border="0"></td>
		<td width="236" class="clsTable1top"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
		<td width="3"><img src="img/im_corner_rec_2.jpg" width="3" height="3" alt="" border="0"></td>
	</tr>
	<tr>
		<td class="clsTable1left"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
		<td class="clsTable1text">
			<p class="clsTable1text">
				<@show.invtrLabel key="all.TextBox.Confidenciality"/>
			</p>
		</td>
		<td class="clsTable1right"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
	</tr>
	<tr>
		<td width="3"><img src="img/im_corner_rec_3.jpg" width="3" height="3" alt="" border="0"></td>
		<td class="clsTable1bottom"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
		<td width="3"><img src="img/im_corner_rec_4.jpg" width="3" height="3" alt="" border="0"></td>
	</tr>
</table>
<div id="question" style="display:none; cursor: default"> 
	<#if language.locale == "">
		<#include "../templates/includes/en/privacyPolicy.ftl" />
	<#else>
		<#include "../templates/includes/${language.locale}/privacyPolicy.ftl" />
	</#if>
	<@show.invtrButton key="approval.Button.Close" id="btnClosePrivacyPolicy" arrowLeft="0" arrowRight="0"/>
	 
</div>
