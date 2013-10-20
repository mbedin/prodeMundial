<#ftl>
<#import "/common/showMacros.ftl" as show>
<@show.page image="img/bg_trivia.jpg">
	<form name="frmMain" id="frmMain" method="post">
		<input type="hidden" name="pregunta.puntos" id="pregunta_puntos" value="${pregunta.puntos?c}" />
		<table height="538" width="760" border="0" cellspacing="0" cellpadding="0" align="center" background="img/bg_trivia2.jpg">
			<tr>
				<td colspan="2" height="40" valign="top">
					<table width="470" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td rowspan="4" width="80"><img src="img/punto.gif" width="80" height="1" alt="" border="0"></td>
							<td><img src="img/punto.gif" width="1" height="92" alt="" border="0"></td>
						</tr>
						<tr>
							<td class="clsTxArialNar20"><@show.label key="trivia.mundial"/></td>
						</tr>
						<tr>
							<td class="clsTxArialBlc12"><@show.label key="trivia.texto"/></td>
						</tr>
						<tr>
							<td><img src="img/punto.gif" width="1" height="27" alt="" border="0"></td>
						</tr>
						<#if (!triviaJugada)>
							<tr>
								<td colspan="2">
									<table border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td><img src="img/punto.gif" width="71" height="1" alt="" border="0"></td>
											<td><a href="#" id="btnPregunta3"/><img src="img/tres_puntos.jpg" width="115" height="51" alt="" border="0"></a></td>
											<td><img src="img/punto.gif" width="16" height="1" alt="" border="0"></td>
											<td><a href="#" id="btnPregunta5"/><img src="img/cinco_puntos.jpg" width="115" height="51" alt="" border="0"></a></td>
											<td><img src="img/punto.gif" width="15" height="1" alt="" border="0"></td>
											<td><a href="#" id="btnPregunta7"/><img src="img/siete_puntos.jpg" width="115" height="51" alt="" border="0"></a></td>
										</tr>
									</table>
								</td>
							</tr>
						<#else>
							<tr>
								<td colspan="2" class="clsTxArialBlc12"><img src="img/punto.gif" width="80" height="10" alt="" border="0"><@show.label key="trivia.yaJugo"/></td>
							</tr>
							<tr>
								<td><img src="img/punto.gif" width="1" height="36" alt="" border="0"></td>
							</tr>
						</#if>							
					</table>
				</td>
			</tr>
			<tr>
				<td valign="top" width="138">
					<table border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td colspan="2"><img src="img/punto.gif" width="15" height="11" alt="" border="0"></td>
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
							<td width="113" valign="top"><a href="#" id="btnPrincipal"><img src="img/bo_principal.gif" width="113" height="31" alt="" border="0"></a></td>
						</tr>
					</table>
				</td>
				<td valign="top" width="622" class="clsTxArialBlc12">
					<img src="img/punto.gif" width="40" height="30" alt="" border="0">
					<#if puntosClientes gt 0>
						<@show.label key="trivia.usted"/>&nbsp;${puntosClientes}&nbsp;<@show.label key="trivia.puntos"/>
					<#else>
						<@show.label key="trivia.sinPuntos"/>
					</#if>
				</td>
			</tr>
		</table>
	</form>
</@show.page>