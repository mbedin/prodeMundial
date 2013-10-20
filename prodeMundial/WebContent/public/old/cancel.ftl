<#ftl>
<#import "showMacros.ftl" as show>
<@show.page>
	<form name="frmMain" id="frmMain" method="post">
		<table width="735" cellspacing="0" cellpadding="0">
			<tr>
				<td height="36" colspan="3"><img src="img/punto.gif" width="1" height="36" alt="" border="0"></td>
			</tr>
			<tr>
				<td colspan="3" height="32" class="txTahomaAzl24"><img src="img/bu_titulo.gif" width="17" height="17" alt="" border="0">&nbsp;<@show.invtrLabel key="cancelled.Title.CancelledApplication"/></td>
			</tr>
			<tr>
				<td colspan="3" height="2" width="469" background="img/im_linea.jpg"><img src="img/im_linea.jpg" width="30" height="2" alt="" border="0"></td>
			</tr>
			<tr>
				<td valign="top" colspan="3">
					<table width="735" cellspacing="0" cellpadding="0">
						<tr>
							<td width="15"><img src="img/punto.gif" width="1" height="15" alt="" border="0"></td>
						</tr>
						<tr>
							<td class="txTahomaGrs11">
								<@show.invtrLabel key="cancelled.Text.youHaveCancel"/>
								<br><br>
								<@show.invtrLabel key="cancelled.Text.SecurityReasons"/>
								<br><br>
								<@show.invtrLabel key="cancelled.Text.restartApplication"/>
								<br><br><br>
								<@show.invtrLabel key="cancelled.Text.Thankyou"/>
								<br><br><br>
								<@show.invtrLabel key="cancelled.Text.InvestorsTrust"/>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td valign="top" colspan="3">
					<table width="735" cellspacing="0" cellpadding="0">
						<tr>
							<td width="40"><img src="img/punto.gif" width="1" height="40" alt="" border="0"></td>
						</tr>
						<tr>
							<td>
								<table border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td>
											<@show.invtrButton key="cancelled.Button.Close" id="btnClose" arrowLeft="0" arrowRight="0"/>
										</td>
										<td width="25"><img src="img/punto.gif" width="25" height="1" alt="" border="0"></td>
										<td>
											<@show.invtrButton key="cancelled.Button.InvestorsTrustSite" id="btnHome" arrowLeft="0" arrowRight="0"/>
										</td>
									</tr>	
								</table>
							</td>
						</tr>
						<tr>
							<td width="40"><img src="img/punto.gif" width="1" height="40" alt="" border="0"></td>
						</tr>
					</table>	
				</td>
			</tr>
		</table>
	</form>
	<#include "nonExpire.ftl" />
</@show.page>