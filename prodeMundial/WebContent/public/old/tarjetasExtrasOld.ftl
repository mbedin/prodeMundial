<#ftl>
<#import "/common/showMacros.ftl" as show>
<@show.page image="img/bg_tarjetasextras.jpg">
	<form name="frmMain" id="frmMain" method="post">
		<@show.hidden name="hdnRetorno" value="${retorno}" />
		<table height="538" width="760" border="0" cellspacing="0" cellpadding="0" align="center" background="img/bg_tarjetasextras.jpg">
			<tr>
				<td colspan="2" height="40" valign="top">
					<table border="0" width="490" cellspacing="0" cellpadding="0">
						<tr>
							<td rowspan="4" width="80"><img src="img/punto.gif" width="80" height="1" alt="" border="0"></td>
							<td><img src="img/punto.gif" width="1" height="92" alt="" border="0"></td>
						</tr>
						<tr>
							<td class="clsTxArialNar22"><@show.label key="tarjetasExtras.texto"/></td>
						</tr>
						<tr>
							<td><!--<#if promocion.id gt 0>${promocion.textoPromocion}</#if>--></td>
						</tr>
						<tr>
							<td class="clsTxArialBlc12"><@show.label key="tarjetasExtras.mensaje"/></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td valign="top" width="138">
					<table border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td colspan="2"><img src="img/punto.gif" width="15" height="86" alt="" border="0"></td>
						</tr>
						<tr>
							<td width="25" valign="top"><img src="img/punto.gif" width="25" height="1" alt="" border="0"></td>
							<td width="113" valign="top"><a href="#" id="btnTarjetasPorJugar"><img src="img/bo_tarjetaporjugar.gif" width="113" height="31" alt="" border="0"></a></td>
						</tr>
						<tr>
							<td colspan="2"><img src="img/punto.gif" width="13" height="13" alt="" border="0"></td>
						</tr>
						<tr>
							<td width="25" valign="top"><img src="img/punto.gif" width="25" height="1" alt="" border="0"></td>
							<td width="113" valign="top"><a href="#" id="btnTarjetasJugadas"><img src="img/bo_tarjetasjugadas2.gif" width="113" height="31" alt="" border="0"></a></td>
						</tr>
						<tr>
							<td colspan="2"><img src="img/punto.gif" width="15" height="15" alt="" border="0"></td>
						</tr>
						<tr>
							<td width="25" valign="top"><img src="img/punto.gif" width="25" height="1" alt="" border="0"></td>
							<td width="113" valign="top"><a href="#" id="btnPuntosBonus"><img src="img/bo_puntosbonus.gif" width="113" height="31" alt="" border="0"></a></td>
						</tr>
						<tr>
							<td colspan="2"><img src="img/punto.gif" width="14" height="14" alt="" border="0"></td>
						</tr>
						<tr>
							<td width="25" valign="top"><img src="img/punto.gif" width="25" height="1" alt="" border="0"></td>
							<td width="113" valign="top"><a href="#" id="btnPrincipal"><img src="img/bo_principal.gif" width="113" height="31" alt="" border="0"></a></td>
						</tr>
					</table>
				</td>
				<td valign="top" width="622">
					
				</td>
			</tr>
		</table>



	</form>
</@show.page>