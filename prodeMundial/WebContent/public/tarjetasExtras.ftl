<#ftl>
<#import "/common/showMacros.ftl" as show>
<@show.page>
	<form name="frmMain" id="frmMain" method="post">
		<@show.hidden name="hdnRetorno" value="${retorno}" />
		<#if promocion.id gt 0>
			<table height="535" width="758" border="0" cellspacing="0" cellpadding="0" align="center" background="img/productos/${promocion.imagen}" style="background-position: center;">			
		<#else>
			<table height="535" width="758" border="0" cellspacing="0" cellpadding="0" align="center" background="img/productos/bg_extras_0.jpg" style="background-position: center;">
		</#if>
			<tr>
				<td colspan="2" height="40" valign="top">
					<table border="0" width="600" cellspacing="0" cellpadding="0">
						<tr>
							<td rowspan="4" width="80"><img src="img/punto.gif" width="80" height="1" alt="" border="0"></td>
							<td><img src="img/punto.gif" width="1" height="92" alt="" border="0"></td>
						</tr>
						<tr>
							<td class="clsTxArialNar22"><@show.label key="tarjetasExtras.texto"/></td>
						</tr>
						<tr>
							<td></td>
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
							<td colspan="2"><img src="img/punto.gif" width="13" height="49" alt="" border="0"></td>
						</tr>
						<tr>
							<td width="17" valign="top"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
							<td width="121" valign="top"><a href="#" id="btnTarjetasPorJugar"><img src="img/bo_tarjetaporjugar_t.png" style="filter:progid:DXImageTransform.Microsoft.AlphaImageLoader (src='img/bo_tarjetaporjugar_t.png',sizingMethod='scale');" width="123" height="38" alt="" border="0"></a></td>
						</tr>
						<tr>
							<td colspan="2"><img src="img/punto.gif" width="13" height="7" alt="" border="0"></td>
						</tr>
						<tr>
							<td width="17" valign="top"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
							<td width="121" valign="top"><a href="#" id="btnTarjetasJugadas"><img src="img/bo_tarjetasjugadas_t.png" style="filter:progid:DXImageTransform.Microsoft.AlphaImageLoader (src='img/bo_tarjetasjugadas_t.png',sizingMethod='scale');" width="123" height="38" alt="" border="0"></a></td>
						</tr>
						<tr>
							<td colspan="2"><img src="img/punto.gif" width="15" height="7" alt="" border="0"></td>
						</tr>
						<tr>
							<td width="17" valign="top"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
							<td width="121" valign="top"><a href="#" id="btnPuntosBonus"><img src="img/bo_puntosbonus_t.png" style="filter:progid:DXImageTransform.Microsoft.AlphaImageLoader (src='img/bo_puntosbonus_t.png',sizingMethod='scale');" width="123" height="38" alt="" border="0"></a></td>
						</tr>
						<tr>
							<td colspan="2"><img src="img/punto.gif" width="15" height="7" alt="" border="0"></td>
						</tr>
						<tr>
							<td width="17" valign="top"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
							<td width="121" valign="top"><a href="#" id="btnPrincipal"><img src="img/bo_principal_t.png" style="filter:progid:DXImageTransform.Microsoft.AlphaImageLoader (src='img/bo_principal_t.png',sizingMethod='scale');" width="123" height="38" alt="" border="0"></a></td>
						</tr>						
					</table>
				</td>

				<td valign="top" width="622">
				</td>
			</tr>
		</table>
			
	</form>
</@show.page>