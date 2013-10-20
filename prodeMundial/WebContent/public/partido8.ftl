<!-- Inicio partido (trs)=-->
		<#if (partido.permiteCarga) >
			<tr>
				<td class="tableGrupos">
					<table border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="18" class="clsTxArialBlc10" align="center"><@show.label key="tarjeta.local"/></td>
							<td width="1" bgcolor="#FFFFFF"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
							<td width="140" class="clsTxArialBlc10" align="right">&nbsp;${partido.fecha?string("dd/MM")} - ${partido.hora?string("HH:mm")} hs.</td>
							<td width="1" bgcolor="#FFFFFF"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
							<td width="18" class="clsTxArialBlc10" align="center"><@show.label key="tarjeta.empate"/></td>
							<td width="1" bgcolor="#FFFFFF"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
							<td width="140" class="clsTxArialBlc10" align="right">${partido.sede.descripcion}&nbsp;</td>
							<td width="1" bgcolor="#FFFFFF"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
							<td width="18" class="clsTxArialBlc10" align="center"><@show.label key="tarjeta.visitante"/></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td height="22" valign="middle">
					<table border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="18" class="clsTxArialBlc7" align="center">
								<@show.checkboxEspecial name="parLocal_${pronosticoPartido.id?c}" id="parLocal_${pronosticoPartido.id?c}" value="true" checked="${pronosticoPartido.esLocal?string}" disabled=false onclick="javascript: chkLEV_click(this);" cssClass="radioButtons2" disabled="${readOnly?string}"/>
							</td>
							<td width="1" bgcolor="#FFFFFF"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
							<td width="140" class="clsTxArialNgr10" align="left">&nbsp;<img src="img/banderas/${partido.equipoLocal.imagenBandera}" alt="${partido.equipoLocal.descripcion}" width="22" height="15" hspace="4" border="0" align="absmiddle">${partido.equipoLocal.descripcion}</td>
							<td width="1" bgcolor="#FFFFFF"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
							<td width="18" class="clsTxArialBlc7" align="center">
								<@show.checkboxEspecial name="parEmpate_${pronosticoPartido.id?c}" id="parEmpate_${pronosticoPartido.id?c}" value="true" checked="${pronosticoPartido.esEmpate?string}" disabled=false onclick="javascript: chkLEV_click(this);" cssClass="radioButtons2" disabled="true"/>								
							</td>
							<td width="1" bgcolor="#FFFFFF"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
							<td width="140" class="clsTxArialNgr10" align="right">${partido.equipoVisitante.descripcion}<img src="img/banderas/${partido.equipoVisitante.imagenBandera}" alt="${partido.equipoVisitante.descripcion}" width="22" height="15" hspace="4" border="0" align="absmiddle">&nbsp;</td>
							<td width="1" bgcolor="#FFFFFF"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
							<td width="18" class="clsTxArialBlc7" align="center">
								<@show.checkboxEspecial name="parVisitante_${pronosticoPartido.id?c}" id="parVisitante_${pronosticoPartido.id?c}" value="true" checked="${pronosticoPartido.esVisitante?string}" disabled=false onclick="javascript: chkLEV_click(this);" cssClass="radioButtons2"  disabled="${readOnly?string}"/>								
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<#if (partido.equipoLocal.resultadoRequerido || partido.equipoVisitante.resultadoRequerido ) >
				<tr>
					<td height="22" valign="middle">
						<table border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td width="18" class="clsTxArialBlc7" align="center">
									<@show.inputText key="golLocal_${pronosticoPartido.id?c}" required="true" style="null" value="${pronosticoPartido.golesLocal}" size="3" class="textButton" maxlength="2" disabled="${readOnly?string}"/>
								</td>
								<td width="1" bgcolor="#FFFFFF"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
								<td width="300" class="tableResultados" align="center"><@show.label key="tarjeta.resultado"/></td>
								<td width="1" bgcolor="#FFFFFF"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
								<td width="18" class="clsTxArialBlc7" align="center">
									<@show.inputText key="golVisitante_${pronosticoPartido.id?c}" required="true" style="null" value="${pronosticoPartido.golesVisitante}" size="3" class="textButton" maxlength="2"  disabled="${readOnly?string}"/>													
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</#if>	
			<tr>
				<td><img src="img/punto.gif" width="1" height="3" alt="" border="0"></td>
			</tr>
		<#else>
			<tr>
				<td class="tableGrupos">
					<table border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="18" class="clsTxArialBlc10" align="center"><@show.label key="tarjeta.local"/></td>
							<td width="1" bgcolor="#FFFFFF"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
							<td width="140" class="clsTxArialBlc10" align="right">&nbsp;${partido.fecha?string("dd/MM")} - ${partido.hora?string("HH:mm")} hs.</td>
							<td width="1" bgcolor="#FFFFFF"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
							<td width="18" class="clsTxArialBlc10" align="center"><@show.label key="tarjeta.empate"/></td>
							<td width="1" bgcolor="#FFFFFF"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
							<td width="140" class="clsTxArialBlc10" align="right">${partido.sede.descripcion}&nbsp;</td>
							<td width="1" bgcolor="#FFFFFF"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
							<td width="18" class="clsTxArialBlc10" align="center"><@show.label key="tarjeta.visitante"/></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td height="22" valign="middle">
					<table border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="18" class="clsTxArialBlc7" align="center">
								<@show.checkboxEspecial name="parLocal_${pronosticoPartido.id?c}" id="parLocal_${pronosticoPartido.id?c}" value="true" checked="${pronosticoPartido.esLocal?string}" disabled=false onclick="javascript: chkLEV_click(this);" cssClass="radioButtons2" disabled="true"/>
							</td>
							<td width="1" bgcolor="#FFFFFF"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
							<td width="140" class="clsTxArialNgr10" align="left">&nbsp;<img src="img/banderas/${partido.equipoLocal.imagenBandera}" alt="${partido.equipoLocal.descripcion}" width="22" height="15" hspace="4" border="0" align="absmiddle">${partido.equipoLocal.descripcion}</td>
							<td width="1" bgcolor="#FFFFFF"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
							<td width="18" class="clsTxArialBlc7" align="center">
								<@show.checkboxEspecial name="parEmpate_${pronosticoPartido.id?c}" id="parEmpate_${pronosticoPartido.id?c}" value="true" checked="${pronosticoPartido.esEmpate?string}" disabled=false onclick="javascript: chkLEV_click(this);" cssClass="radioButtons2" disabled="true"/>								
							</td>
							<td width="1" bgcolor="#FFFFFF"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
							<td width="140" class="clsTxArialNgr10" align="right">${partido.equipoVisitante.descripcion}<img src="img/banderas/${partido.equipoVisitante.imagenBandera}" alt="${partido.equipoVisitante.descripcion}" width="22" height="15" hspace="4" border="0" align="absmiddle">&nbsp;</td>
							<td width="1" bgcolor="#FFFFFF"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
							<td width="18" class="clsTxArialBlc7" align="center">
								<@show.checkboxEspecial name="parVisitante_${pronosticoPartido.id?c}" id="parVisitante_${pronosticoPartido.id?c}" value="true" checked="${pronosticoPartido.esVisitante?string}" disabled=false onclick="javascript: chkLEV_click(this);" cssClass="radioButtons2"  disabled="true"/>								
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<#if (partido.equipoLocal.resultadoRequerido || partido.equipoVisitante.resultadoRequerido ) >
				<tr>
					<td height="22" valign="middle">
						<table border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td width="18" class="clsTxArialBlc7" align="center">
									<@show.inputText key="golLocal_${pronosticoPartido.id?c}" required="true" style="null" value="${pronosticoPartido.golesLocal}" size="3" class="textButton" maxlength="2" disabled="true"/>
								</td>
								<td width="1" bgcolor="#FFFFFF"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
								<td width="300" class="tableResultados" align="center"><@show.label key="tarjeta.resultado"/></td>
								<td width="1" bgcolor="#FFFFFF"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
								<td width="18" class="clsTxArialBlc7" align="center">
									<@show.inputText key="golVisitante_${pronosticoPartido.id?c}" required="true" style="null" value="${pronosticoPartido.golesVisitante}" size="3" class="textButton" maxlength="2"  disabled="true"/>													
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</#if>	
			<tr>
				<td><img src="img/punto.gif" width="1" height="3" alt="" border="0"></td>
			</tr>
		</#if>
<!-- fin partido (trs)=-->