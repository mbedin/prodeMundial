<#ftl>
<#import "/common/showMacros.ftl" as show>
<@show.page image="img/bg_password2.jpg">
	<form name="frmMain" id="frmMain" method="post">
		<@show.hidden name="hdnRetorno" value="${retorno}" />
		<table height="535" width="758" border="0" cellspacing="0" cellpadding="0" align="center" background="img/bg_password2.jpg" style="background-position: center;">
			<tr>
				<td colspan="2" height="40" valign="top">
					<table width="470" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td rowspan="5" width="80"><img src="img/punto.gif" width="80" height="1" alt="" border="0"></td>
							<td><img src="img/punto.gif" width="1" height="92" alt="" border="0"></td>
						</tr>
						<tr>
							<td class="clsTxArialBlc24">
								<@show.label key="reseteoPassword.titulo"/><br>
							</td>
						</tr>
						<tr>
							<td class="clsTxArialBlc12">
								<br><@show.label key="reseteoPassword.texto"/><br>
							</td>
						</tr>
						<tr>
							<td class="clsTxArialBlc12">
								<img src="img/punto.gif"  width="1" height="10" alt="" border="0">
							</td>
						</tr>
						<tr>
							<td>
								<table border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td rowspan="4" width="40"><img src="img/punto.gif" width="80" height="1" alt="" border="0"></td>
										<td class="clsTxArialBlc11"><@show.label key="reseteoPassword.label.usuario"/>&nbsp;&nbsp;&nbsp;</td>
										<td><@show.inputText key="passwordAdapter.cliente.usuario" disabled="false" required="true" style="null" value="${passwordAdapter.cliente.usuario}" size="10" class="inputLogin" maxlength="20"/></td>
									</tr>
									<tr>
										<td colspan="2" class="clsTxArialBlc12">
											<img src="img/punto.gif" width="1" height="10" alt="" border="0">
										</td>
									</tr>
									<tr>
										<td colspan="2" align="center">
											&nbsp;<@show.labelErrorField key="reseteoPassword.error"/>
										</td>
									</tr>
								</table>
							</td>
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
							<td width="113" valign="top"><a href="#" id="btnReset"><img src="img/bo_aceptar.png" style="filter:progid:DXImageTransform.Microsoft.AlphaImageLoader (src='img/bo_aceptar.png',sizingMethod='scale');" alt="" width="123" height="38" border="0"></a></td>
						</tr>
						<tr>
							<td colspan="2"><img src="img/punto.gif" width="13" height="12" alt="" border="0"></td>
						</tr>
						<tr>
							<td width="16" valign="top"><img src="img/punto.gif" width="16" height="1" alt="" border="0"></td>
							<td width="113" valign="top"><a href="#" id="btnVolver"><img src="img/bo_volveratras2.png" style="filter:progid:DXImageTransform.Microsoft.AlphaImageLoader (src='img/bo_volveratras2.png',sizingMethod='scale');" alt="" width="123" height="38" border="0"></a></td>
						</tr>
						
					</table>
				</td>
				<td valign="top" width="622">
					
				</td>
			</tr>
		</table>
	</form>
</@show.page>