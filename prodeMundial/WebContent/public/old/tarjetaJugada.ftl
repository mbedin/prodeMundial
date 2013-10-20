<#ftl>
<#import "/common/showMacros.ftl" as show>
<@show.page>
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
							<#list 0..grupos.size()-1 as i>
								<#if ((i%3)==0)>
									<#if i gt 0>
										</tr>
										<tr>
									</#if>
								</#if>
								<td>
									<#assign grupo = grupos[i] />
									${grupo.descripcion}
									<table>
										<#list 0..grupo.partidos.size()-1 as j>
											<#assign partido = grupo.partidos[j] />
											<tr><td colspan=5>${partido.sede.descripcion}</td></tr>
											<tr>
												<td><@show.checkbox name="local" id="local" value="false" disabled=false/></td>
												<td align=left>${partido.equipoLocal.descripcion}</td>
												<td><@show.checkbox name="empate" id="empate" value="false" disabled=false/></td>
												<td align=right>${partido.equipoVisitante.descripcion}</td>
												<td><@show.checkbox name="visitante" id="visitante" value="false" disabled=false/></td>
											</tr>
											<#if (partido.equipoLocal.resultadoRequerido == 1  || partido.equipoVisitante.resultadoRequerido == 1) >
												<tr>
													<td><@show.inputText key="tarjeta.local" disabled="false" required="true" style="null" value="" size="3" class="inputTextRes" maxlength="2"/></td>
													<td colspan=3 align=center><@show.label key="tarjeta.resultado"/></td>
													<td><@show.inputText key="tarjeta.visitante" disabled="false" required="true" style="null" value="" size="3" class="inputTextRes" maxlength="2"/></td>
												</tr>
											</#if>
	
										</#list>
										<tr>
											<td colspan=5>
												<table>
													<tr>
														<td><@show.label key="tarjeta.clasifica1"/></td>
														<td>
															<select name="calsifica1" id="calsifica1" class="selectFixed">
																<option value="-1"><@show.labelOnly key="tarjeta.seleccioneEquipo"/></option>
																<#list grupo.equipos as equipo>
																	<option value="${equipo.id?c}">${equipo.descripcion}</option>				
																</#list>
															</select>
															<@show.labelErrorField key="tarjetaPorJugar.clasifica1"/>
														</td>
													</tr>
													<tr>
														<td><@show.label key="tarjeta.clasifica2"/></td>
														<td>
															<select name="calsifica2" id="calsifica2" class="selectFixed">
																<option value="-1"><@show.labelOnly key="tarjeta.seleccioneEquipo"/></option>
																<#list grupo.equipos as equipo>
																	<option value="${equipo.id?c}">${equipo.descripcion}</option>				
																</#list>
															</select>
															<@show.labelErrorField key="tarjetaPorJugar.clasifica2"/>
														</td>														
													</tr>
												</table>
											</td>
										</tr>
									</table>								
									
								</td>
							</#list>

							<td>
								<table>
									<tr>
										<td><@show.label key="tarjeta.subcampeon"/></td>
										<td>
							 				<select name="subcampeon" id="subcampeon" class="selectFixed">
												<option value="-1"><@show.labelOnly key="tarjeta.seleccioneEquipo"/></option>
												<#list Equipos as equipo>
													<option value="${equipo.id?c}">${equipo.descripcion}</option>				
												</#list>
											</select>
											<@show.labelErrorField key="tarjetaPorJugar.campeon"/>
										</td>
									</tr>
									<tr>
										<td><@show.label key="tarjeta.campeon"/></td>
										<td>
							 				<select name="campeon" id="campeon" class="selectFixed">
												<option value="-1"><@show.labelOnly key="tarjeta.seleccioneEquipo"/></option>
												<#list Equipos as equipo>
													<option value="${equipo.id?c}">${equipo.descripcion}</option>				
												</#list>
											</select>
											<@show.labelErrorField key="tarjetaPorJugar.campeon"/>
										</td>
									</tr>
									<tr>
										<td><@show.label key="tarjeta.mejorJugador"/></td>
										<td><@show.inputText key="tarjeta.mejorJugador" disabled="false" required="true" style="null" value="" size="10" class="inputText" maxlength="100"/></td>
									</tr>
									<tr>
										<td><@show.label key="tarjeta.goleador"/></td>
										<td><@show.inputText key="tarjeta.goleador" disabled="false" required="true" style="null" value="" size="10" class="inputText" maxlength="100"/></td>
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
	</form>
</@show.page>