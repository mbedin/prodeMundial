<#ftl>
<#import "/common/showMacros.ftl" as show>
<@show.page image="img/bg_tarjetasporjugar.jpg">
	<form name="frmMain" id="frmMain" method="post">
	 	<@show.hidden name="hdnRetorno" value="${retorno}" />
		<input type="hidden" name="tarjeta.id" id="tarjeta_id" value="0" />
		<input type="hidden" name="paginador.numeroPagina" id="paginador_numeroPagina" value="${paginador.numeroPagina?c}" />
		<input type="hidden" name="paginador.tamanoPagina" id="paginador_tamanoPagina" value="${paginador.tamanoPagina?c}" />
		<input type="hidden" name="paginador.totalRegistros" id="paginador_totalRegistros" value="${paginador.totalRegistros?c}" />
		<input type="hidden" name="paginador.accion" id="paginador_accion" value="${paginador.accion}" />
			 	
	 	<table height="538" width="760" border="0" cellspacing="0" cellpadding="0" align="center" background="img/bg_tarjetasporjugar.jpg">
			<tr>
				<td colspan="2" height="40" valign="top">
					<table border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td rowspan="2" width="80"><img src="img/punto.gif" width="80" height="1" alt="" border="0"></td>
							<td><img src="img/punto.gif" width="1" height="92" alt="" border="0"></td>
						</tr>
						<tr>
							<td colspan="2" class="clsTxArialNar16"><@show.label key="tarjetasPorJugar.titulo"/></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td valign="top" width="138">
					<table border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td colspan="2"><img src="img/punto.gif" width="15" height="139" alt="" border="0"></td>
						</tr>
						<tr>
							<td width="25" valign="top"><img src="img/punto.gif" width="25" height="1" alt="" border="0"></td>
							<td width="113" valign="top"><a href="#" id="btnTarjetasJugadas"><img src="img/bo_tarjetasjugadas.gif" width="113" height="31" alt="" border="0"></a></td>
						</tr>
						<tr>
							<td colspan="2"><img src="img/punto.gif" width="13" height="13" alt="" border="0"></td>
						</tr>
						<tr>
							<td width="25" valign="top"><img src="img/punto.gif" width="25" height="1" alt="" border="0"></td>
							<td width="113" valign="top"><a href="#" id="btnTarjetasExtras"><img src="img/bo_tarjetasextras.gif" width="113" height="31" alt="" border="0"></a></td>
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
					<table border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td rowspan="10" width="37"><img src="img/punto.gif" width="37" height="1" alt="" border="0"></td>
							<td height="10"><img src="img/punto.gif" width="1" height="10" alt="" border="0"></td>
						</tr>
						<tr>
							<td class="clsTxArialNar14">
								<#if ( (tarjetasPorJugar?size)?? && tarjetasPorJugar?size > 0 ) >
									<#list tarjetasPorJugar as tarjeta>
										<@show.label key="tarjeta.tarjetaProde"/>
										<#if ( tarjeta.tarjetaOctavos ) >
											<a class="lnkTxArial14Bcl" href="#" onclick="javascript: cargarTarjeta8(${tarjeta.id?c});">${tarjeta.numeroTarjeta}</a><br>
										<#else>
											<#if ( tarjeta.tarjetaCuartos ) >
												<a class="lnkTxArial14Bcl" href="#" onclick="javascript: cargarTarjeta8(${tarjeta.id?c});">${tarjeta.numeroTarjeta}</a><br>
											<#else>
												<#if ( tarjeta.tarjetaSemi ) >
													<a class="lnkTxArial14Bcl" href="#" onclick="javascript: cargarTarjeta8(${tarjeta.id?c});">${tarjeta.numeroTarjeta}</a><br>
												<#else>
													<#if ( tarjeta.tarjetaFinal ) >
														<a class="lnkTxArial14Bcl" href="#" onclick="javascript: cargarTarjeta8(${tarjeta.id?c});">${tarjeta.numeroTarjeta}</a><br>
													<#else>
														<a class="lnkTxArial14Bcl" href="#" onclick="javascript: cargarTarjeta(${tarjeta.id?c});">${tarjeta.numeroTarjeta}</a><br>
													</#if>
												</#if>
											</#if>
										</#if>
									</#list>
								<#else>
									<@show.label key="tarjetasPorJugar.empty"/>
								</#if>
							</td>
						</tr>
											
						<tr>
							<td colspan="2"><img src="img/punto.gif" width="1" height="23" alt="" border="0"></td>
						</tr>
						
						<#if paginador.totalPaginas gt 1>
							<tr>
								<td colspan="2" class="clsTxPaginador">
									<@show.label key="paginador.tarjetas"/>&nbsp;${paginador.registroDesde?c}&nbsp;<@show.label key="paginador.a"/>&nbsp;${paginador.registroHasta?c}&nbsp;<@show.label key="paginador.de"/>&nbsp;${paginador.totalRegistros?c}<br>
									<#if paginador.tieneAnterior>
										<a href="#" class="lnkPaginador" id="lnkAnterior"><@show.labelOnly key="paginador.anterior"/>&nbsp;${paginador.tamanoPagina?c}</a>
									</#if>
									<#if paginador.tieneAnterior && paginador.tieneSiguiente>
										&nbsp;-&nbsp;
									</#if>
									<#if paginador.tieneSiguiente>
										<a href="#" class="lnkPaginador" id="lnkSiguiente"><@show.labelOnly key="paginador.siguiente"/>&nbsp;${paginador.tamanoPagina?c}</a>
									</#if>
								</td>
							</tr>
						</#if>
						
					</table>
				</td>
			</tr>
		</table>
	</form>
</@show.page>