<!-- Inicio Productor -->
<table width="724" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td width="8" height="11" valign="top"><img src="img/im_corner_1.png" width="8" height="11" alt="" border="0"></td>
		<td width="708" rowspan="3" bgcolor="#FFFFFF" valign="top">
			<table width="708" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td background="img/im_linea_1.gif"><img src="img/im_linea_1.gif" width="8" height="2" alt="" border="0" valign="top"></td>
				</tr>
				<tr>
					<td>
						<table>
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
														<td height="17" width="100" class="clsTxArialBlc10" background="img/bg_clasificado_final.gif">&nbsp;<strong><@show.label key="tarjeta.productor.nombre"/></strong></td>
														<td bgcolor="#7bb3ba"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
														<td width="237" class="clsTxArialNgr7">
															<@show.inputText key="tarjeta.productor.nombre" required="true" style="null" value="${tarjeta.productor.nombre}" size="10" class="txEquipos" maxlength="200" disabled="${readOnly?string}"/>
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
														<td height="17" width="100" class="clsTxArialBlc10" background="img/bg_clasificado_final.gif">&nbsp;<strong><@show.label key="tarjeta.productor.dni"/></strong></td>
														<td bgcolor="#7bb3ba"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
														<td width="237" class="clsTxArialNgr7">
															<@show.inputText key="tarjeta.productor.DNI" required="true" style="null" value="${tarjeta.productor.DNI}" size="10" class="txEquipos" maxlength="50" disabled="${readOnly?string}"/>
														</td>
													</tr>
												</table>
											</td>
										</tr>
										<tr>
											<td class="tableFinal">
												<table width="338" cellspacing="0" cellpadding="0">
													<tr>
														<td height="17" width="100" class="clsTxArialBlc10" background="img/bg_clasificado_final.gif">&nbsp;<strong><@show.label key="tarjeta.productor.localidad"/></strong></td>
														<td bgcolor="#7bb3ba"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
														<td width="237" class="clsTxArialNgr7">
															<@show.inputText key="tarjeta.productor.localidad" required="true" style="null" value="${tarjeta.productor.localidad}" size="10" class="txEquipos" maxlength="200" disabled="${readOnly?string}"/>
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
														<td height="11" width="100" class="clsTxArialBlc10" background="img/bg_clasificado_final.gif">&nbsp;<strong><@show.label key="tarjeta.productor.provincia"/></strong></td>
														<td bgcolor="#7bb3ba"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
														<td width="237" class="clsTxArialNgr7">
															<select name="tarjeta.productor.provincia.id" id="tarjeta.productor.provincia.id" class="slcEquipos" <#if readOnly>disabled</#if> >
																<option value="-1"><@show.labelOnly key="tarjeta.productor.seleccioneProvincia"/></option>
																<#list Provincias as provincia>
																	<option value="${provincia.id?c}" <#if provincia.id?c == tarjeta.productor.provincia.id?c>selected</#if> >${provincia.nombre}</option>
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
									</table>
								
								</td>
								
								<td><img src="img/punto.gif" width="16" height="1" alt="" border="0"></td>
								
								<td>
									<table width="338" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td><img src="img/punto.gif" width="1" height="3" alt="" border="0"></td>
										</tr>
										<tr>
											<td class="tableFinal">
												<table width="338" cellspacing="0" cellpadding="0">
													<tr>
														<td height="17" width="100" class="clsTxArialBlc10" background="img/bg_clasificado_final.gif">&nbsp;<strong><@show.label key="tarjeta.productor.email"/></strong></td>
														<td bgcolor="#7bb3ba"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
														<td width="237" class="clsTxArialNgr7">
															<@show.inputText key="tarjeta.productor.EMail" required="true" style="null" value="${tarjeta.productor.EMail}" size="10" class="txEquipos" maxlength="200" disabled="${readOnly?string}"/>
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
														<td height="17" width="100" class="clsTxArialBlc10" background="img/bg_clasificado_final.gif">&nbsp;<strong><@show.label key="tarjeta.productor.establecimiento"/></strong></td>
														<td bgcolor="#7bb3ba"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
														<td width="237" class="clsTxArialNgr7">
															<@show.inputText key="tarjeta.productor.establecimiento" required="true" style="null" value="${tarjeta.productor.establecimiento}" size="10" class="txEquipos" maxlength="50" disabled="${readOnly?string}"/>
														</td>
													</tr>
												</table>
											</td>
										</tr>
										<tr>
											<td class="tableFinal">
												<table width="338" cellspacing="0" cellpadding="0">
													<tr>
														<td height="17" width="100" class="clsTxArialBlc10" background="img/bg_clasificado_final.gif">&nbsp;<strong><@show.label key="tarjeta.productor.tipoExplotacion"/></strong></td>
														<td bgcolor="#7bb3ba"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
														<td width="237" class="clsTxArialNgr7">
															<!-- @show.inputText key="tarjeta.productor.tipoExplotacion" required="true" style="null" value=" $ { t arjeta.productor.tipoExplotacion}" size="10" class="txEquipos" maxlength="200" disabled=" $ { r eadOnly?string}"/ -->
															<select name="tarjeta.productor.tipoExplotacion" id="tarjeta.productor.tipoExplotacion" class="slcEquipos" <#if readOnly>disabled</#if>>
																<option value="C" <#if "C" == tarjeta.productor.tipoExplotacion > selected </#if>><@show.labelOnly key="tarjeta.productor.tipoExplotacion.cria"/></option>
																<option value="I" <#if "I" == tarjeta.productor.tipoExplotacion > selected </#if>><@show.labelOnly key="tarjeta.productor.tipoExplotacion.invernada"/></option>
																<option value="T" <#if "T" == tarjeta.productor.tipoExplotacion > selected </#if>><@show.labelOnly key="tarjeta.productor.tipoExplotacion.tambo"/></option>
																<option value="F" <#if "F" == tarjeta.productor.tipoExplotacion > selected </#if>><@show.labelOnly key="tarjeta.productor.tipoExplotacion.feedLot"/></option>
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
														<td height="17" width="100" class="clsTxArialBlc10" background="img/bg_clasificado_final.gif">&nbsp;<strong><@show.label key="tarjeta.productor.cabezas"/></strong></td>
														<td bgcolor="#7bb3ba"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
														<td width="237" class="clsTxArialNgr7">
															<@show.inputText key="tarjeta.productor.cabezas" required="true" style="null" value="${tarjeta.productor.cabezas?c}" size="10" class="txEquipos" maxlength="10" disabled="${readOnly?string}"/>
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
						</table>
					
					</td>
				</tr>
				<tr><td><@show.labelErrorField key="error.productor.general"/></td></tr>
				<tr>
					<td background="img/im_linea_2.gif"><img src="img/im_linea_2.gif" width="8" height="2" alt="" border="0"></td>
				</tr>
			</table>
		</td>
		<td width="8" height="11" valign="top"><img src="img/im_corner_2.png" width="8" height="11" alt="" border="0"></td>
	</tr>
	<tr>
		<td height="90" background="img/im_linea_3.gif"><img src="img/im_linea_3.gif" width="8" height="9" alt="" border="0"></td>
		<td background="img/im_linea_4.gif" valign="bottom"><img src="img/im_linea_4.gif" width="8" height="9" alt="" border="0"></td>
	</tr>
	<tr>
		<td height="11" valign="bottom"><img src="img/im_corner_3.png" width="8" height="11" alt="" border="0"></td>
		<td height="11" valign="bottom"><img src="img/im_corner_4.png" width="8" height="11" alt="" border="0"></td>
	</tr>
	<tr>
		<td colspan="3"><img src="img/punto.gif" width="1" height="5" alt="" border="0"></td>
	</tr>
</table>
<!-- Fin Productor -->