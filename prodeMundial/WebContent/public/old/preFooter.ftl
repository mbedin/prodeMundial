<#if (showPreFooter)>
<table width="735" cellspacing="0" cellpadding="0">
	<tr>
		<td width="586" class="txTahomaGrs9b">
			<#if language.locale == "">
				<#assign lnkTerminos = "https://www.investors-trust.com/eng/legal.html " />
			<#elseif language.locale == "en">
				<#assign lnkTerminos = "https://www.investors-trust.com/eng/legal.html " />
			<#elseif language.locale == "es">
				<#assign lnkTerminos = "https://www.investors-trust.com/spa/legal.html " />
			<#elseif language.locale == "pt">
				<#assign lnkTerminos = "https://www.investors-trust.com/por/legal.html " />
			<#elseif language.locale == "zh-CN">
				<#assign lnkTerminos = "https://www.investors-trust.com/chi-sim/legal.html " />
			<#elseif language.locale == "zh-TW">
				<#assign lnkTerminos = "https://www.investors-trust.com/chi/legal.html " />
			<#elseif language.locale == "jp">
				<#assign lnkTerminos = "https://www.investors-trust.com/jp/legal.html " />
			</#if>
			
			<@show.invtrLabel key="all.Textbottom.notoffered.prelink"/>
			<a href="${lnkTerminos}" class="lnkTahomaGrs9b" target="_blank"><@show.invtrLabelLink key="all.Textbottom.notoffered.link"/></a>
			<@show.invtrLabel key="all.Textbottom.notoffered.postlink"/>
		</td>
		<td width="50"><img src="img/punto.gif" width="50" height="1" alt="" border="0"></td>
		<td width="99" align="right" valign="bottom">
			<img src="img/im_secure.jpg" width="99" height="17" alt="" border="0">
		</td>
	</tr>
	<tr>
		<td height="16" colspan="3"><img src="img/punto.gif" width="1" height="16" alt="" border="0"></td>
	</tr>
</table>
</#if>