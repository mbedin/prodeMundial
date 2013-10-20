<#ftl>
<#import "showMacros.ftl" as show>
<@show.page>
	<form name="frmMain" id="frmMain" method="post">
		<#include "steps.ftl" />
	 	
	 	<table width="735" cellspacing="0" cellpadding="0" border="0">
			<tr>
				<td height="36" colspan="3"><img src="img/punto.gif" width="1" height="36" alt="" border="0">
					<@show.hidden name="mode" value="${mode}"/>
				</td>
			</tr>
			<tr>
				<td colspan="3" height="32" class="txTahomaAzl24"><img src="img/bu_titulo.gif" width="17" height="17" alt="" border="0">&nbsp;<@show.invtrLabel key="illustration.Title.ProductSelectionIllustration"/></td>
			</tr>
			<tr>
				<td colspan="3" height="2" width="469" background="img/im_linea.jpg"><img src="img/im_linea.jpg" width="30" height="2" alt="" border="0"></td>
			</tr>
			<tr>
				<td valign="top" colspan="3">
					<table width="735" cellspacing="0" cellpadding="0">
						<tr>
							<td width="25"><img src="img/punto.gif" width="1" height="25" alt="" border="0"></td>
						</tr>
						<tr>
							<td class="txTahomaAzl12">${textTable}</td>
						</tr>
						<tr>
							<td width="10"><img src="img/punto.gif" width="1" height="10" alt="" border="0"></td>
						</tr>
						<tr>
						<@show.invtrLabel key=""/>
						</tr>
						<tr>
						
							<td>
								<table width="717" cellpadding="0" cellspacing="0" border="0">
									<tr>
										<td class="txTahomaGrs10" height="34" width="40" align="center" valign="middle"><b><@show.invtrLabel key="illustration.TitleColumn.Year"/></b></td>
										<td class="txTahomaGrs10" width="135" align="center" valign="middle"><b><@show.invtrLabel key="illustration.TitleColumn.TotalPremiumsPaid"/></b></td>
										<td class="txTahomaGrs10" width="135" align="center" valign="middle"><b><@show.invtrLabel key="illustration.TitleColumn.Account"/></b></td>
										<td class="txTahomaGrs10" width="135" align="center" valign="middle"><b><@show.invtrLabel key="illustration.TitleColumn.CashSurrenderValueat6"/></b></td>
										<td class="txTahomaGrs10" width="136" align="center" valign="middle"><b><@show.invtrLabel key="illustration.TitleColumn.AccountValueat10"/></b></td>
										<td class="txTahomaGrs10" width="136" align="center" valign="middle"><b><@show.invtrLabel key="illustration.TitleColumn.CashSurrenderValueat10"/></b></td>
									</tr>
									<tr>
										<td colspan="6" bgcolor="#797979" height="1"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
									</tr>
									<#list 0..column1?size -1 as i>
											<tr>
												<td class="txTahomaGrs10c" height="16" align="center" valign="middle">${column1[i]?c}</td>
												<td class="txTahomaGrs10c" align="center" valign="middle">$${column2[i]?string(",000.00")}</td>
												<td class="txTahomaGrs10c" align="center" valign="middle">$${column3[i]?string(",000.00")}</td>
												<td class="txTahomaGrs10c" align="center" valign="middle">$${column4[i]?string(",000.00")}</td>
												<td class="txTahomaGrs10c" align="center" valign="middle">$${column5[i]?string(",000.00")}</td>
												<td class="txTahomaGrs10c" align="center" valign="middle">$${column6[i]?string(",000.00")}</td>
											</tr>
											<#if ((i+1)%5=0) >	                                                
												<tr>
													<td colspan="6" bgcolor="#797979" height="1"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
												</tr>	
											<#else>							
												<tr>
													<td colspan="6" class="lineaPunteada"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
												</tr>										
											</#if>
									</#list>
								</table>
							</td>
						</tr>
						<tr>
							<td width="60"><img src="img/punto.gif" width="1" height="60" alt="" border="0"></td>
						</tr>
						<tr>
							<td class="txTahomaAzl12"><@show.invtrLabel key="illustration.TitleGraph.SampleIllustration6"/></td>
						</tr>
						<tr>
							<td width="10"><img src="img/punto.gif" width="1" height="10" alt="" border="0"></td>
						</tr>
						<tr>
    						<td align="center">
    							<table class="clsTablaGraph" border="1" align="center">
    								<tr>
    									<td>
    										<table border="0" align="center">
			    								<tr>
			    									<td colspan=5><img src="img/illustration/${image1}" alt="" border="0" width="501px"></td>
			    								</tr>
			    								<tr>
			    									<td class="txTahomaGrs10" align="center" valign="top" width="150px"><img src="img/puntoAzul.gif" width="10" height="10" alt="" border="1" valign="middle">&nbsp;<@show.invtrLabel key="illustration.TitleColumn.TotalPremiumsPaid"/></td>
			    									<td class="txTahomaGrs10" align="center" valign="top" width="17px">&nbsp;</td>
			    									<td class="txTahomaGrs10" align="center" valign="top" width="150px"><img src="img/puntoGris.gif" width="10" height="10" alt="" border="1" valign="middle">&nbsp;<@show.invtrLabel key="illustration.TitleColumn.Account"/></td>
			    									<td class="txTahomaGrs10" align="center" valign="top" width="17px">&nbsp;</td>
			    									<td class="txTahomaGrs10" align="center" valign="top" width="150px"><img src="img/puntoAzulMarino.gif" width="10" height="10" alt="" border="1" valign="middle">&nbsp;<@show.invtrLabel key="illustration.TitleColumn.CashSurrenderValueat6"/></td>
			    								</tr>
    										</table>
    									</td>
    								</tr>
    							</table>
							</td>
						</tr>
						<tr>
							<td width="60"><img src="img/punto.gif" width="1" height="60" alt="" border="0"></td>
						</tr>
						<tr>
							<td class="txTahomaAzl12"><@show.invtrLabel key="illustration.TitleGraph.SampleIllustration10"/></td>
						</tr>
						<tr>
							<td width="10"><img src="img/punto.gif" width="1" height="10" alt="" border="0"></td>
						</tr>
						<tr>
    						<td align="center">
    							<table class="clsTablaGraph" border="1" align="center">
    								<tr>
    									<td>
    										<table border="0" align="center">
			    								<tr>
			    									<td colspan=5><img src="img/illustration/${image2}" alt="" border="0" width="501px"></td>
			    								</tr>
			    								<tr>
			    									<td class="txTahomaGrs10" align="center" valign="top" width="150px"><img src="img/puntoAzul.gif" width="10" height="10" alt="" border="1" valign="middle">&nbsp;<@show.invtrLabel key="illustration.TitleColumn.TotalPremiumsPaid"/></td>
			    									<td class="txTahomaGrs10" align="center" valign="top" width="17px">&nbsp;</td>
			    									<td class="txTahomaGrs10" align="center" valign="top" width="150px"><img src="img/puntoGris.gif" width="10" height="10" alt="" border="1" valign="middle">&nbsp;<@show.invtrLabel key="illustration.TitleColumn.AccountValueat10"/></td>
			    									<td class="txTahomaGrs10" align="center" valign="top" width="17px">&nbsp;</td>
			    									<td class="txTahomaGrs10" align="center" valign="top" width="150px"><img src="img/puntoAzulMarino.gif" width="10" height="10" alt="" border="1" valign="middle">&nbsp;<@show.invtrLabel key="illustration.TitleColumn.CashSurrenderValueat10"/></td>
			    								</tr>
    										</table>
    									</td>
    								</tr>
    							</table>
							</td>
						</tr>

						<tr>
							<td width="20"><img src="img/punto.gif" width="1" height="20" alt="" border="0"></td>
						</tr>
						<tr>
							<td class="txTahomaGrs9" align="center">
								<@show.invtrLabel key="illustration.Text.ratesShown"/>
								<br>
								<b><@show.invtrLabel key="illustration.Text.illustrationSample"/></b>
							</td>
						</tr>
						<tr>
							<td width="20"><img src="img/punto.gif" width="1" height="20" alt="" border="0"></td>
						</tr>
						<tr>
							<td>
								<table border="0" cellspacing="0" cellpadding="0">
									<tr>
										<#if (editMode == false)>
											<td><@show.invtrButton key="illustration.Button.Previous" id="btnPrevious" arrowLeft="1" arrowRight="0"/></td>
											<td width="25"><img src="img/punto.gif" width="25" height="1" alt="" border="0"></td>
										</#if>	
										<td><@show.invtrButton key="illustration.Button.Next" id="btnNext" arrowLeft="0" arrowRight="1"/></td>
										<#if (editMode == false)>
											<td width="25"><img src="img/punto.gif" width="25" height="1" alt="" border="0"></td>	
											<td><@show.invtrButton key="illustration.Button.CancelApplication" id="btnCancel" arrowLeft="0" arrowRight="0"/></td>
										</#if>		
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
	<#include "expire.ftl" />
</@show.page>