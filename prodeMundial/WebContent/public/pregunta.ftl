<#ftl>
<#import "/common/showMacros.ftl" as show>
<@show.page image="img/bg_${respuestaCliente.pregunta.puntos?c}puntos.jpg">
	<form name="frmMain" id="frmMain" method="post">
		<@show.hidden name="hdnRetorno" value="${retorno}" />
		<@show.hidden name="respuestaCliente.id" value="${respuestaCliente.id?c}" />
		<@show.hidden name="respuestaCliente.pregunta.id" value="${respuestaCliente.pregunta.id?c}" />		
		<table height="538" width="760" border="0" cellspacing="0" cellpadding="0" align="center" background="img/bg_${respuestaCliente.pregunta.puntos?c}puntos.jpg">
			<tr>
				<td colspan="2" height="382" valign="top">
					<table width="418" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td rowspan="11" width="80"><img src="img/punto.gif" width="80" height="1" alt="" border="0"></td>
							<td width="338" colspan="2" height="150"><img src="img/punto.gif" width="1" height="150" alt="" border="0"></td>
						</tr>
						<tr>
							<td colspan="2" class="clsTxArialNar14">${respuestaCliente.pregunta.descripcion}</td>
						</tr>
						<tr>
							<td colspan="2"><img src="img/punto.gif" width="1" height="23" alt="" border="0"></td>
						</tr>
						
						<#list respuestaCliente.pregunta.respuestas as respuesta>
							<tr>
								<td height="20" width="20"><@show.radioButton name="respuestaCliente.respuesta.id" id="respuestaCliente.respuesta.id" value="${respuesta.id?c}" cssClass="radioButtonsPregunta" /></td>
								<td width="318" class="clsTxArialBlc12">${respuesta.descripcion}</td>
							</tr>
							
							<tr>
								<td colspan="2"><img src="img/punto.gif" width="1" height="11" alt="" border="0"></td>
							</tr>
						</#list>

						<tr>
							<td colspan="2"><a href="#" id="btnRespuesta"><img src="img/bo_respuesta.gif" alt="" width="76" height="21" hspace="25" border="0"></a></td>
						</tr>

						<tr>
							<td colspan="2"><@show.labelErrorField key="respuestaCliente.respuesta"/></td>
						</tr>
						
					</table>
				</td>
			</tr>
			<tr>
				<td width="15" valign="top"><img src="img/punto.gif" width="15" height="1" alt="" border="0"></td>
				<td width="745" valign="top"><a href="#" id="btnVolver"><img src="img/bo_volver.gif" width="125" height="37" alt="" border="0"></a></td>
			</tr>
		</table>
	</form>
</@show.page>