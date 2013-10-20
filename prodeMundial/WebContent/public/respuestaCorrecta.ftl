<#ftl>
<#import "/common/showMacros.ftl" as show>
<@show.page image="img/bg_felicitaciones${respuestaCliente.pregunta.puntos?c}puntos.jpg">
	<form name="frmMain" id="frmMain" method="post">
		<@show.hidden name="hdnRetorno" value="${retorno}" />
		<table height="538" width="760" border="0" cellspacing="0" cellpadding="0" align="center" background="img/bg_felicitaciones${respuestaCliente.pregunta.puntos?c}puntos.jpg">
			<tr>
				<td colspan="2" height="40" valign="top">
					<table border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td rowspan="6" width="80"><img src="img/punto.gif" width="80" height="1" alt="" border="0"></td>
							<td><img src="img/punto.gif" width="1" height="92" alt="" border="0"></td>
						</tr>
						<tr>
							<td class="clsTxArialBlc24"><@show.label key="respuestaCorrecta.titulo"/></td>
						</tr>
						<tr>
							<td><img src="img/punto.gif" width="1" height="21" alt="" border="0"></td>
						</tr>
						<tr>
							<td class="clsTxArialBlc16">
								<table>
									<tr>
										<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
										<td valign="top" class="clsTxArialNar18"><@show.label key="respuestaCorrecta.sumaste"/></td>
										<td><img src="img/${respuestaCliente.pregunta.puntos?c}puntos.jpg" width="30" height="33" alt="" border="0"></td>
										<td valign="bottom" class="clsTxArialNar18"><@show.label key="respuestaCorrecta.puntos"/></td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td><img src="img/punto.gif" width="1" height="35" alt="" border="0"></td>
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