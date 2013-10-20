<#ftl>
<#import "/common/showMacros.ftl" as show>
<@show.page image="img/bg_ppal.jpg">
	<form name="frmMain" id="frmMain" method="post">
		<table height="536" width="758" border="0" cellspacing="0" cellpadding="0" align="center" background="img/bg_ppal.jpg"  style="background-position: center;">
			<tr>
				<td colspan="2" height="40" valign="top">
					<table width="470" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td rowspan="2" width="40"><img src="img/punto.gif" width="40" height="1" alt="" border="0"></td>
							<td><img src="img/punto.gif" width="1" height="92" alt="" border="0"></td>
						</tr>
						<tr>
							<td colspan="2"></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td valign="top" width="50">
					<table border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td colspan="2"><img src="img/punto.gif" width="13" height="98" alt="" border="0"></td>
						</tr>
						<tr>
							<td width="17" valign="top"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
							<td width="121" valign="top"><a href="#" id="btnComoJugar"><img src="img/bo_comojugar_t.png" style="filter:progid:DXImageTransform.Microsoft.AlphaImageLoader (src='img/bo_comojugar_t.png',sizingMethod='scale');" width="123" height="38" alt="" border="0"></a></td>
						</tr>
						<#if cliente.aceptoBases >
							<tr>
								<td colspan="2"><img src="img/punto.gif" width="13" height="6" alt="" border="0"></td>
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
								<td colspan="2"><img src="img/punto.gif" width="13" height="7" alt="" border="0"></td>
							</tr>
							<tr>
								<td width="17" valign="top"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
								<td width="121" valign="top"><a href="#" id="btnTarjetasExtras"><img src="img/bo_tarjetasextras_t.png" style="filter:progid:DXImageTransform.Microsoft.AlphaImageLoader (src='img/bo_tarjetasextras_t.png',sizingMethod='scale');" width="123" height="38" alt="" border="0"></a></td>
							</tr>
							<tr>
								<td colspan="2"><img src="img/punto.gif" width="15" height="7" alt="" border="0"></td>
							</tr>
							<tr>
								<td width="17" valign="top"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
								<td width="121" valign="top"><a href="#" id="btnPuntosBonus"><img src="img/bo_puntosbonus_t.png" style="filter:progid:DXImageTransform.Microsoft.AlphaImageLoader (src='img/bo_puntosbonus_t.png',sizingMethod='scale');"  width="123" height="38" alt="" border="0"></a></td>
							</tr>
						</#if>
					</table>
				</td>
				<td width="160">
					<table width="470" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td align="top "width="176" class="clsTxArialNar16"><@show.label key="principal.puntajeTarjetaEnJuego"/>&nbsp;${cliente.tarjetasExtras}</td>
						</tr>
						<tr>
							<td>
								<img src="img/punto.gif" width="80" height="140" alt="" border="0">
								<a href="#" class="lnkTxArial8Bcl" id="lnkCambioPassword"><@show.labelOnly key="login.link.cambiarPassword"/></a><span class="clsTxArialBlc8">
							</td>						
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</form>
</@show.page>