<#ftl>
<#import "/common/showMacros.ftl" as show>
<@show.page image="img/bg_principal.jpg">
	<form name="frmMain" id="frmMain" method="post">
		<table height="538" width="760" border="0" cellspacing="0" cellpadding="0" align="center" background="img/bg_principal.jpg">
			<tr>
				<td colspan="2" height="40" valign="top">
					<table width="470" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td rowspan="2" width="80"><img src="img/punto.gif" width="80" height="1" alt="" border="0"></td>
							<td><img src="img/punto.gif" width="1" height="92" alt="" border="0"></td>
						</tr>
						<tr>
							<td colspan="2" class="clsTxArialBlc12">
								<@show.label key="principal.texto.1"/><br>
								<@show.label key="principal.texto.2"/><br>
								<@show.label key="principal.texto.3"/><br>
								<@show.label key="principal.texto.4"/>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td valign="top" width="138">
					<table border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td colspan="2"><img src="img/punto.gif" width="15" height="28" alt="" border="0"></td>
						</tr>
						<tr>
							<td width="25" valign="top"><img src="img/punto.gif" width="24" height="1" alt="" border="0"></td>
							<td width="113" valign="top"><a href="#" id="btnTarjetasPorJugar"><img src="img/bo_tarjetaporjugar.gif" width="113" height="31" alt="" border="0"></a></td>
						</tr>
						<tr>
							<td colspan="2"><img src="img/punto.gif" width="13" height="13" alt="" border="0"></td>
						</tr>
						<tr>
							<td width="25" valign="top"><img src="img/punto.gif" width="24" height="1" alt="" border="0"></td>
							<td width="113" valign="top"><a href="#" id="btnTarjetasJugadas"><img src="img/bo_tarjetasjugadas2.gif" width="113" height="31" alt="" border="0"></a></td>
						</tr>
						<tr>
							<td colspan="2"><img src="img/punto.gif" width="13" height="15" alt="" border="0"></td>
						</tr>
						<tr>
							<td width="25" valign="top"><img src="img/punto.gif" width="24" height="1" alt="" border="0"></td>
							<td width="113" valign="top"><a href="#" id="btnTarjetasExtras"><img src="img/bo_tarjetasextras2.gif" width="113" height="31" alt="" border="0"></a></td>
						</tr>
						<tr>
							<td colspan="2"><img src="img/punto.gif" width="15" height="14" alt="" border="0"></td>
						</tr>
						<tr>
							<td width="25" valign="top"><img src="img/punto.gif" width="24" height="1" alt="" border="0"></td>
							<td width="113" valign="top"><a href="#" id="btnPuntosBonus"><img src="img/bo_puntosbonus2.gif" width="113" height="31" alt="" border="0"></a></td>
						</tr>
					</table>
				</td>
				<td valign="top" width="622">
					<img src="img/punto.gif" width="78" height="282" alt="" border="0">
					<a href="#" class="lnkTxArial8Bcl" id="lnkCambioPassword"><@show.labelOnly key="login.link.cambiarPassword"/></a><span class="clsTxArialBlc8">
				</td>
			</tr>
		</table>
	</form>
</@show.page>