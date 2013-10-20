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
				<td colspan="3" height="32" class="txTahomaAzl24"><img src="img/bu_titulo.gif" width="17" height="17" alt="" border="0">&nbsp;<@show.invtrLabel key="firstParticipant.Title.FirstPlanParticipantInformation"/></td>
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
										<td class="txTahomaGrs12b"><@show.invtrLabel key="firstParticipant.Title.ConsentTitle"/></td>
									</tr>
									<tr>
										<td height="1" bgcolor="#b3b3b3"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
									</tr>
									<tr>
										<td height="1" bgcolor="#e5e5e5"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
									</tr>								
									<tr>
										<td class="txTahomaGrs10"><@show.invtrLabel key="firstParticipant.Title.Consent"/></td>
									</tr>
									<tr>
										<td width="30"><img src="img/punto.gif" width="1" height="30" alt="" border="0"></td>
									</tr>
									<tr>
										<td class="txTahomaGrs12b"><@show.invtrLabel key="firstParticipant.Title.PersonalInformation"/></td>
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
												<#if (language.nativeNameRequired)>
													<tr>
														<td width="190" class="txTahomaGrs10" valign="top">
															<@show.invtrLabel key="firstParticipant.Label.Nameinnativelanguage"/><br>
															<@show.inputText key="firstParticipant.nativeName" disabled="false" required="true" style="null" value="${firstParticipant.nativeName}" size="10" class="inputText" maxlength="50"/>
														</td>
														<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
														<td width="243" class="txTahomaGrs10" valign="top">
															<br>
															<@show.checkbox name="firstParticipant.traslationRequired" id="firstParticipant_traslationRequired" value="true" disabled=false/>
															<@show.invtrLabel key="firstParticipant.CheckboxText.RequestTranslation"/><img src="img/ico_important.gif" alt="<@show.invtrLabelLink key="all.Text.RequestTranslation"/>" width="20" height="19" border="0" align="middle">
														</td>
													</tr>
													<tr>
														<td colspan="3" height="11"><img src="img/punto.gif" width="1" height="11" alt="" border="0"></td>
													</tr>
												<#else>
													<@show.hidden name="firstParticipant.nativeName" value="${firstParticipant.nativeName}"/>
												</#if>
												<#if (firstParticipant.traslationRequired)>
													<#assign classInputTextNames = "inputTextDisabled" />
													<#assign disabledInputTextNames = "true" />
												<#else>
													<#assign classInputTextNames = "inputText" />
													<#assign disabledInputTextNames = "false" />
												</#if>
												<tr>
													<td width="190" class="txTahomaGrs10" valign="top">
														<@show.invtrLabel key="firstParticipant.Label.LastName"/><br>
														<@show.inputText key="firstParticipant_lastName" name="firstParticipant.lastName" disabled="${disabledInputTextNames}" required="false" style="null" value="${firstParticipant.lastName}" size="10" class="${classInputTextNames}" maxlength="50"/>
													</td>
													<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
													<td width="243" class="txTahomaGrs10" valign="top">
														<@show.invtrLabel key="firstParticipant.Label.FirstName"/><br>
														<@show.inputText key="firstParticipant_firstName" name="firstParticipant.firstName" disabled="${disabledInputTextNames}" required="false" style="null" value="${firstParticipant.firstName}" size="10" class="${classInputTextNames}" maxlength="50"/>
													</td>
												</tr>
												<#if (!language.nativeNameRequired)>
													<tr>
														<td colspan="3" height="11"><img src="img/punto.gif" width="1" height="11" alt="" border="0"></td>
													</tr>
													<tr>
														<td width="190" class="txTahomaGrs10" valign="top">
															<@show.invtrLabel key="firstParticipant.Label.MiddleName"/><br>
															<@show.inputText key="firstParticipant_middleName" name="firstParticipant.middleName" disabled="${disabledInputTextNames}" required="false" style="null" value="${firstParticipant.middleName}" size="10" class="${classInputTextNames}" maxlength="50"/>
														</td>
														<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
														<td width="243" class="txTahomaGrs10"></td>
													</tr>
												</#if>
												<tr>
													<td colspan="3" height="11"><img src="img/punto.gif" width="1" height="11" alt="" border="0"></td>
												</tr>
												<tr>
													<td width="190" class="txTahomaGrs10" valign="top">
														<@show.invtrLabel key="firstParticipant.Label.Nationality"/><br>
										 				<select name="firstParticipant.country.id" id="firstParticipant.country.id" class="selectFixed">
															<option value="-1"><@show.invtrLabel key="firstParticipant.Menu.SelectCountry"/></option>
															<#list Countries as country>
																<option value="${country.id?c}" <#if country.id?c == firstParticipant.country.id?c>selected</#if>>${country.description}</option>				
															</#list>
														</select>
														<@show.invtrErrorField key="firstParticipant.country.id"/>
													</td>
													<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
													<td width="243" class="txTahomaGrs10"></td>
												</tr>
												<tr>
													<td colspan="3" height="11"><img src="img/punto.gif" width="1" height="11" alt="" border="0"></td>
												</tr>
												<tr>
													<td width="190" class="txTahomaGrs10" valign="top">
														<@show.invtrLabel key="firstParticipant.Label.IdentificationDocumentType"/><br>
														<select name="firstParticipant.documentType.id" id="firstParticipant.documentType.id" class="selectFixed">
															<option value="-1"><@show.invtrLabel key="firstParticipant.Menu.SelectIDType"/></option>
															<#list DocumentTypes as documentType>
																<option value="${documentType.id?c}" <#if documentType.id?c == firstParticipant.documentType.id?c>selected</#if>>${documentType.description}</option>				
															</#list>
														</select>
														<@show.invtrErrorField key="firstParticipant.documentType.id"/>
													</td>
													<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
													<td width="243" class="txTahomaGrs10" valign="top">
														<@show.invtrLabel key="firstParticipant.Label.IdentificationDocumentNumber"/><br>
														<@show.inputText key="firstParticipant.documentNumber" disabled="false" required="false" style="null" value="${firstParticipant.documentNumber}" size="10" class="inputText" maxlength="50"/>
													</td>
												</tr>
												<tr>
													<td colspan="3" height="11"><img src="img/punto.gif" width="1" height="11" alt="" border="0"></td>
												</tr>
												<tr>
													<td width="190" class="txTahomaGrs10" valign="top">
														<@show.invtrLabel key="firstParticipant.Label.DateofBirth"/><br>
														<@show.selectDay id="firstParticipant.birthDateDay" name="firstParticipant.birthDateDay" value="${firstParticipant.birthDateDay?c}" cssClass="select" disabled=false/>
														<@show.selectMonth id="firstParticipant.birthDateMonth" name="firstParticipant.birthDateMonth" value="${firstParticipant.birthDateMonth?c}" cssClass="select" disabled=false/>
														<@show.selectYear id="firstParticipant.birthDateYear" name="firstParticipant.birthDateYear" value="${firstParticipant.birthDateYear?c}" cssClass="select" disabled=false /><br>
														<@show.invtrErrorVirtualField key="firstParticipant_birthDate"/>
													</td>
													<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
													<td width="243" class="txTahomaGrs10" valign="top">
														<@show.invtrLabel key="firstParticipant.Label.Gender"/><br>
														<select name="firstParticipant.gender.id" id="firstParticipant.gender.id" class="selectFixed">
															<option value="-1"><@show.invtrLabel key="firstParticipant.Menu.SelectGender"/></option>
															<#list Genders as gender>
																<option value="${gender.id?c}" <#if gender.id?c == firstParticipant.gender.id?c>selected</#if>>${gender.description}</option>				
															</#list>
														</select><br>
														<@show.invtrErrorField key="firstParticipant.gender.id"/>
													</td>
												</tr>
												<tr>
													<td colspan="3" height="11"><img src="img/punto.gif" width="1" height="11" alt="" border="0"></td>
												</tr>
												<tr>
													<td width="190" class="txTahomaGrs10" valign="top">
														<@show.invtrLabel key="firstParticipant.Label.OccupationIndustry"/><br>
														<select id="firstParticipant_occupationIndustry_id" name="firstParticipant.occupationIndustry.id" class="selectFixed" >
															<option value="-1"><@show.invtrLabel key="firstParticipant.Menu.Selectoccupation"/></option>
															<#list OccupationIndustries as occupation>
																<option value="${occupation.id?c}" <#if occupation.id?c == firstParticipant.occupationIndustry.id?c>selected</#if>>${occupation.description}</option>				
															</#list>
														</select>
														<@show.invtrErrorField key="firstParticipant.occupationIndustry.id"/>
													</td>
													<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
													<td width="243" class="txTahomaGrs10" valign="top">
														<@show.invtrLabel key="firstParticipant.Label.OccupationPosition"/><br>
														<select id="firstParticipant_occupationTitle_id" name="firstParticipant.occupationTitle.id" class="selectFixed">
															<option value="-1"><@show.invtrLabel key="firstParticipant.Menu.Selectoccupation"/></option>
															<#list OccupationTitles as occupation>
																<option value="${occupation.id?c}" <#if occupation.id?c == firstParticipant.occupationTitle.id?c>selected</#if>>${occupation.description}</option>				
															</#list>
														</select><br>
														<@show.invtrErrorField key="firstParticipant.occupationTitle.id"/>
													</td>
												</tr>
											</table>
										</td>
									</tr>
									
									<tr>
										<td width="40"><img src="img/punto.gif" width="1" height="40" alt="" border="0"></td>
									</tr>
									<tr>
										<td class="txTahomaGrs12b"><@show.invtrLabel key="firstParticipant.Title.ContactInformation"/></td>
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
													<td width="190" class="txTahomaGrs10">
														<@show.invtrLabel key="firstParticipant.Label.Emailaddress"/><br>
														<@show.inputText key="firstParticipant.EMail" disabled="false" required="false" style="null" value="${firstParticipant.EMail}" size="10" class="inputText" maxlength="50"/>
													</td>
													<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
													<td width="243" class="txTahomaGrs10">
														<@show.invtrLabel key="firstParticipant.Label.ConfirmEmailaddress"/><br>
														<@show.inputText key="EMailConfirmation" disabled="false" required="false" style="null" value="${EMailConfirmation}" size="10" class="inputText" maxlength="50"/>
													</td>
												</tr>
												<tr>
													<td width="190" class="txTahomaGrs10">
														<@show.invtrErrorVirtualField key="firstParticipant.eMails"/>
													</td>
												<tr>
													<td colspan="3" height="11"><img src="img/punto.gif" width="1" height="11" alt="" border="0"></td>
												</tr>
												<tr>
													<td colspan="3" class="txTahomaGrs10"><b><@show.invtrLabel key="firstParticipant.Title.TelephoneNumber"/>:</b></td>
												</tr>
												<tr>
													<td colspan="3" height="8"><img src="img/punto.gif" width="1" height="8" alt="" border="0"></td>
												</tr>
												<tr>
													<td>
														<@show.invtrErrorVirtualField key="firstParticipant.telephoneNumbers"/>
													</td>
												</tr>
												<tr>
													<td colspan="3" class="txTahomaGrs10" valign="top">
														<div id="content">
															<#include "firstParticipantTelephones.ftl" />
														</div>
													</td>
												</tr>
												<tr>
													<td colspan="3" height="8"><img src="img/punto.gif" width="1" height="8" alt="" border="0"></td>
												</tr>
												<tr>
													<td colspan="3"><a id="addTelephoneNumber" class="lnkTahomaAzl10b" href="#"><@show.invtrLabel key="firstParticipant.Hipertext.Addanothertelephonenumber"/></a></td>
												</tr>
											</table>
										</td>
									</tr>	
									<tr>
										<td width="40"><img src="img/punto.gif" width="1" height="40" alt="" border="0"></td>
									</tr>
									<tr>
										<td class="txTahomaGrs12b"><@show.invtrLabel key="firstParticipant.Title.AddressInformation"/></td>
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
													<td colspan="2" class="txTahomaGrs10"><b><@show.invtrLabel key="firstParticipant.Title.ResidentialAddress"/></b></td>
													<td class="txTahomaGrs10"></td>
												</tr>
												<tr>
													<td colspan="3" height="8"><img src="img/punto.gif" width="1" height="8" alt="" border="0"></td>
												</tr>
												<tr>
													<td colspan="3" class="txTahomaGrs10" valign="top">
														<@show.invtrLabel key="firstParticipant.Label.AddressLine1"/><br>
														<@show.inputText key="firstParticipant.residentialAddress.addressLine1" disabled="false" required="false" style="null" value="${firstParticipant.residentialAddress.addressLine1}" size="10" class="inputTextPorc" maxlength="50"/>
													</td>
												</tr>
												<tr>
													<td colspan="3" height="8"><img src="img/punto.gif" width="1" height="8" alt="" border="0"></td>
												</tr>
												<tr>
													<td colspan="3" class="txTahomaGrs10" valign="top">
														<@show.invtrLabel key="firstParticipant.Label.AddressLine2"/><br>
														<@show.inputText key="firstParticipant.residentialAddress.addressLine2" disabled="false" required="false" style="null" value="${firstParticipant.residentialAddress.addressLine2}" size="10" class="inputTextPorc" maxlength="50"/>
													</td>
												</tr>
												<tr>
													<td colspan="3" height="8"><img src="img/punto.gif" width="1" height="8" alt="" border="0"></td>
												</tr>
												<tr>
													<td width="190" class="txTahomaGrs10" valign="top">
														<@show.invtrLabel key="firstParticipant.Label.City"/><br>
														<@show.inputText key="firstParticipant.residentialAddress.city" disabled="false" required="false" style="null" value="${firstParticipant.residentialAddress.city}" size="10" class="inputText" maxlength="50"/>
													</td>
													<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
													<td width="243" class="txTahomaGrs10" valign="top">
														<@show.invtrLabel key="firstParticipant.Label.StateProvince"/><br>
														<@show.inputText key="firstParticipant.residentialAddress.state" disabled="false" required="false" style="null" value="${firstParticipant.residentialAddress.state}" size="10" class="inputText" maxlength="50"/>
													</td>
												</tr>
												<tr>
													<td colspan="3" height="8"><img src="img/punto.gif" width="1" height="8" alt="" border="0"></td>
												</tr>
												<tr>
													<td width="190" class="txTahomaGrs10" valign="top">
														<@show.invtrLabel key="firstParticipant.Label.Country"/><br>
														<select name="firstParticipant.residentialAddress.country.id" id="firstParticipant.residentialAddress.country.id" class="selectFixed">
															<option value="-1"><@show.invtrLabel key="firstParticipant.Menu.SelectCountry"/></option>
															<#list Countries as country>
																<option value="${country.id?c}" <#if country.id?c == firstParticipant.residentialAddress.country.id?c>selected</#if>>${country.description}</option>				
															</#list>
														</select>
														<@show.invtrErrorField key="firstParticipant.residentialAddress.country.id"/>
													</td>
													<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
													<td width="243" class="txTahomaGrs10" valign="top">
														<@show.invtrLabel key="firstParticipant.Label.PostalCode"/><br>
														<@show.inputText key="firstParticipant.residentialAddress.postalCode" disabled="false" required="false" style="null" value="${firstParticipant.residentialAddress.postalCode}" size="10" class="inputText" maxlength="12"/>
													</td>
												</tr>
												<tr>
													<td colspan="3">
														<@show.invtrErrorVirtualField key="firstParticipant.residentialAddress"/>
													</td>
												</tr>
												<tr>
													<td colspan="3" height="11"><img src="img/punto.gif" width="1" height="11" alt="" border="0"></td>
												</tr>
												<tr>
													<td colspan="3">
														<#if (firstParticipant.businessAddress.isEmpty)>
															<a id="lnkAddBusinessAddress" class="lnkTahomaAzl10b" href="#"><@show.invtrLabel key="firstParticipant.Hipertext.Addbusinessaddress"/></a>
															<a id="lnkDeleteBusinessAddress" class="lnkTahomaAzl10b" href="#" style="display:none;"><@show.invtrLabel key="firstParticipant.Hipertext.Deletebusinessaddress"/></a>
														<#else>
															<a id="lnkAddBusinessAddress" class="lnkTahomaAzl10b" href="#" style="display:none;"><@show.invtrLabel key="firstParticipant.Hipertext.Addbusinessaddress"/></a>
															<a id="lnkDeleteBusinessAddress" class="lnkTahomaAzl10b" href="#"><@show.invtrLabel key="firstParticipant.Hipertext.Deletebusinessaddress"/></a>
														</#if>
													</td>
												</tr>
												<tr id="txBusinessAddress" <#if (firstParticipant.businessAddress.isEmpty)>style="display:none;"</#if>>
													<td colspan="3">
														<table width="450" cellspacing="0" cellpadding="0">
															<tr>
																<td colspan="3" height="9"><img src="img/punto.gif" width="1" height="9" alt="" border="0"></td>
															</tr>
															<tr>
																<td colspan="2" class="txTahomaGrs10"><b><@show.invtrLabel key="firstParticipant.Title.BusinessAddress"/></b></td>
																<td class="txTahomaGrs10"></td>
															</tr>
															<tr>
																<td colspan="3" height="8"><img src="img/punto.gif" width="1" height="8" alt="" border="0"></td>
															</tr>
															<tr>
																<td colspan="3" class="txTahomaGrs10" valign="top">
																	<@show.invtrLabel key="firstParticipant.Label.AddressLine1"/><br>
																	<@show.inputText key="firstParticipant_businessAddress_addressLine1" name="firstParticipant.businessAddress.addressLine1" disabled="false" required="false" style="null" value="${firstParticipant.businessAddress.addressLine1}" size="10" class="inputTextPorc" maxlength="50"/>
																</td>
															</tr>
															<tr>
																<td colspan="3" height="8"><img src="img/punto.gif" width="1" height="8" alt="" border="0"></td>
															</tr>
															<tr>
																<td colspan="3" class="txTahomaGrs10" valign="top">
																	<@show.invtrLabel key="firstParticipant.Label.AddressLine2"/><br>
																	<@show.inputText key="firstParticipant_businessAddress_addressLine2" name="firstParticipant.businessAddress.addressLine2" disabled="false" required="false" style="null" value="${firstParticipant.businessAddress.addressLine2}" size="10" class="inputTextPorc" maxlength="50"/>
																</td>
															</tr>
															<tr>
																<td colspan="3" height="8"><img src="img/punto.gif" width="1" height="8" alt="" border="0"></td>
															</tr>
															<tr>
																<td width="190" class="txTahomaGrs10" valign="top">
																	<@show.invtrLabel key="firstParticipant.Label.City"/><br>
																	<@show.inputText key="firstParticipant_businessAddress_city" name="firstParticipant.businessAddress.city" disabled="false" required="false" style="null" value="${firstParticipant.businessAddress.city}" size="10" class="inputText" maxlength="50"/>
																</td>
																<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
																<td width="243" class="txTahomaGrs10" valign="top">
																	<@show.invtrLabel key="firstParticipant.Label.StateProvince"/><br>
																	<@show.inputText key="firstParticipant_businessAddress_state" name="firstParticipant.businessAddress.state" disabled="false" required="false" style="null" value="${firstParticipant.businessAddress.state}" size="10" class="inputText" maxlength="50"/>
																</td>
															</tr>
															<tr>
																<td colspan="3" height="8"><img src="img/punto.gif" width="1" height="8" alt="" border="0"></td>
															</tr>
															<tr>
																<td width="190" class="txTahomaGrs10" valign="top">
																	<@show.invtrLabel key="firstParticipant.Label.Country"/><br>
																	<select name="firstParticipant.businessAddress.country.id" id="firstParticipant_businessAddress_country_id" class="selectFixed">
																		<option value="-1"><@show.invtrLabel key="firstParticipant.Menu.SelectCountry"/></option>
																		<#list Countries as country>
																			<option value="${country.id?c}" <#if country.id?c == firstParticipant.businessAddress.country.id?c>selected</#if>>${country.description}</option>				
																		</#list>
																	</select>
																	<@show.invtrErrorField key="firstParticipant_businessAddress_country_id"/>
																</td>
																<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
																<td width="243" class="txTahomaGrs10" valign="top">
																	<@show.invtrLabel key="firstParticipant.Label.PostalCode"/><br>
																	<@show.inputText key="firstParticipant_businessAddress_postalCode" name="firstParticipant.businessAddress.postalCode" disabled="false" required="false" style="null" value="${firstParticipant.businessAddress.postalCode}" size="10" class="inputText" maxlength="12"/>
																</td>
															</tr>
															<tr>
																<td colspan="3">
																	<@show.invtrErrorVirtualField key="firstParticipant.businessAddress"/>
																</td>
															</tr>
															<tr>
																<td colspan="3" height="11"><img src="img/punto.gif" width="1" height="11" alt="" border="0"></td>
															</tr>
														</table>
													</td>
												</tr>
												
												</div>
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
														<p class="clsTable1text">
															<span class="txTahomaAzl16"><@show.invtrLabel key="firstParticipant.Title.AddaJointPlanParticipant"/></span>
															<br>
															<@show.checkbox name="hasJointParticipant" id="hasJointParticipant" value="true" disabled=false cssClass="txTahomaGrs11"/>
															<@show.invtrLabel key="firstParticipant.CheckboxText.CheckJointPlanParticipant"/>
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
														<td><@show.invtrButton key="firstParticipant.Button.Previous" id="btnPrevious" arrowLeft="1" arrowRight="0"/></td>
														<td width="25"><img src="img/punto.gif" width="25" height="1" alt="" border="0"></td>
													</#if>					
													
													<td><@show.invtrButton key="firstParticipant.Button.Next" id="btnNext" arrowLeft="0" arrowRight="1"/></td>
													
													<#if (editMode == false)>														
														<td width="25"><img src="img/punto.gif" width="25" height="1" alt="" border="0"></td>	
														<td><@show.invtrButton key="firstParticipant.Button.CancelApplication" id="btnCancel" arrowLeft="0" arrowRight="0"/></td>
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