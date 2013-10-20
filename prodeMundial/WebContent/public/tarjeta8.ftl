<#ftl>
<#import "/common/showMacros.ftl" as show>
<@show.page image="img/bg_tarjeta.jpg">
	<form name="frmMain" id="frmMain" method="post">
	 	<@show.hidden name="hdnRetorno" value="${retorno}" />
	 	<@show.hidden name="tarjeta.id" value="${tarjeta.id?c}" />
	 	<table height="537" width="760" border="0" cellspacing="0" cellpadding="0" align="center" background="img/bg_tarjeta.jpg">
			<tr>
				<td height="305" valign="top" align="right">
					<table border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td colspan="2"><img src="img/punto.gif" width="1" height="183" alt="" border="0"></td>
						</tr>
						<tr>
							<td width="240" align="right">
								<#if (!readOnly)>
									<a href="#" id="btnAceptar8"><img src="img/bo_cargartarjeta.gif" width="113" height="31" alt="" border="0"></a>
								<#else>
									<a href="#" id="btnModificar8"><img src="img/bo_modificartarjeta.gif" width="113" height="31" alt="" border="0"></a>
								</#if>
							</td>
							<td width="31"><img src="img/punto.gif" width="31" height="1" alt="" border="0"></td>
						</tr>
						<tr>
							<td colspan="2"><img src="img/punto.gif" width="1" height="10" alt="" border="0"></td>
						</tr>
						<tr>
							<td align="right"><a href="#" id="btnVolver"><img src="img/bo_volveratras.gif" width="113" height="30" alt="" border="0"></a></td>
							<td width="31"><img src="img/punto.gif" width="31" height="1" alt="" border="0"></td>
						</tr>
						<tr>
							<td colspan="2"><img src="img/punto.gif" width="1" height="14" alt="" border="0"></td>
						</tr>
						<tr>
							<td colspan="2" align="left" class="clsTxArialBlc22">
								<#if (!tarjeta.estaCompleta)>
									<@show.label key="tarjeta.porJugar"/>
								<#else>
									<@show.label key="tarjeta.jugada"/> 
								</#if>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td valign="top">
					<table border="0" cellspacing="0" cellpadding="0" align="center">
						<tr>
							<td colspan="5"><img src="img/punto.gif" width="1" height="5" alt="" border="0"></td>
						</tr>
						<tr>
							<td><img src="img/punto.gif" width="16" height="17" alt="" border="0"></td>

							<#assign idGrupo = 0 />
							<#assign i = 0 />
							<#list tarjeta.pronosticosPartidos as pronosticoPartido>
								<#if idGrupo != pronosticoPartido.partido.grupo.id>
									<#if idGrupo gt 0 >
										<#include "fingrupo8.ftl" />
										</td>
										<td><img src="img/punto.gif" width="16" height="17" alt="" border="0"></td>
										<#if ((i%4)==0)>
											<#if i gt 0>
												</tr>
												<tr>
													<td><img src="img/punto.gif" width="16" height="17" alt="" border="0"></td>
											</#if>
										</#if>
									</#if>
									<#assign idGrupo = pronosticoPartido.partido.grupo.id />
									<#assign grupo = pronosticoPartido.partido.grupo />
		
									<td width="354" valign="top" align="center">
									<#include "iniciogrupo8.ftl" />
								</#if>
								
								<#assign partido = pronosticoPartido.partido />
								<#include "partido8.ftl" />		
								
								<#assign i = i + 1 />
			
							
							</#list>
							<#include "fingrupo8.ftl" />
							</td>
							<td><img src="img/punto.gif" width="16" height="17" alt="" border="0"></td>
						</tr>

						
						<tr>
							<td><img src="img/punto.gif" width="16" height="17" alt="" border="0"></td>
							<td width="354" valign="top" align="center">
								&nbsp;
							</td>
							<td><img src="img/punto.gif" width="16" height="17" alt="" border="0"></td>
							<td align="right" class="clsTxArialBlc16" valign="bottom">
								<@show.label key="tarjeta.tarjetaProde"/> ${tarjeta.numeroTarjeta}
							</td>
							<td><img src="img/punto.gif" width="16" height="17" alt="" border="0"></td>
						</tr>

					</table>
													
				</td>
			</tr>
		</table>
	</form>
</@show.page>	 	
