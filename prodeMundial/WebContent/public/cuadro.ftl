<!-- Inicio ultimo cuadro (tabla)-->
<table width="354" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td width="8" height="11" valign="top"><img src="img/im_corner_1.png" style="filter:progid:DXImageTransform.Microsoft.AlphaImageLoader (src='img/im_corner_1.png',sizingMethod='scale');" width="8" height="11" alt="" border="0"></td>
		<td width="338" rowspan="3" bgcolor="#FFFFFF">
			<table width="338" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td background="img/im_linea_1.gif"><img src="img/im_linea_1.gif" width="8" height="2" alt="" border="0"></td>
				</tr>
				<tr>
					<td>
						<table width="338" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td><img src="img/punto.gif" width="1" height="3" alt="" border="0"></td>
							</tr>
							<tr>
								<td class="tableFinal">
									<table width="338" cellspacing="0" cellpadding="0">
										<tr>
											<td height="11" width="80" class="clsTxArialBlc10" background="img/bg_clasificado_final.gif">&nbsp;<strong><@show.label key="tarjeta.subcampeon"/></strong></td>
											<td bgcolor="#7bb3ba"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
											<td width="257" class="clsTxArialNgr7">
												<select name="tarjeta.equipoSubcampeon.id" id="tarjeta.equipoSubcampeon.id" class="slcEquipos" <#if readOnly>disabled</#if> >
													<option value="-1"><@show.labelOnly key="tarjeta.seleccioneEquipo"/></option>
													<#list Equipos as equipo>
														<option value="${equipo.id?c}" <#if equipo.id?c == tarjeta.equipoSubcampeon.id?c>selected</#if> >${equipo.descripcion}</option>
													</#list>
												</select>
											</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
							</tr>
							<tr>
								<td class="tableFinal">
									<table width="338" cellspacing="0" cellpadding="0">
										<tr>
											<td height="17" width="80" class="clsTxArialBlc10" background="img/bg_clasificado_final.gif">&nbsp;<strong><@show.label key="tarjeta.campeon"/></strong></td>
											<td bgcolor="#7bb3ba"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
											<td width="257" class="clsTxArialNgr7">
												<select name="tarjeta.equipoCampeon.id" id="tarjeta.equipoCampeon.id" class="slcEquipos" <#if readOnly>disabled</#if> >
													<option value="-1"><@show.labelOnly key="tarjeta.seleccioneEquipo"/></option>
													<#list Equipos as equipo>
														<option value="${equipo.id?c}" <#if equipo.id?c == tarjeta.equipoCampeon.id?c>selected</#if> >${equipo.descripcion}</option>				
													</#list>
												</select>
											</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
							</tr>
							<tr>
								<td class="tableFinal">
									<table width="338" cellspacing="0" cellpadding="0">
										<tr>
											<td height="17" width="80" class="clsTxArialBlc10" background="img/bg_clasificado_final.gif">&nbsp;<strong><@show.label key="tarjeta.mejorJugador"/></strong></td>
											<td bgcolor="#7bb3ba"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
											<td width="257" class="clsTxArialNgr7">
												<@show.inputText key="tarjeta.mejorJugador" required="true" style="null" value="${tarjeta.mejorJugador}" size="10" class="txEquipos" maxlength="100" disabled="${readOnly?string}"/>
											</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
							</tr>
							<tr>
								<td class="tableFinal">
									<table width="338" cellspacing="0" cellpadding="0">
										<tr>
											<td height="17" width="80" class="clsTxArialBlc10" background="img/bg_clasificado_final.gif">&nbsp;<strong><@show.label key="tarjeta.goleador"/></strong></td>
											<td bgcolor="#7bb3ba"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
											<td width="257" class="clsTxArialNgr7">
												<@show.inputText key="tarjeta.goleador" required="true" style="null" value="${tarjeta.goleador}" size="10" class="txEquipos" maxlength="100" disabled="${readOnly?string}"/>
											</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td><img src="img/punto.gif" width="1" height="3" alt="" border="0"></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr><td><@show.labelErrorField key="error.grupo.general"/></td></tr>
				<tr>
					<td background="img/im_linea_2.gif"><img src="img/im_linea_2.gif" width="8" height="2" alt="" border="0"></td>
				</tr>
			</table>
		</td>
		<td width="8" height="11" valign="top"><img src="img/im_corner_2.png" style="filter:progid:DXImageTransform.Microsoft.AlphaImageLoader (src='img/im_corner_2.png',sizingMethod='scale');" width="8" height="11" alt="" border="0"></td>
	</tr>
	<tr>
		<td height="90" background="img/im_linea_3.gif"><img src="img/im_linea_3.gif" width="8" height="9" alt="" border="0"></td>
		<td background="img/im_linea_4.gif"><img src="img/im_linea_4.gif" width="8" height="9" alt="" border="0"></td>
	</tr>
	<tr>
		<td height="11" valign="bottom"><img src="img/im_corner_3.png" style="filter:progid:DXImageTransform.Microsoft.AlphaImageLoader (src='img/im_corner_3.png',sizingMethod='scale');" width="8" height="11" alt="" border="0"></td>
		<td height="11" valign="bottom"><img src="img/im_corner_4.png" style="filter:progid:DXImageTransform.Microsoft.AlphaImageLoader (src='img/im_corner_4_t.png',sizingMethod='scale');" width="8" height="11" alt="" border="0"></td>
	</tr>
	<tr>
		<td colspan="3"><img src="img/punto.gif" width="1" height="5" alt="" border="0"></td>
	</tr>
</table>
<!-- fin ultimo cuadro (tabla)-->