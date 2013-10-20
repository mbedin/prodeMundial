<#ftl>
<#import "/common/showMacros.ftl" as show>
<@show.page image="img/bg_login.jpg">
	<form name="frmMain" id="frmMain" method="post">
		<table height="537" width="760" border="0" cellspacing="0" cellpadding="0" align="center" background="img/bg_login.jpg">
			<tr>
				<td colspan="2" height="454"><img src="img/punto.gif" width="1" height="454" alt="" border="0"></td>
			</tr>
			<tr>
				<td width="597" valign="top" align="right">
					<table border="0">
						<tr>
							<td colspan="6" align="center" class="clsTxArialBlc11"><@show.label key="login.texto"/></td>
						</tr>
						<tr>
							<td colspan="6" height="2"></td>
						</tr>
						<tr>
							<td class="clsTxArialBlc12"><@show.label key="login.label.usuario"/></td>
							<td>
								<@show.inputText key="cliente.usuario" disabled="false" required="true" style="null" value="${cliente.usuario}" size="10" class="inputLogin" maxlength="20"/>
							</td>
							<td>&nbsp;</td>
							<td class="clsTxArialBlc12"><@show.label key="login.label.password"/></td>
							<td>
								<@show.inputPassword key="cliente.password" disabled="false" required="true" style="null" value="${cliente.password}" size="10" class="inputLogin" maxlength="20"/>
							</td>
							<td><img src="img/punto.gif" width="30" height="1" alt="" border="0"></td>
						</tr>
						<tr>
							<td colspan="6" align="center"><@show.labelErrorField key="cliente.login"/></td>
						</tr>
					</table>
				</td>
				<td valign="top"><br><a href="#" id="btnIngresar"><img src="img/bo_ingresar.gif" width="120" height="33" alt="Ingresar" border="0" vspace="1"></a><br>
					&nbsp;&nbsp;&nbsp;<a href="#" class="lnkTxArial8Bcl" id="lnkResetPassword"><@show.labelOnly key="login.link.nuevaPassword"/></a>
				</td>
			</tr>
		</table>
	</form>
</@show.page>