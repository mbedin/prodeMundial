<!-- Inicio clasificados -->
	<#list tarjeta.pronosticosClasificacion as pronosticoClasificacion>
		<#if (pronosticoClasificacion.grupo.id?c == grupo.id?c) >
			<tr>
				<td class="tableClasificado">
					<table width="336" cellspacing="0" cellpadding="0">
						<tr>
							<td height="17" width="70" class="clsTxArialBlc10" background="img/bg_clasificado.gif">&nbsp;<strong><@show.label key="tarjeta.clasifica1"/></strong></td>
							<td bgcolor="#e5b488"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
							<td width="265" class="clsTxArialNgr7">
								<select name="claPrimero_${pronosticoClasificacion.id?c}" id="claPrimero_${pronosticoClasificacion.id?c}" class="slcEquipos" <#if readOnly>disabled</#if>>
									<option value="-1"><@show.labelOnly key="tarjeta.seleccioneEquipo"/></option>
									<#list grupo.equipos as equipo>
										<option value="${equipo.id?c}" <#if equipo.id?c == pronosticoClasificacion.equipoPrimero.id?c>selected</#if> >${equipo.descripcion}</option>
									</#list>
								</select>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td><img src="img/punto.gif" width="1" height="2" alt="" border="0"></td>
			</tr>
			<tr>
				<td class="tableClasificado">
					<table width="336" cellspacing="0" cellpadding="0">
						<tr>
							<td height="17" width="70" class="clsTxArialBlc10" background="img/bg_clasificado.gif">&nbsp;<strong><@show.label key="tarjeta.clasifica2"/></strong></td>
							<td bgcolor="#e5b488"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
							<td width="265" class="clsTxArialNgr7">
								<select name="claSegundo_${pronosticoClasificacion.id?c}" id="claSegundo_${pronosticoClasificacion.id?c}" class="slcEquipos" <#if readOnly>disabled</#if>>
									<option value="-1"><@show.labelOnly key="tarjeta.seleccioneEquipo"/></option>
									<#list grupo.equipos as equipo>
										<option value="${equipo.id?c}" <#if equipo.id?c == pronosticoClasificacion.equipoSegundo.id?c>selected</#if> >${equipo.descripcion}</option>
									</#list>
								</select>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td><img src="img/punto.gif" width="1" height="3" alt="" border="0"></td>
			</tr>
		</#if>
	</#list>
<!-- fin clasificados -->					