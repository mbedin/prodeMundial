<#ftl>
<#import "showMacros.ftl" as show>
<@show.page>
	<form name="frmMain" id="frmMain" method="post">
		<#include "steps.ftl" />
		<table width="735" cellspacing="0" cellpadding="0">
			<tr>
				<td height="36" colspan="3"><img src="img/punto.gif" width="1" height="36" alt="" border="0">
					<@show.hidden name="mode" value="${mode}"/>
				</td>
			</tr>
			<tr>
				<td colspan="3" height="32" class="txTahomaAzl24"><img src="img/bu_titulo.gif" width="17" height="17" alt="" border="0">&nbsp;<@show.invtrLabel key="beneficiaries.Title.Beneficiary"/></td>
			</tr>
			<tr>
				<td colspan="3" height="2" width="469" background="img/im_linea.jpg"><img src="img/im_linea.jpg" width="30" height="2" alt="" border="0"></td>
			</tr>
			<tr>
				<td valign="top" colspan="3">
					<table width="735" cellspacing="0" cellpadding="0">
						<tr>
							<td valign="top">
								<table width="450" cellspacing="0" cellpadding="0">
									<tr>
										<td width="30"><img src="img/punto.gif" width="1" height="30" alt="" border="0"></td>
									</tr>
									<tr>
										<td class="txTahomaGrs12b"><@show.invtrLabel key="beneficiaries.Title.PrimaryBeneficiary"/></td>
									</tr>
									<tr>
									  	<td height="4"><img src="img/punto.gif" width="1" height="4" alt="" border="0"></td>
									</tr>
									<tr>
										<td height="1" bgcolor="#b3b3b3"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
									</tr>
									<tr>
										<td height="1" bgcolor="#e5e5e5"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
									</tr>
									<tr>
										<td valign="top">
											<table width="450" cellspacing="0" cellpadding="0">
												<tr>
													<td colspan="3" height="20"><img src="img/punto.gif" width="1" height="20" alt="" border="0">
													</td>
												</tr>
												<tr>
												 	<td colspan="3" class="txTahomaGrs10"><b><@show.invtrLabel key="beneficiaries.Title.Doyouwanttoaddabeneficiary"/></b>&nbsp;&nbsp;&nbsp;
												 	<@show.invtrLabel key="beneficiaries.CheckboxText.YES"/><@show.radioButton name="addBeneficiary" id="addBeneficiary_yes" value="true" checked="${addBeneficiary?string}"/>
												 	<@show.invtrLabel key="beneficiaries.CheckboxText.NO"/><@show.radioButton name="addBeneficiary" id="addBeneficiary_no" value="false" checked="${(!addBeneficiary)?string}"/>
												 	</td>
												</tr>
											</table>
											<@show.invtrErrorVirtualField key="beneficiary.percentages"/>
											<div id="contentBeneficiary">
												<#include "addBeneficiary.ftl" />
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<table width="450" cellspacing="0" cellpadding="0">
												<tr>
													<td colspan="3" height="8"><img src="img/punto.gif" width="1" height="8" alt="" border="0"></td>
												</tr>
												<tr>
													<td colspan="3"><a id="lnkAddBeneficiary" class="lnkTahomaAzl10b" href="#" ><@show.invtrLabel key="beneficiaries.Hipertext.Addanotherbeneficiary"/></a></td>
												</tr>
											</table>
										</td>
									</tr>	
									<tr>
										<td width="30"><img src="img/punto.gif" width="1" height="30" alt="" border="0"></td>
									</tr>														
									<tr>
								       <td class="txTahomaGrs12b"><@show.invtrLabel key="beneficiaries.Title.ContingentBenficiary"/></td>
									</tr>
									<tr>
									  <td height="4"><img src="img/punto.gif" width="1" height="4" alt="" border="0"></td>
									</tr>
									<tr>
									   <td height="1" bgcolor="#b3b3b3"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
									</tr>
									<tr>
									    <td height="1" bgcolor="#e5e5e5"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
									</tr>
									<tr>
										<td valign="top">
											<table width="450" cellspacing="0" cellpadding="0">
												<tr>
													<td colspan="3" height="20"><img src="img/punto.gif" width="1" height="20" alt="" border="0"></td>
												</tr>
												<tr>
													<td colspan="3" class="txTahomaGrs10"><b><@show.invtrLabel key="beneficiaries.Title.Doyouwanttoaddacontingentbeneficiary"/></b>&nbsp;&nbsp;&nbsp;
														<@show.invtrLabel key="beneficiaries.CheckboxText.YES"/><@show.radioButton name="addContingent" id="addContingent_yes" value="true" checked="${addContingent?string}"/>
												 		<@show.invtrLabel key="beneficiaries.CheckboxText.NO"/><@show.radioButton name="addContingent" id="addContingent_no" value="false" checked="${(!addContingent)?string}"/>
													</td>
												</tr>																																										
											</table>
											<@show.invtrErrorVirtualField key="contingent.percentages"/>
											<div id="contentContingent">
												<#include "addContingent.ftl" />
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<table width="450" cellspacing="0" cellpadding="0">
												<tr>
													<td colspan="3" height="8"><img src="img/punto.gif" width="1" height="8" alt="" border="0"></td>
												</tr>
												<tr>
													<td colspan="3"><a id="lnkAddContingent" class="lnkTahomaAzl10b" href="#" ><@show.invtrLabel key="beneficiaries.Hipertext.Addanothercontingentbeneficiary"/></a></td>
												</tr>
											</table>
										</td>
									</tr>	

									<tr>
									 	<td width="40"><img src="img/punto.gif" width="1" height="40" alt="" border="0"></td>
									</tr>
									<tr>
										<td>
											<table border="0" cellspacing="0" cellpadding="0">
												<tr>
													<#if (editMode == false)>
														<td><@show.invtrButton key="beneficiaries.Button.Previous" id="btnPrevious" arrowLeft="1" arrowRight="0"/></td>
														<td width="25"><img src="img/punto.gif" width="25" height="1" alt="" border="0"></td>
													</#if>	
													<td><@show.invtrButton key="beneficiaries.Button.Next" id="btnNext" arrowLeft="0" arrowRight="1"/></td>
													<#if (editMode == false)>
														<td width="25"><img src="img/punto.gif" width="25" height="1" alt="" border="0"></td>	
														<td><@show.invtrButton key="beneficiaries.Button.CancelApplication" id="btnCancel" arrowLeft="0" arrowRight="0"/></td>
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
							<td width="43"><img src="img/punto.gif" width="43" height="1" alt="" border="0"></td>
							<td width="242" valign="top">
								<#include "privacyPolicy.ftl" />
							</td>
						</tr>
					</table>	
				</td>
			</tr>
		</table>
	</form>
	<#include "expire.ftl" />
</@show.page>