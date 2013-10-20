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
				<td colspan="3" height="32" class="txTahomaAzl24"><img src="img/bu_titulo.gif" width="17" height="17" alt="" border="0">&nbsp;<@show.invtrLabel key="billing.Title.BillingInformation"/></td>
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
									<#if (billing.countErrorCC > 0 )>
										<tr>
											<td width="30"><img src="img/punto.gif" width="1" height="30" alt="" border="0"></td>
										</tr>
										<tr>
											<td class="txTahomaGrs10"><@show.invtrLabel key="billing.Text.errorCreditCard"/></td>
										</tr>
									</#if>
									<tr>
										<td width="30"><img src="img/punto.gif" width="1" height="30" alt="" border="0"></td>
									</tr>
									<tr>
										<td class="txTahomaGrs12b"><@show.invtrLabel key="billing.Title.CardholderInformation"/></td>
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
													<td colspan="3" height="20"><img src="img/punto.gif" width="1" height="20" alt="" border="0"></td>
												</tr>
												<tr>
													<td colspan="3" class="txTahomaGrs10"><b><@show.invtrLabel key="billing.Title.NameasshownonCreditCard"/></b></td>
												</tr>
												<tr>
													<td colspan="3" height="8"><img src="img/punto.gif" width="1" height="8" alt="" border="0"></td>
												</tr>
												<tr>
													<td colspan="3" class="txTahomaGrs10" valign="top">
														<select name="billing.idBillingNameType" id="billing_idBillingNameType" class="select" style="width:394px;" <#if (!billing.billingNameTypeSelected)>disabled</#if>>
															<#list billingNameTypes as billingNameType>
																<option value="${billingNameType.id}" <#if billingNameType.id?c == billing.idBillingNameType?c>selected</#if>>${billingNameType.description}</option>
															</#list>
														</select>
														<@show.invtrErrorField key="billing_idBillingNameType"/>
														<input type="hidden" name="billing.billingNameTypeSelected" id="billing_billingNameTypeSelected" value="${billing.billingNameTypeSelected?string}" />
													</td>
												</tr>
												<tr>
													<td colspan="3" height="8" valign="top">&nbsp;&nbsp;
													<#if (billing.billingNameTypeSelected)>
														<a href="#" id="editName" class="lnkTahomaAzl10b"><@show.invtrLabel key="billing.Link.enterDifferentName"/></a>
														<a href="#" id="deleteName" class="lnkTahomaAzl10b" style= display:"none" ><@show.invtrLabel key="billing.Link.deletedifferentname" /></a>
													<#else>
														<a href="#" id="editName" class="lnkTahomaAzl10b" style= display:"none" ><@show.invtrLabel key="billing.Link.enterDifferentName"/></a>
														<a href="#" id="deleteName" class="lnkTahomaAzl10b"><@show.invtrLabel key="billing.Link.deletedifferentname" /></a>
													</#if>
													</td>
												</tr>
												<tr>
													<td colspan="3">
														<table width="450" cellspacing="0" cellpadding="0" border="0" id="divBillingName" <#if (billing.billingNameTypeSelected)>style="display:none;"</#if>>
															<tr>
																<td colspan="3" height="8"><img src="img/punto.gif" width="1" height="8" alt="" border="0"></td>
															</tr>
															<tr>
																<td width="190" class="txTahomaGrs10" valign="top">
																	<@show.invtrLabel key="billing.Label.LastName"/><br>
																	<@show.inputText key="billing_lastNameCC" name="billing.lastNameCC" disabled="false" required="true" style="null" value="${billing.lastNameCC}" size="10" class="inputText" maxlength="50"/>
																</td>
																<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
																<td width="243" class="txTahomaGrs10" valign="top">
																	<@show.invtrLabel key="billing.Label.FirstName"/><br>
																	<@show.inputText key="billing_firstNameCC" name="billing.firstNameCC" disabled="false" required="true" style="null" value="${billing.firstNameCC}" size="10" class="inputText" maxlength="50"/>
																</td>
															</tr>
															<#if (!language.nativeNameRequired)>
																<tr>
																	<td colspan="3" height="11"><img src="img/punto.gif" width="1" height="11" alt="" border="0"></td>
																</tr>
																<tr>
																	<td width="190" class="txTahomaGrs10" valign="top">
																		<@show.invtrLabel key="billing.Label.MiddleName"/><br>
																		<@show.inputText key="billing_middleNameCC" name="billing.middleNameCC" disabled="false" required="true" style="null" value="${billing.middleNameCC}" size="10" class="inputText" maxlength="50"/></td>
																	<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
																	<td width="243" class="txTahomaGrs10"></td>
																</tr>
															<#else>
																<input type="hidden" name="billing.middleNameCC" id="billing_middleNameCC" value="" />
															</#if>
														</table>
													</td>
												</tr>
												<tr>
													<td colspan="3" height="20"><img src="img/punto.gif" width="1" height="20" alt="" border="0"></td>
												</tr>
												<tr>
													<td colspan="3" class="txTahomaGrs10"><b><@show.invtrLabel key="billing.Title.BillingAddress"/>:</b></td>
												</tr>
												<tr>
													<td colspan="3" height="8"><img src="img/punto.gif" width="1" height="8" alt="" border="0"></td>
												</tr>
												<tr>
													<td colspan="3" class="txTahomaGrs10" valign="top">
														<select name="billing.idBillingAddressType" id="billing_idBillingAddressType" class="select" style="width:394px;" <#if (!billing.billingAddressTypeSelected)>disabled</#if>>
															<#list billingAddressTypes as billingAddressType>
																<option value="${billingAddressType.id}" <#if billing.idBillingAddressType?c == billingAddressType.id?c>selected</#if>>${billingAddressType.description}</option>
															</#list>
														</select>
														<@show.invtrErrorField key="billing_idBillingAddressType"/>
														<input type="hidden" name="billing.billingAddressTypeSelected" id="billing_billingAddressTypeSelected" value="${billing.billingAddressTypeSelected?string}" />
													</td>
												</tr>
												<tr>
													<td colspan="3" height="8" valign="top">&nbsp;&nbsp;
														<#if (billing.billingAddressTypeSelected)>
															<a href="#" id="editBilling" class="lnkTahomaAzl10b"><@show.invtrLabel key="billing.Link.enterdifferentbillingaddress"/></a>
															<a href="#" id="deleteBilling" class="lnkTahomaAzl10b" style="display:none;"><@show.invtrLabel key="billing.Link.deletedifferentbillingaddress"/></a>
														<#else>
															<a href="#" id="editBilling" class="lnkTahomaAzl10b" style="display:none;"><@show.invtrLabel key="billing.Link.enterdifferentbillingaddress"/></a>
															<a href="#" id="deleteBilling" class="lnkTahomaAzl10b" ><@show.invtrLabel key="billing.Link.deletedifferentbillingaddress"/></a>
														</#if>
													</td>								
												</tr>
												<tr>
													<td colspan="3" height="8"><img src="img/punto.gif" width="1" height="8" alt="" border="0"></td>
												</tr>
												<tr>
													<td colspan="3">
														<table width="450" cellspacing="0" cellpadding="0" border="0" id="divBillingAddress" <#if (billing.billingAddressTypeSelected)>style="display:none;"</#if>>
															<tr>
																<td colspan="3" class="txTahomaGrs10" valign="top">
																	<@show.invtrLabel key="billing.Label.AddressLine1"/><br>
																	<@show.inputText key="billing_billingAddress_addressLine1" name="billing.billingAddress.addressLine1" disabled="false" required="true" style="null" value="${billing.billingAddress.addressLine1}" size="10" class="inputTextPorc" maxlength="50"/>
																</td>
															</tr>
															<tr>
																<td colspan="3" height="8"><img src="img/punto.gif" width="1" height="8" alt="" border="0"></td>
															</tr>
															<tr>
																<td colspan="3" class="txTahomaGrs10" valign="top">
																	<@show.invtrLabel key="billing.Label.AddressLine2"/><br>
																	<@show.inputText key="billing_billingAddress_addressLine2" name="billing.billingAddress.addressLine2" disabled="false" required="true" style="null" value="${billing.billingAddress.addressLine2}" size="10" class="inputTextPorc" maxlength="50"/>
																</td>
															</tr>
															<tr>
																<td colspan="3" height="8"><img src="img/punto.gif" width="1" height="8" alt="" border="0"></td>
															</tr>
															<tr>
																<td width="190" class="txTahomaGrs10" valign="top">
																	<@show.invtrLabel key="billing.Label.City"/><br>
																	<@show.inputText key="billing_billingAddress_city" name="billing.billingAddress.city" disabled="false" required="true" style="null" value="${billing.billingAddress.city}" size="10" class="inputText" maxlength="50"/>
																</td>
																<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
																<td width="243" class="txTahomaGrs10" valign="top">
																	<@show.invtrLabel key="billing.Label.StateProvince"/><br>
																	<@show.inputText key="billing_billingAddress_state" name="billing.billingAddress.state" disabled="false" required="true" style="null" value="${billing.billingAddress.state}" size="10" class="inputText" maxlength="50"/>
																</td>
															</tr>
															<tr>
																<td colspan="3" height="8"><img src="img/punto.gif" width="1" height="8" alt="" border="0"></td>
															</tr>
															<tr>
																<td width="190" class="txTahomaGrs10" valign="top">
																	<@show.invtrLabel key="billing.Label.Country"/><br>
																	<select id="billing_billingAddress_country_id" name="billing.billingAddress.country.id" class="selectFixed">
																		<option value="-1"><@show.invtrLabel key="billing.Menu.SelectCountryCode"/></option>
																		<#list countries as country>
																			<option value="${country.id}" <#if country.id?c == billing.billingAddress.country.id?c>selected</#if>>${country.description}</option>
																		</#list>
																	</select>
																	<@show.invtrErrorField key="billing_billingAddress_country_id"/>
																</td>
																<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
																<td width="243" class="txTahomaGrs10" valign="top">
																	<@show.invtrLabel key="billing.Label.PostalCode"/><br>
																	<@show.inputText key="billing_billingAddress_postalCode" name="billing.billingAddress.postalCode" disabled="false" required="true" style="null" value="${billing.billingAddress.postalCode}" size="10" class="inputText" maxlength="50"/>
																</td>
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
									<tr>
										<td class="txTahomaGrs12b"><@show.invtrLabel key="billing.Title.CreditCardInformation"/></td>
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
													<td colspan="3" height="20"><img src="img/punto.gif" width="1" height="20" alt="" border="0"></td>
												</tr>
												<tr>
													<td colspan="3">
														<table cellspacing="0" cellpadding="0" border="0">
															<tr>
																<td width="190" class="txTahomaGrs10" valign="top">
																	<@show.invtrLabel key="billing.Label.CardNumber"/><br>
																	<@show.inputText key="billing_cardNumber" name="billing.cardNumber" disabled="false" required="true" style="null" value="${billing.cardNumber}" size="10" class="inputText" maxlength="16"/>
																</td>
																<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
																<td width="100" class="txTahomaGrs10" valign="top">
																	<@show.invtrLabel key="billing.Label.SecurityCode"/><br>
																	<@show.inputText key="billing_securityCode" name="billing.securityCode" disabled="false" required="true" style="null" value="${billing.securityCode}" size="10" class="inputTextCode" maxlength="4"/>
																</td>
																<td width="*" class="txTahomaGrs10" valign="top" align="left">
																	<br><a href="#" class="lnkTahomaAzl10b" id="lnkWhatsthis"><@show.invtrLabel key="billing.Label.whatsthis"/></a>
																</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td colspan="3" height="11"><img src="img/punto.gif" width="1" height="11" alt="" border="0"></td>
												</tr>
												<tr>
													<td width="190" class="txTahomaGrs10" valign="top">
														<@show.invtrLabel key="billing.Label.CreditCardType"/><br>
														<select name="billing.creditCardType.id" id="billing_creditCardType_id" class="selectFixed">
															<option value="-1"><@show.invtrLabel key="billing.Menu.SelectCreditCardType"/></option>
															<#list creditCardTypes as creditCardType>
																<option value="${creditCardType.id}" <#if billing.creditCardType.id?c == creditCardType.id?c>selected</#if>>${creditCardType.description}</option>
															</#list>
														</select>
														<@show.invtrErrorField key="billing_creditCardType_id"/>
													</td>
													<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
													<td width="243" class="txTahomaGrs10" valign="top">
														<@show.invtrLabel key="billing.Label.ExpirationDate"/><br>
														<@show.selectMonth id="monthExpiration" name="monthExpiration" value="${monthExpiration}" cssClass="select" disabled=false/>
														<@show.selectYear id="yearExpiration" name="yearExpiration" value="${yearExpiration?c}" cssClass="select" disabled=false min="${currentDate?date?string('yyyy')}" max="${(currentDate?date?string('yyyy')?number+10)?c?string}" /><br>
														<@show.invtrErrorVirtualField key="billing_expiration"/>
													</td>
												</tr>
												<tr>
													<td colspan="3" height="11"><img src="img/punto.gif" width="1" height="11" alt="" border="0"></td>
												</tr>
											</table>
										</td>
									</tr>
									<tr>
										<td width="40"><img src="img/punto.gif" width="1" height="40" alt="" border="0"></td>
									</tr>
									<tr>
										<td class="txTahomaGrs12b"><@show.invtrLabel key="billing.Title.PolicyDocuments"/></td>
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
													<td class="txTahomaGrs11">
														<@show.invtrLabel key="billing.Text.policyDocumentsDelivered"/>:
													</td>
												</tr>
												<tr>
													<td height="10"><img src="img/punto.gif" width="1" height="10" alt="" border="0"></td>
												</tr>
												<tr>
													<td class="txTahomaGrs11" valign="top">
														<select name="billing.idDeliveryAddressType" id="billing_idDeliveryAddressType" class="select" style="width:394px;" <#if (!billing.deliveryAddressTypeSelected)>disabled</#if>>
															<#list billingAddressTypes as billingAddressType>
																<option value="${billingAddressType.id}" <#if billing.idDeliveryAddressType?c == billingAddressType.id?c>selected</#if>>${billingAddressType.description}</option>
															</#list>
														</select>
														<@show.invtrErrorField key="billing_idDeliveryAddressType"/>
														<input type="hidden" name="billing.deliveryAddressTypeSelected" id="billing_deliveryAddressTypeSelected" value="${billing.deliveryAddressTypeSelected?string}" />
													</td>
												</tr>
												<tr>
													<td colspan="3" height="8" valign="top">&nbsp;&nbsp;
														<#if (billing.deliveryAddressTypeSelected)>
															<a href="#" id="editPolicy" class="lnkTahomaAzl10b"><@show.invtrLabel key="billing.Link.enterdifferentmailingaddress"/></a>
															<a href="#" id="deletePolicy" class="lnkTahomaAzl10b" style = "display:none" ><@show.invtrLabel key="billing.Link.deletedifferentmailingaddress"/></a>
														<#else>
															<a href="#" id="editPolicy" class="lnkTahomaAzl10b" style = "display:none" ><@show.invtrLabel key="billing.Link.enterdifferentmailingaddress"/></a>
															<a href="#" id="deletePolicy" class="lnkTahomaAzl10b"><@show.invtrLabel key="billing.Link.deletedifferentmailingaddress"/></a>
														</#if>
													</td>
												</tr>
												<tr>
													<td height="10"><img src="img/punto.gif" width="1" height="10" alt="" border="0"></td>
												</tr>
												<tr>
													<td colspan="3">
														<table width="450" cellspacing="0" cellpadding="0" border="0" id="divDeliveryAddress" <#if (billing.deliveryAddressTypeSelected)>style="display:none;"</#if>>
															<tr>
																<td colspan="3" class="txTahomaGrs10" valign="top">
																	<@show.invtrLabel key="billing.Label.AddressLine1"/><br>
																	<@show.inputText key="billing_deliveryAddress_addressLine1" name="billing.deliveryAddress.addressLine1" disabled="false" required="true" style="null" value="${billing.deliveryAddress.addressLine1}" size="10" class="inputTextPorc" maxlength="50"/>
																</td>
															</tr>
															<tr>
																<td colspan="3" height="8"><img src="img/punto.gif" width="1" height="8" alt="" border="0"></td>
															</tr>
															<tr>
																<td colspan="3" class="txTahomaGrs10" valign="top">
																	<@show.invtrLabel key="billing.Label.AddressLine2"/><br>
																	<@show.inputText key="billing_deliveryAddress_addressLine2" name="billing.deliveryAddress.addressLine2" disabled="false" required="true" style="null" value="${billing.deliveryAddress.addressLine2}" size="10" class="inputTextPorc" maxlength="50"/>
																</td>
															</tr>
															<tr>
																<td colspan="3" height="8"><img src="img/punto.gif" width="1" height="8" alt="" border="0"></td>
															</tr>
															<tr>
																<td width="190" class="txTahomaGrs10" valign="top">
																	<@show.invtrLabel key="billing.Label.City"/><br>
																	<@show.inputText key="billing_deliveryAddress_city" name="billing.deliveryAddress.city" disabled="false" required="true" style="null" value="${billing.deliveryAddress.city}" size="10" class="inputText" maxlength="50"/>
																</td>
																<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
																<td width="243" class="txTahomaGrs10" valign="top">
																	<@show.invtrLabel key="billing.Label.StateProvince"/><br>
																	<@show.inputText key="billing_deliveryAddress_state" name="billing.deliveryAddress.state" disabled="false" required="true" style="null" value="${billing.deliveryAddress.state}" size="10" class="inputText" maxlength="50"/>
																</td>
															</tr>
															<tr>
																<td colspan="3" height="8"><img src="img/punto.gif" width="1" height="8" alt="" border="0"></td>
															</tr>
															<tr>
																<td width="190" class="txTahomaGrs10" valign="top">
																	<@show.invtrLabel key="billing.Label.Country"/><br>
																	<select id="billing_deliveryAddress_country_id" name="billing.deliveryAddress.country.id" class="selectFixed">
																		<option value="-1"><@show.invtrLabel key="billing.Menu.SelectCountryCode"/></option>
																		<#list countries as country>
																			<option value="${country.id}" <#if country.id?c == billing.deliveryAddress.country.id?c>selected</#if>>${country.description}</option>
																		</#list>
																	</select>
																	<@show.invtrErrorField key="billing_deliveryAddress_country_id"/>
																</td>
																<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
																<td width="243" class="txTahomaGrs10" valign="top">
																	<@show.invtrLabel key="billing.Label.PostalCode"/><br>
																	<@show.inputText key="billing_deliveryAddress_postalCode" name="billing.deliveryAddress.postalCode" disabled="false" required="true" style="null" value="${billing.deliveryAddress.postalCode}" size="10" class="inputText" maxlength="50"/>
																</td>
															</tr>
														</table>
													
													</td>
												</tr>
												<tr>
													<td class="txTahomaGrs11">
														<@show.invtrLabel key="billing.Text.printefCopy"/>
													</td>
												</tr>
											</table>
										</td>
									</tr>	
									<tr>
										<td width="10"><img src="img/punto.gif" width="1" height="10" alt="" border="0"></td>
									</tr>
									<tr>
										<td>
											<table width="450" border="0" cellspacing="0" cellpadding="0">
												<tr>
													<td class="clsTable1">
														<p class="clsTable1text10">
															<@show.checkbox name="billing.requestPrintedCopy" id="billing.requestPrintedCopy" value="true" disabled=false cssClass="txTahomaGrs11"/>&nbsp;<@show.invtrLabel key="billing.CheckboxText.checkRequestedPrinted"/>
														</p>
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
											<table border="0" cellspacing="0" cellpadding="0">
												<tr>
													<#if (editMode == false)>
														<#if (billing.countErrorCC == 0 )>
															<td><@show.invtrButton key="billing.Button.Previous" id="btnPrevious" arrowLeft="1" arrowRight="0"/></td>
															<td width="25"><img src="img/punto.gif" width="25" height="1" alt="" border="0"></td>
														</#if>
													</#if>	
													<#if (billing.countErrorCC == 0 )>
														<td><@show.invtrButton key="billing.Button.Next" id="btnNext" arrowLeft="0" arrowRight="1"/></td>
													<#else>
														<td><@show.invtrButton key="verifyInformation.Button.Submit" id="btnNext" arrowLeft="0" arrowRight="1"/></td>
													</#if>
													<#if (editMode == false)>
														<td width="25"><img src="img/punto.gif" width="25" height="1" alt="" border="0"></td>	
														<td><@show.invtrButton key="billing.Button.CancelApplication" id="btnCancel" arrowLeft="0" arrowRight="0"/></td>
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
		<div id="divWhatsthis" style="display:none; cursor: default">
			<table>
				<tr>
					<td align="center">
						<img src="img/im_creditCard_1.gif" alt="" border="0" align="middle">
					<td>
				</tr>
				<tr>
					<td align="center">
						<img src="img/im_creditCard_2.gif" alt="" border="0" align="middle">
					<td>
				</tr>
			</table> 
			<@show.invtrButton key="approval.Button.Close" id="btnCloseWhatsthis" arrowLeft="0" arrowRight="0"/> 
		</div>
	</form>
	<#include "expire.ftl" />
</@show.page>