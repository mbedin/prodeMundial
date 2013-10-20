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
				<td colspan="3" height="32" class="txTahomaAzl24"><img src="img/bu_titulo.gif" width="17" height="17" alt="" border="0">&nbsp;<@show.invtrLabel key="agreement.Title.Agreement"/></td>
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
										<td class="txTahomaGrs12b"><@show.invtrLabel key="agreement.Text.SubscriptionAgreementBetween"/></td>
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
											<table width="450" cellspacing="0" cellpadding="0" border="0">
												<tr>
													<td height="20"><img src="img/punto.gif" width="1" height="20" alt="" border="0"></td>
												</tr>
												<tr>
													<td class="txTahomaGrs11">
														<@show.invtrLabel key="agreement.Text.point1"/>
														<br>
														<@show.invtrLabel key="agreement.Text.point2"/>
													</td>
												</tr>
												<tr>
													<td height="11"><img src="img/punto.gif" width="1" height="11" alt="" border="0"></td>
												</tr>
												<tr>
													<td>
														<div align="left" class="clsTablaAgree" id="list">
															<#include "agreementText.ftl" />
														</div>
													</td>
												</tr>
											</table>
										</td>
									</tr>

									<tr>
										<td width="40"><img src="img/punto.gif" width="1" height="40" alt="" border="0"></td>
									</tr>
									<tr>
										<td>
											<table width="450" border="0" cellspacing="0" cellpadding="0">
												<tr>
													<td class="clsTable1">
														<table border="0" cellspacing="0" cellpadding="0">
															<tr>
																<td valign="top" align="center">
																	<p class="clsTable1textAl">
																		<@show.checkbox name="acceptAgreement" id="acceptAgreement" value="true" disabled=false cssClass="txTahomaGrs11"/>
																	</p>
																</td>
																<td valign="top">
																	<p class="clsTable1text">
																		<@show.invtrLabel key="agreement.CheckboxText.accept"/>
																	</p>
																	<@show.actionErrorsShow/>
																</td>
															</tr>
														</table>
													</td>
												</tr>
											</table>
										</td>
									</tr>
									
									<tr>
										<td width="70"><img src="img/punto.gif" width="1" height="70" alt="" border="0"></td>
									</tr>
									<tr>
										<td>
											<table border="0" cellspacing="0" cellpadding="0">
												<tr>
													<td>
														<table border="0" cellpadding="0" cellspacing="0" 
															<tr>
																<#if (editMode == false)>
																	<td><@show.invtrButton key="agreement.Button.Previous" id="btnPrevious" arrowLeft="1" arrowRight="0"/></td>
																	<td width="25"><img src="img/punto.gif" width="25" height="1" alt="" border="0"></td>
																</#if>	
																<td><@show.invtrButton key="agreement.Button.Next" id="btnNext" arrowLeft="0" arrowRight="1"/></td>
																<#if (editMode == false)>
																	<td width="25"><img src="img/punto.gif" width="25" height="1" alt="" border="0"></td>	
																	<td><@show.invtrButton key="agreement.Button.CancelApplication" id="btnCancel" arrowLeft="0" arrowRight="0"/></td>
																</#if>																	
															</tr>
														</table>
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
							<td width="43"><img src="img/punto.gif" width="43" height="1" alt="" border="0"></td>
							<td width="242" valign="top">
								<#include "privacyPolicy.ftl" />
								<table width="242" cellpadding="0" cellspacing="0" border="0">
									<tr>
										<td colspan="3" height="17"><img src="img/punto.gif" width="1" height="17" alt="" border="0"></td>
									</tr>
									<tr>
										<td width="3"><img src="img/im_corner_rec_1.jpg" width="3" height="3" alt="" border="0"></td>
										<td width="236" class="clsTable1top"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
										<td width="3"><img src="img/im_corner_rec_2.jpg" width="3" height="3" alt="" border="0"></td>
									</tr>
									<tr>
										<td class="clsTable1left"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
										<td class="clsTable1text"><p class="clsTable1text">
											<@show.invtrLabel key="agreement.TextBox.reviewDocument"/>
											<br>
											<#if language.locale == "">
												<#assign folder = "docs/en/" />
											<#else>
												<#assign folder = "docs/${language.locale}/" />
											</#if>
											<table border="0" cellspacing="0" cellpadding="0">
												<tr>
													<td valign="top" class="clsTable1text" nowrap>&nbsp;&nbsp;-&nbsp;</td>
													<td valign="top"><a href="${folder}documents.html" class="lnkTahomaGrs11" target="_blank"><@show.invtrLabelLink key="agreement.TextBox.reviewDocument.link1"/></a></td>
												</tr>
											</table>
											</p>
										</td>
										<td class="clsTable1right"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
									</tr>
									<tr>
										<td width="3"><img src="img/im_corner_rec_3.jpg" width="3" height="3" alt="" border="0"></td>
										<td class="clsTable1bottom"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
										<td width="3"><img src="img/im_corner_rec_4.jpg" width="3" height="3" alt="" border="0"></td>
									</tr>
								</table>
							</td>
						</tr>
					</table>	
				</td>
			</tr>
	    </table> 
	</form>
	
	<div id="divAmended" style="display:none; cursor: default; align: denter">
		<div align="center" class="clsTablaAgree2">
			<#include "amended.ftl" />
		</div> 
		<div align="center">
			<br>
			<@show.invtrButton key="approval.Button.Close" id="btnCloseAmended" arrowLeft="0" arrowRight="0"/>
		</div>
	</div>

	<div id="divSupplemental" style="display:none; cursor: default; align: denter"> 
		<div align="center" class="clsTablaAgree2">
			<#include "supplemental.ftl" />
		</div> 
		<div align="center">
			<br>
			<@show.invtrButton key="approval.Button.Close" id="btnCloseSupplemental" arrowLeft="0" arrowRight="0"/>
		</div>
	</div>
	
	<#include "nonExpire.ftl" />
</@show.page>