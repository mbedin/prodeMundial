<#ftl>
<#import "/common/showMacros.ftl" as show>
<@show.page image="img/bg_fueraDeLaPromo_arg.jpg">
	<form name="frmMain" id="frmMain" method="post">
		<@show.hidden name="hdnRetorno" value="${retorno}" />
		<table height="537" width="758" border="0" cellspacing="0" cellpadding="0" align="center" background="img/bg_fueraDeLaPromo_arg.jpg">
			<tr>
				<td colspan="2" height="40" valign="top">
					<table border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td rowspan="8" width="80"><img src="img/punto.gif" width="80" height="1" alt="" border="0"></td>
							<td><img src="img/punto.gif" width="1" height="92" alt="" border="0"></td>
						</tr>
						<tr>
							<td class="clsTxArialBlc18"><@show.label key="${mensaje}"/></td>
						</tr>
						<tr>
							<td><img src="img/punto.gif" width="1" height="21" alt="" border="0"></td>
						</tr>
						<tr>
							<td><img src="img/punto.gif" width="1" height="21" alt="" border="0"></td>
						</tr>
					</table>
				</td>
			</tr>
			
			<tr>
				<td valign="top" width="138">
					<table border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td colspan="2"><img src="img/punto.gif" width="15" height="15" alt="" border="0"></td>
						</tr>
						<tr>
							<td width="16" valign="top"><img src="img/punto.gif" width="16" height="1" alt="" border="0"></td>
						</tr>
					</table>
				</td>
				<td valign="top" width="622">
					
				</td>
			</tr>
			
		</table>
	</form>
</@show.page>
