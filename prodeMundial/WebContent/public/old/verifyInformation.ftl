<#ftl>
<#import "showMacros.ftl" as show>
<@show.page>
	<form name="frmMain" id="frmMain" method="post">
		<#include "steps.ftl" />
		<table width="735" cellspacing="0" cellpadding="0" border="0">
			<tr>
				<td height="36" colspan="3"><img src="img/punto.gif" width="1" height="36" alt="" border="0"></td>
			</tr>
			<tr>
				<td colspan="3" height="32" class="txTahomaAzl24"><img src="img/bu_titulo.gif" width="17" height="17" alt="" border="0">&nbsp;<@show.invtrLabel key="verifyInformation.Title.VerifyInformation"/></td>
			</tr>
			<tr>
				<td colspan="3" height="2" width="469" background="img/im_linea.jpg"><img src="img/im_linea.jpg" width="30" height="2" alt="" border="0"></td>
			</tr>
			<tr>
				<td valign="top" colspan="3">
					<table width="735" cellspacing="0" cellpadding="0">
						<tr>
							<td valign="top">
								<table width="450" cellspacing="0" cellpadding="0" border="0">
									<!-- ERROR en POLICY SUBMIT -->
									<#if (!plan.isPolicyValid) >
										<tr>
											<td width="30"><img src="img/punto.gif" width="1" height="30" alt="" border="0"></td>
										</tr>
										<tr>
											<td class="txTahomaGrs10">&nbsp;<@show.invtrLabel key="verifyInformation.Text.errorSubmit"/></td>
										</tr>
									</#if>
									<!-- FIRST PLAN PARTICIPAN INFORMATION -->
									<tr>
										<td width="30"><img src="img/punto.gif" width="1" height="30" alt="" border="0"></td>
									</tr>
									<tr>
										<td class="txTahomaGrs12b"><@show.invtrLabel key="verifyInformation.Title.FirstPlanParticipantInformation"/>&nbsp;&nbsp;<a href="#" class="lnkTahomaCel10b" id="editFirstParticipant"><@show.invtrLabel key="verifyInformation.Hypertext.Edit"/></a></td>
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
												<!-- Residential Address -->
												<tr>
													<td colspan="3" height="20"><img src="img/punto.gif" width="1" height="20" alt="" border="0"></td>
												</tr>
												<tr>
													<td width="190" class="txTahomaGrs10">&nbsp;<@show.invtrLabel key="verifyInformation.Label.Name"/><br>
														<#if (language.nativeNameRequired)>
															<span class="txTahomaGrs12">&nbsp;${plan.firstParticipant.nativeName}</span><br>
														</#if>
														<#if (!plan.firstParticipant.traslationRequired)>
															<span class="txTahomaGrs12">&nbsp;${plan.firstParticipant.fullName}</span>
														</#if>
													</td>
													<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
													<td width="243" class="txTahomaGrs10">&nbsp;<@show.invtrLabel key="verifyInformation.Label.Nationality"/><br>
														<span class="txTahomaGrs12">&nbsp;${plan.firstParticipant.country.description}</span>
													</td>
												</tr>
												<tr>
													<td colspan="3" height="8"><img src="img/punto.gif" width="1" height="8" alt="" border="0"></td>
												</tr>
												<tr>
													<td width="190" class="txTahomaGrs10">&nbsp;<@show.invtrLabel key="verifyInformation.Label.DateofBirth"/><br>
														<span class="txTahomaGrs12">&nbsp;${plan.firstParticipant.birthDate?date?string.medium}</span> 
													</td>
													<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
													<td width="243" class="txTahomaGrs10">&nbsp;<@show.invtrLabel key="verifyInformation.Label.Gender"/><br>
														<span class="txTahomaGrs12">&nbsp;${plan.firstParticipant.gender.description}</span>
													</td>
												</tr>
												<tr>
													<td colspan="3" height="8"><img src="img/punto.gif" width="1" height="8" alt="" border="0"></td>
												</tr>
												<tr>
													<td width="450" class="txTahomaGrs10" colspan="3">&nbsp;<@show.invtrLabel key="verifyInformation.Label.Identification"/><br>
														<span class="txTahomaGrs12">&nbsp;${plan.firstParticipant.documentType.description}&nbsp;${plan.firstParticipant.documentNumber}</span>
													</td>
												</tr>
												<tr>
													<td colspan="3" height="8"><img src="img/punto.gif" width="1" height="8" alt="" border="0"></td>
												</tr>
												<tr>
													<td width="450" class="txTahomaGrs10" colspan="3" >&nbsp;<@show.invtrLabel key="verifyInformation.Label.Occupation"/><br>
														<span class="txTahomaGrs12">&nbsp;${plan.firstParticipant.occupationIndustry.description}&nbsp;-&nbsp;${plan.firstParticipant.occupationTitle.description}</span>
													</td>
												</tr>
												<!-- Contact Information -->
												<tr>
													<td colspan="3" height="8"><img src="img/punto.gif" width="1" height="8" alt="" border="0"></td>
												</tr>
												<tr>
													<td width="190" class="txTahomaGrs10">&nbsp;<@show.invtrLabel key="verifyInformation.Label.Emailaddress"/><br>
														<span class="txTahomaGrs12">&nbsp;${plan.firstParticipant.EMail}</span>
													</td>
													<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
													<td width="243" class="txTahomaGrs10">&nbsp;<@show.invtrLabel key="verifyInformation.Title.TelephoneNumber"/>
														<#list plan.firstParticipant.telephoneNumbers as telephoneNumber>
															<br><span class="txTahomaGrs12">&nbsp;${telephoneNumber.description}</span>
														</#list>
													</td>
												</tr>
												<!-- Address Information -->
												<tr>
													<td colspan="3" height="20"><img src="img/punto.gif" width="1" height="20" alt="" border="0"></td>
												</tr>
												<tr>
													<td width="450" class="txTahomaGrs10" colspan="3"><@show.invtrLabel key="verifyInformation.Title.ResidentialAddress"/> <br>
														<span class="txTahomaGrs12">${plan.firstParticipant.residentialAddress.description}</span>
													</td>
												</tr>
												
												<#if (plan.firstParticipant.businessAddress.isEmpty == false) >
													<tr>
														<td colspan="3" height="20"><img src="img/punto.gif" width="1" height="20" alt="" border="0"></td>
													</tr>
													<tr>
														<td width="450" class="txTahomaGrs10" colspan="3"><@show.invtrLabel key="verifyInformation.Title.BusinessAddress"/> <br>
															<span class="txTahomaGrs12">${plan.firstParticipant.businessAddress.description}</span>
														</td>
													</tr>
												</#if>
											</table>
										</td>
									</tr>

									<!-- JOINT PLAN PARTICIPAN INFORMATION -->
									<#if (plan.hasJointParticipant) >
										<tr>
											<td width="30"><img src="img/punto.gif" width="1" height="30" alt="" border="0"></td>
										</tr>
										<tr>
											<td class="txTahomaGrs12b"><@show.invtrLabel key="verifyInformation.Title.JointPlanParticipantInformation"/>&nbsp;&nbsp;<a href="#" class="lnkTahomaCel10b" id="editJointParticipant"><@show.invtrLabel key="verifyInformation.Hypertext.Edit"/></a></td>
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
													<!-- Residential Address -->
													<tr>
														<td colspan="3" height="20"><img src="img/punto.gif" width="1" height="20" alt="" border="0"></td>
													</tr>
													<tr>
														<td width="190" class="txTahomaGrs10">&nbsp;<@show.invtrLabel key="verifyInformation.Label.Name"/><br>
															<#if (language.nativeNameRequired)>
																<span class="txTahomaGrs12">&nbsp;${plan.jointParticipant.nativeName}</span><br>
															</#if>
															<#if (!plan.jointParticipant.traslationRequired)>
																<span class="txTahomaGrs12">&nbsp;${plan.jointParticipant.fullName}</span>
															</#if>
														</td>
														<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
														<td width="243" class="txTahomaGrs10">&nbsp;<@show.invtrLabel key="verifyInformation.Label.Nationality"/><br>
															<span class="txTahomaGrs12">&nbsp;${plan.jointParticipant.country.description}</span>
														</td>
													</tr>
													<tr>
														<td colspan="3" height="8"><img src="img/punto.gif" width="1" height="8" alt="" border="0"></td>
													</tr>
													<tr>
														<td width="190" class="txTahomaGrs10">&nbsp;<@show.invtrLabel key="verifyInformation.Label.DateofBirth"/><br>
															<span class="txTahomaGrs12">&nbsp;${plan.jointParticipant.birthDate?date?string.medium}</span> 
														</td>
														<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
														<td width="243" class="txTahomaGrs10">&nbsp;<@show.invtrLabel key="verifyInformation.Label.Gender"/><br>
															<span class="txTahomaGrs12">&nbsp;${plan.jointParticipant.gender.description}</span>
														</td>
													</tr>
													<tr>
														<td colspan="3" height="8"><img src="img/punto.gif" width="1" height="8" alt="" border="0"></td>
													</tr>
													<tr>
														<td width="450" class="txTahomaGrs10" colspan="3">&nbsp;<@show.invtrLabel key="verifyInformation.Label.Identification"/><br>
															<span class="txTahomaGrs12">&nbsp;${plan.jointParticipant.documentType.description}&nbsp;${plan.jointParticipant.documentNumber}</span>
														</td>
													</tr>
													<tr>
														<td colspan="3" height="8"><img src="img/punto.gif" width="1" height="8" alt="" border="0"></td>
													</tr>
													<tr>
														<td width="450" class="txTahomaGrs10" colspan="3" >&nbsp;<@show.invtrLabel key="verifyInformation.Label.Occupation"/><br>
															<span class="txTahomaGrs12">&nbsp;${plan.jointParticipant.occupationIndustry.description}&nbsp;-&nbsp;${plan.jointParticipant.occupationTitle.description}</span>
														</td>
													</tr>
													<!-- Contact Information -->
													<tr>
														<td colspan="3" height="8"><img src="img/punto.gif" width="1" height="8" alt="" border="0"></td>
													</tr>
													<tr>
														<td width="190" class="txTahomaGrs10">&nbsp;<@show.invtrLabel key="verifyInformation.Label.Emailaddress"/><br>
															<span class="txTahomaGrs12">&nbsp;${plan.jointParticipant.EMail}</span>
														</td>
														<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
														<td width="243" class="txTahomaGrs10">&nbsp;<@show.invtrLabel key="verifyInformation.Title.TelephoneNumber"/>
															<#list plan.jointParticipant.telephoneNumbers as telephoneNumber>
																<br><span class="txTahomaGrs12">&nbsp;${telephoneNumber.description}</span>
															</#list>
														</td>
													</tr>
													<!-- Address Information -->
													<tr>
														<td colspan="3" height="20"><img src="img/punto.gif" width="1" height="20" alt="" border="0"></td>
													</tr>
													<tr>
														<td width="450" class="txTahomaGrs10" colspan="3"><@show.invtrLabel key="verifyInformation.Title.ResidentialAddress"/> <br>
															<span class="txTahomaGrs12">${plan.jointParticipant.residentialAddress.description}</span>
														</td>
													</tr>
													
													<#if (plan.jointParticipant.businessAddress.isEmpty == false) >
														<tr>
															<td colspan="3" height="20"><img src="img/punto.gif" width="1" height="20" alt="" border="0"></td>
														</tr>
														<tr>
															<td width="450" class="txTahomaGrs10" colspan="3"><@show.invtrLabel key="verifyInformation.Title.BusinessAddress"/> <br>
																<span class="txTahomaGrs12">${plan.jointParticipant.businessAddress.description}</span>
															</td>
														</tr>
													</#if>
												</table>
											</td>
										</tr>
									</#if>
									<!-- BENEFICIARIES -->	
									<tr>
										<td width="40"><img src="img/punto.gif" width="1" height="40" alt="" border="0"></td>
									</tr>
									<tr>
										<td class="txTahomaGrs12b"><@show.invtrLabel key="verifyInformation.Title.Beneficiaries"/>&nbsp;&nbsp;<a href="#" class="lnkTahomaCel10b" id="editBeneficiaries"><@show.invtrLabel key="verifyInformation.Hypertext.Edit"/></a></td>
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
									<#if ( (plan.beneficiaries?size)?? && plan.beneficiaries?size > 0 ) >
										<tr>
											<td valign="top">
												<table width="450" cellspacing="0" cellpadding="0" border="0">
													<!-- Primary Beneficiaries -->
													<tr>
														<td colspan="3" height="20"><img src="img/punto.gif" width="1" height="20" alt="" border="0"></td>
													</tr>
													<tr>
														<td colspan="3" class="txTahomaGrs10"><b><@show.invtrLabel key="verifyInformation.Title.PrimaryBeneficiary"/></b></td>
													</tr>
													<tr>
														<td colspan="3" height="8"><img src="img/punto.gif" width="1" height="8" alt="" border="0"></td>
													</tr>
													<#list plan.beneficiaries as beneficiary>
														<#if (beneficiary.isContingent == false) >
															<tr>
																<td width="190" class="txTahomaGrs10">&nbsp;<@show.invtrLabel key="verifyInformation.Label.Name"/><br>
																	<#if (language.nativeNameRequired)>
																		<span class="txTahomaGrs12">&nbsp;${beneficiary.person.nativeName}</span><br>
																	</#if>
																	<span class="txTahomaGrs12">&nbsp;${beneficiary.person.fullName}</span>
																</td>
																<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
																<td width="243" class="txTahomaGrs10">&nbsp;<@show.invtrLabel key="verifyInformation.Label.Relationshiptoplanparticipant"/><br>
																	<span class="txTahomaGrs12">&nbsp;${beneficiary.beneficiaryRelationship.description}</span>
																</td>
															</tr>
															<tr>
																<td colspan="3" height="8"><img src="img/punto.gif" width="1" height="8" alt="" border="0"></td>
															</tr>
															<tr>
																<td width="190" class="txTahomaGrs10">&nbsp;<@show.invtrLabel key="verifyInformation.Label.DateofBirth"/><br>
																	<span class="txTahomaGrs12">&nbsp;${beneficiary.person.birthDate?date?string.medium}</span>
																</td>
																<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
																<td width="243" class="txTahomaGrs10">&nbsp;<@show.invtrLabel key="verifyInformation.Label.Percentage"/><br>
																	<span class="txTahomaGrs12">&nbsp;${beneficiary.percentage?c}%</span>
																</td>
															</tr>
															<tr>
																<td colspan="3" height="8"><img src="img/punto.gif" width="1" height="8" alt="" border="0"></td>
															</tr>															
															<tr>
																<td colspan="3"  height="1" bgcolor="#b3b3b3"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
															</tr>
															<tr>
																<td colspan="3" height="8"><img src="img/punto.gif" width="1" height="8" alt="" border="0"></td>
															</tr>
														</#if>
													</#list>

													<!-- Contingents Beneficiaries -->
													<#assign showHeader = true>

													<#list plan.beneficiaries as beneficiary>
														<#if (beneficiary.isContingent) >
															<#if (showHeader)>
																<#assign showHeader = false>
																<tr>
																	<td colspan="3" height="20"><img src="img/punto.gif" width="1" height="20" alt="" border="0"></td>
																</tr>
																<tr>
																	<td colspan="3" class="txTahomaGrs10"><b><@show.invtrLabel key="verifyInformation.Title.ContingentBenficiary"/></b></td>
																</tr>
																<tr>
																	<td colspan="3" height="8"><img src="img/punto.gif" width="1" height="8" alt="" border="0"></td>
																</tr>
															</#if>																
															<tr>
																<td width="190" class="txTahomaGrs10">&nbsp;<@show.invtrLabel key="verifyInformation.Label.Name"/><br>
																	<#if (language.nativeNameRequired)>
																		<span class="txTahomaGrs12">&nbsp;${beneficiary.person.nativeName}</span><br>
																	</#if>																	
																	<span class="txTahomaGrs12">&nbsp;${beneficiary.person.fullName}</span>
																</td>
																<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
																<td width="243" class="txTahomaGrs10">&nbsp;<@show.invtrLabel key="verifyInformation.Label.Relationshiptoplanparticipant"/><br>
																	<span class="txTahomaGrs12">&nbsp;${beneficiary.beneficiaryRelationship.description}</span>
																</td>
															</tr>
															<tr>
																<td colspan="3" height="8"><img src="img/punto.gif" width="1" height="8" alt="" border="0"></td>
															</tr>
															<tr>
																<td width="190" class="txTahomaGrs10">&nbsp;<@show.invtrLabel key="verifyInformation.Label.DateofBirth"/><br>
																	<span class="txTahomaGrs12">&nbsp;${beneficiary.person.birthDate?date?string.medium}</span>
																</td>
																<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
																<td width="243" class="txTahomaGrs10">&nbsp;<@show.invtrLabel key="verifyInformation.Label.Percentage"/><br>
																	<span class="txTahomaGrs12">&nbsp;${beneficiary.percentage?c}%</span>
																</td>
															</tr>
															<tr>
																<td colspan="3" height="8"><img src="img/punto.gif" width="1" height="8" alt="" border="0"></td>
															</tr>															
															<tr>
																<td colspan="3"  height="1" bgcolor="#b3b3b3"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
															</tr>
															<tr>
																<td colspan="3" height="8"><img src="img/punto.gif" width="1" height="8" alt="" border="0"></td>
															</tr>
														</#if>
													</#list>
													
												</table>
											</td>
										</tr>
									</#if>
									<!-- PRODUCT INFORMATION -->
									<tr>
										<td width="40"><img src="img/punto.gif" width="1" height="40" alt="" border="0"></td>
									</tr>
			
									<tr>
										<td class="txTahomaGrs12b"><@show.invtrLabel key="verifyInformation.Title.ProductInformation"/>&nbsp;&nbsp;<a href="#" class="lnkTahomaCel10b" id="editProduct"><@show.invtrLabel key="verifyInformation.Hypertext.Edit"/></a></td>
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
												<!-- Plan Information -->
												<tr>
													<td colspan="3" height="20"><img src="img/punto.gif" width="1" height="20" alt="" border="0"></td>
												</tr>
												<tr>
													<td width="190" class="txTahomaGrs10">&nbsp;<@show.invtrLabel key="verifyInformation.Label.InvestmentProduct"/><br>
														<span class="txTahomaGrs12">&nbsp;${plan.product.description}</span>
													</td>
													<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
													<td width="243" class="txTahomaGrs10">&nbsp;<@show.invtrLabel key="verifyInformation.Label.TotalAnnualContribution"/><br>
														<span class="txTahomaGrs12">&nbsp;US$&nbsp;${plan.totalAnnualContribution?string("0.00")}</span>
													</td>
												</tr>
												<tr>
													<td colspan="3" height="8"><img src="img/punto.gif" width="1" height="8" alt="" border="0"></td>
												</tr>
												<tr>
													<td width="190" class="txTahomaGrs10">&nbsp;<@show.invtrLabel key="verifyInformation.Label.PaymentFrecuency"/><br>
														<span class="txTahomaGrs12">&nbsp;${plan.paymentFrecuency.description}</span>
													</td>
													<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
													<td width="243" class="txTahomaGrs10">&nbsp;<@show.invtrLabel key="verifyInformation.Label.RegularContribution"/><br>
														<span class="txTahomaGrs12">&nbsp;US$&nbsp;${plan.regularContribution?string("0.00")}</span>
													</td>
												</tr>
											</table>
										</td>
									</tr>
									<!-- BILLING INFORMATION -->
									<tr>
										<td width="40"><img src="img/punto.gif" width="1" height="40" alt="" border="0"></td>
									</tr>								
									<tr>
										<td class="txTahomaGrs12b"><@show.invtrLabel key="verifyInformation.Title.BillingInformation"/>&nbsp;&nbsp;<a href="#" class="lnkTahomaCel10b" id="editBilling"><@show.invtrLabel key="verifyInformation.Hypertext.Edit"/></a></td>
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
												<!-- Credit Card Information -->											
												<tr>
													<td colspan="3" height="20"><img src="img/punto.gif" width="1" height="20" alt="" border="0"></td>
												</tr>
												<tr>
													<td width="190" class="txTahomaGrs10">&nbsp;<@show.invtrLabel key="verifyInformation.Title.CreditCardOwner"/><br>
														<span class="txTahomaGrs12">&nbsp;${plan.nameOnTheCard}</span>
													</td>
													<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
													<td width="243" class="txTahomaGrs10">&nbsp;<@show.invtrLabel key="verifyInformation.Title.BillingAddress"/><br>
														<span class="txTahomaGrs12">&nbsp;<@show.invtrLabel key="${plan.billingAddressDescription}"/></span>
													</td>
												</tr>
												<tr>
													<td colspan="3" height="8"><img src="img/punto.gif" width="1" height="8" alt="" border="0"></td>
												</tr>
												<tr>
													<td width="190" class="txTahomaGrs10">&nbsp;<@show.invtrLabel key="verifyInformation.Label.CardNumber"/><br>
														<span class="txTahomaGrs12">&nbsp;${plan.cardNumber}</span>
													</td>
													<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
													<td width="243">
														<table width="243" border="0" cellspacing="0" cellpadding="0">
															<tr>
																<td class="txTahomaGrs10">&nbsp;<@show.invtrLabel key="verifyInformation.Label.ExpirationDate"/><br>
																	<span class="txTahomaGrs12">&nbsp;${plan.expirationDate?date?string("MM/yyyy")}</span> 
																</td>
																<td>&nbsp;&nbsp;</td>
																<td class="txTahomaGrs10">&nbsp;<@show.invtrLabel key="verifyInformation.Label.CreditCardType"/><br>
																	<span class="txTahomaGrs12">&nbsp;${plan.creditCardType.description}</span>
																</td>
															</tr>
														</table>
													</td>
												</tr>
											</table>
										</td>
									</tr>
									<tr>
										<td width="35"><img src="img/punto.gif" width="1" height="35" alt="" border="0"></td>
									</tr>
									<tr>
										<td class="txTahomaGrs10"><@show.invtrLabel key="verifyInformation.Text.pleaseNote"/> </td>
									</tr>
									<!-- POLICY DOCUMENTS -->
									<tr>
										<td width="40"><img src="img/punto.gif" width="1" height="40" alt="" border="0"></td>
									</tr>
									<tr>
										<td class="txTahomaGrs12b"><@show.invtrLabel key="verifyInformation.Title.PolicyDocuments"/></td>
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
												<!-- Policy Card and Printed Policy Documents -->
												<tr>
													<td colspan="3" height="20"><img src="img/punto.gif" width="1" height="20" alt="" border="0"></td>
												</tr>
												<tr>
													<td width="450" class="txTahomaGrs10" colspan="3">&nbsp;<@show.invtrLabel key="verifyInformation.Text.mailedToAddess"/><br>
														<span class="txTahomaGrs12">&nbsp;<@show.invtrLabel key="${plan.deliveryAddressDescription}"/></span>
													</td>
												</tr>
												<#if plan.requestPrintedCopy>
													<tr>
														<td colspan="3" height="8"><img src="img/punto.gif" width="1" height="8" alt="" border="0"></td>
													</tr>
													<tr>
														<td width="450" class="txTahomaGrs10" colspan="3">
															<@show.invtrLabel key="verifyInformation.Text.PrintedPolicyDocumentsrequested"/>
															<!-- <br><span class="txTahomaGrs9"><@show.invtrLabel key="verifyInformation.printedPolicyRequestedCost"/></span> --> 
														</td>
													</tr>
												</#if>
											</table>
										</td>
									</tr>
									<!-- IMPORTANT NOTICE -->
									<tr>
										<td width="40"><img src="img/punto.gif" width="1" height="40" alt="" border="0"></td>
									</tr>
									<tr>
										<td class="txTahomaGrs12b"><@show.invtrLabel key="verifyInformation.Title.ImportantNotice"/></td>
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
													<td height="20"><img src="img/punto.gif" width="1" height="20" alt="" border="0"></td>
												</tr>
												<tr>
													<td class="txTahomaGrs11"><@show.invtrLabel key="verifyInformation.Text.CreditCardCharged"/><br>
														<br><@show.invtrLabel key="verifyInformation.Text.policyDocumentsDelivered"/>
													</td>
												</tr>
											</table>
										</td>
									</tr>	
		
									<!-- FIN (ahora viene la botonera -->
									<tr>
										<td width="40"><img src="img/punto.gif" width="1" height="40" alt="" border="0"></td>
									</tr>
									<tr>
										<td>
											<table border="0" cellspacing="0" cellpadding="0">
												<tr>
													<td>
														<@show.invtrButton key="verifyInformation.Button.Previous" id="btnPrevious" arrowLeft="1" arrowRight="0"/>
													</td>
													<td width="25"><img src="img/punto.gif" width="25" height="1" alt="" border="0"></td>
													<td>
														<@show.invtrButton key="verifyInformation.Button.Submit" id="btnSubmit" arrowLeft="0" arrowRight="1"/>
													</td>
													<td width="25"><img src="img/punto.gif" width="25" height="1" alt="" border="0"></td>	
													</td>
													<td>
													<@show.invtrButton key="verifyInformation.Button.CancelApplication" id="btnCancel" arrowLeft="0" arrowRight="0"/>
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
							</td>
						</tr>
					</table>	
				</td>
			</tr>
		</table>
	</form>
	<#include "expire.ftl" />
</@show.page>