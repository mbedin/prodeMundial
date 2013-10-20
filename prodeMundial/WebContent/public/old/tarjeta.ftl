<#ftl>
<#import "/common/showMacros.ftl" as show>
<@show.page cssClass="clsBody">
	<form name="frmMain" id="frmMain" method="post">
	 	<@show.hidden name="hdnRetorno" value="${retorno}" />
		<table width="760" cellspacing="0" cellpadding="0" border="0">
			<tr>
				<td colspan="2"><@show.label key="tarjetaPorJugar.titulo"/></td>
			</tr>

			<tr>
				<td colspan="2">
					<table border=1>
						<tr>
							<#assign idGrupo = 0 />
							<#assign i = 0 />
							<#list tarjeta.pronosticosPartidos as pronosticoPartido>
								<#if idGrupo != pronosticoPartido.partido.grupo.id>
									<#if idGrupo gt 0 >
											</table>
										</td>
										<#if ((i%3)==0)>
											<#if i gt 0>
												</tr>
												<tr>
											</#if>
										</#if>
									</#if>
									<#assign idGrupo = pronosticoPartido.partido.grupo.id />
									<#assign grupo = pronosticoPartido.partido.grupo />
									<td>
										<table>
											<tr><td colspan=5>${grupo.descripcion}</td></tr>
								</#if>
								
								<#assign partido = pronosticoPartido.partido />
								<tr><td colspan=5>${partido.sede.descripcion}</td></tr>
								<tr>
									<td><@show.checkboxEspecial name="parLocal_${pronosticoPartido.id?c}" id="parLocal_${pronosticoPartido.id?c}" value="true" checked="${pronosticoPartido.esLocal?string}" disabled=false onclick="javascript: chkLEV_click(this);"/></td>
									<td align=left>${partido.equipoLocal.descripcion}</td>
									<td><@show.checkboxEspecial name="parEmpate_${pronosticoPartido.id?c}" id="parEmpate_${pronosticoPartido.id?c}" value="true" checked="${pronosticoPartido.esEmpate?string}" disabled=false onclick="javascript: chkLEV_click(this);"/></td>
									<td align=right>${partido.equipoVisitante.descripcion}</td>
									<td><@show.checkboxEspecial name="parVisitante_${pronosticoPartido.id?c}" id="parVisitante_${pronosticoPartido.id?c}" value="true" checked="${pronosticoPartido.esVisitante?string}" disabled=false onclick="javascript: chkLEV_click(this);"/></td>
								</tr>
								<tr><td colspan=5><@show.labelErrorVirtualField key="partido_resultado_${pronosticoPartido.id?c}"/></td></tr>
								
								<#if (partido.equipoLocal.resultadoRequerido || partido.equipoVisitante.resultadoRequerido ) >
									<tr>
										<td><@show.inputText key="golLocal_${pronosticoPartido.id?c}" disabled="false" required="true" style="null" value="${pronosticoPartido.golesLocal}" size="3" class="inputTextRes" maxlength="2"/></td>
										<td colspan=3 align=center><@show.label key="tarjeta.resultado"/></td>
										<td><@show.inputText key="golVisitante_${pronosticoPartido.id?c}" disabled="false" required="true" style="null" value="${pronosticoPartido.golesVisitante}" size="3" class="inputTextRes" maxlength="2"/></td>
									</tr>
									<tr><td colspan=5><@show.labelErrorVirtualField key="partido_goles_${pronosticoPartido.id?c}"/></td></tr>
								</#if>

								<#assign i = i + 1 />
								
								<#if ((i%2)==0)>
									<tr>
										<td colspan=5>
											<table>
												<#list tarjeta.pronosticosClasificacion as pronosticoClasificacion>
													<#if (pronosticoClasificacion.grupo.id?c == grupo.id?c) >
														<tr>
															<td><@show.label key="tarjeta.clasifica1"/></td>
															<td>
																<select name="claPrimero_${pronosticoClasificacion.id?c}" id="claPrimero_${pronosticoClasificacion.id?c}" class="selectFixed">
																	<option value="-1"><@show.labelOnly key="tarjeta.seleccioneEquipo"/></option>
																	<#list grupo.equipos as equipo>
																		<option value="${equipo.id?c}" <#if equipo.id?c == pronosticoClasificacion.equipoPrimero.id?c>selected</#if> >${equipo.descripcion}</option>
																	</#list>
																</select>
																<@show.labelErrorField key="claPrimero_${pronosticoClasificacion.id?c}"/>
															</td>
														</tr>
														<tr>
															<td><@show.label key="tarjeta.clasifica2"/></td>
															<td>
																<select name="claSegundo_${pronosticoClasificacion.id?c}" id="claSegundo_${pronosticoClasificacion.id?c}" class="selectFixed">
																	<option value="-1"><@show.labelOnly key="tarjeta.seleccioneEquipo"/></option>
																	<#list grupo.equipos as equipo>
																		<option value="${equipo.id?c}" <#if equipo.id?c == pronosticoClasificacion.equipoSegundo.id?c>selected</#if> >${equipo.descripcion}</option>
																	</#list>
																</select>
																<@show.labelErrorField key="claSegundo_${pronosticoClasificacion.id?c}"/>
															</td>
														</tr>
													</#if>
												</#list>
											</table>
										</td>
									</tr>
								</#if>
								
							</#list>

								</table>
							</td>
							<td>
								<table>
									<tr>
										<td><@show.label key="tarjeta.subcampeon"/></td>
										<td>
							 				<select name="tarjeta.equipoSubcampeon.id" id="tarjeta.equipoSubcampeon.id" class="selectFixed">
												<option value="-1"><@show.labelOnly key="tarjeta.seleccioneEquipo"/></option>
												<#list Equipos as equipo>
													<option value="${equipo.id?c}" <#if equipo.id?c == tarjeta.equipoSubcampeon.id?c>selected</#if> >${equipo.descripcion}</option>
												</#list>
											</select>
											<@show.labelErrorField key="tarjeta.equipoSubcampeon.id"/>
										</td>
									</tr>
									<tr>
										<td><@show.label key="tarjeta.campeon"/></td>
										<td>
							 				<select name="tarjeta.equipoCampeon.id" id="tarjeta.equipoCampeon.id" class="selectFixed">
												<option value="-1"><@show.labelOnly key="tarjeta.seleccioneEquipo"/></option>
												<#list Equipos as equipo>
													<option value="${equipo.id?c}" <#if equipo.id?c == tarjeta.equipoCampeon.id?c>selected</#if> >${equipo.descripcion}</option>				
												</#list>
											</select>
											<@show.labelErrorField key="tarjeta.equipoCampeon.id"/>
										</td>
									</tr>
									<tr>
										<td><@show.label key="tarjeta.mejorJugador"/></td>
										<td><@show.inputText key="tarjeta.mejorJugador" disabled="false" required="true" style="null" value="${tarjeta.mejorJugador}" size="10" class="inputText" maxlength="100"/></td>
									</tr>
									<tr>
										<td><@show.label key="tarjeta.goleador"/></td>
										<td><@show.inputText key="tarjeta.goleador" disabled="false" required="true" style="null" value="${tarjeta.goleador}" size="10" class="inputText" maxlength="100"/></td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>			
			<tr>
				<td colspan="2">
					<@show.label key="tarjetaPorJugar.tarjetaProde"/> ${tarjeta.numeroTarjeta}
				</td>
			</tr>			
			<tr>
				<td colspan="2">
					<@show.button key="general.button.aceptar" id="btnAceptar"/><br>
					<@show.button key="general.button.volver" id="btnVolver"/><br>
					<@show.hidden name="tarjeta.id" value="${tarjeta.id?c}" />
				</td>				
			</tr>
			
		</table>
		
	</form>
</@show.page>