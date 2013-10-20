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
				<td colspan="3" height="32" class="txTahomaAzl24"><img src="img/bu_titulo.gif" width="17" height="17" alt="" border="0">&nbsp;<@show.invtrLabel key="jointParticipant.Title.JointPlanParticipantInformation"/></td>
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
										<td class="txTahomaGrs12b"><@show.invtrLabel key="jointParticipant.Title.ConsentTitle"/></td>
									</tr>
									<tr>
										<td height="1" bgcolor="#b3b3b3"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
									</tr>
									<tr>
										<td height="1" bgcolor="#e5e5e5"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
									</tr>								
									<tr>
										<td class="txTahomaGrs10"><@show.invtrLabel key="jointParticipant.Title.Consent"/></td>
									</tr>
									<tr>
										<td width="30"><img src="img/punto.gif" width="1" height="30" alt="" border="0"></td>
									</tr>
									<tr>
										<td class="txTahomaGrs12b"><@show.invtrLabel key="jointParticipant.Title.PersonalInformation"/></td>
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
															<@show.invtrLabel key="jointParticipant.Label.Nameinnativelanguage"/><br>
															<@show.inputText key="jointParticipant.nativeName" disabled="false" required="true" style="null" value="${jointParticipant.nativeName}" size="10" class="inputText" maxlength="50"/>
														</td>
														<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
														<td width="243" class="txTahomaGrs10" valign="top">
															<br>
															<@show.checkbox name="jointParticipant.traslationRequired" id="jointParticipant_traslationRequired" value="true" disabled=false/>
															<@show.invtrLabel key="jointParticipant.CheckboxText.Requesttranslation"/><img src="img/ico_important.gif" alt="<@show.invtrLabelLink key="all.Text.RequestTranslation"/>" width="20" height="19" border="0" align="middle">
														</td>
													</tr>
													<tr>
														<td colspan="3" height="11"><img src="img/punto.gif" width="1" height="11" alt="" border="0"></td>
													</tr>
												<#else>
													<@show.hidden name="jointParticipant.nativeName" value="${jointParticipant.nativeName}"/>
												</#if>
												<#if (jointParticipant.traslationRequired)>
													<#assign classInputTextNames = "inputTextDisabled" />
													<#assign disabledInputTextNames = "true" />
												<#else>
													<#assign classInputTextNames = "inputText" />
													<#assign disabledInputTextNames = "false" />
												</#if>
												<tr>
													<td width="190" class="txTahomaGrs10" valign="top">
														<@show.invtrLabel key="jointParticipant.Label.LastName"/><br>
														<@show.inputText key="jointParticipant_lastName" name="jointParticipant.lastName" disabled="${disabledInputTextNames}" required="false" style="null" value="${jointParticipant.lastName}" size="10" class="${classInputTextNames}" maxlength="50"/>
													</td>
													<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
													<td width="243" class="txTahomaGrs10" valign="top">
														<@show.invtrLabel key="jointParticipant.Label.FirstName"/><br>
														<@show.inputText key="jointParticipant_firstName" name="jointParticipant.firstName" disabled="${disabledInputTextNames}" required="false" style="null" value="${jointParticipant.firstName}" size="10" class="${classInputTextNames}" maxlength="50"/>
													</td>
												</tr>
												<#if (!language.nativeNameRequired)>
													<tr>
														<td colspan="3" height="11"><img src="img/punto.gif" width="1" height="11" alt="" border="0"></td>
													</tr>
													<tr>
														<td width="190" class="txTahomaGrs10" valign="top">
															<@show.invtrLabel key="jointParticipant.Label.MiddleName"/><br>
															<@show.inputText key="jointParticipant_middleName" name="jointParticipant.middleName" disabled="${disabledInputTextNames}" required="false" style="null" value="${jointParticipant.middleName}" size="10" class="${classInputTextNames}" maxlength="50"/>
														</td>
														<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
														<td width="243" class="txTahomaGrs10"></td>
													</tr>
													<tr>
														<td colspan="3" height="11"><img src="img/punto.gif" width="1" height="11" alt="" border="0"></td>
													</tr>
												</#if>
												<tr>
													<td width="190" class="txTahomaGrs10" valign="top">
														<@show.invtrLabel key="jointParticipant.Label.Nationality"/><br>
										 				<select name="jointParticipant.country.id" id="jointParticipant.country.id" class="selectFixed">
															<option value="-1"><@show.invtrLabel key="jointParticipant.Menu.SelectCountry"/></option>
															<#list Countries as country>
																<option value="${country.id?c}" <#if country.id?c == jointParticipant.country.id?c>selected</#if>>${country.description}</option>				
															</#list>
														</select>
														<@show.invtrErrorField key="jointParticipant.country.id"/>
													</td>
													<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
													<td width="243" class="txTahomaGrs10"></td>
												</tr>
												<tr>
													<td colspan="3" height="11"><img src="img/punto.gif" width="1" height="11" alt="" border="0"></td>
												</tr>
												<tr>
													<td width="190" class="txTahomaGrs10" valign="top">
														<@show.invtrLabel key="jointParticipant.Label.IdentificationDocumentType"/><br>
														<select name="jointParticipant.documentType.id" id="jointParticipant.documentType.id" class="selectFixed">
															<option value="-1"><@show.invtrLabel key="jointParticipant.Menu.SelectIDType"/></option>
															<#list DocumentTypes as documentType>
																<option value="${documentType.id?c}" <#if documentType.id?c == jointParticipant.documentType.id?c>selected</#if>>${documentType.description}</option>				
															</#list>
														</select>
														<@show.invtrErrorField key="jointParticipant.documentType.id"/>
													</td>
													<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
													<td width="243" class="txTahomaGrs10" valign="top">
														<@show.invtrLabel key="jointParticipant.Label.IdentificationDocumentNumber"/><br>
														<@show.inputText key="jointParticipant.documentNumber" disabled="false" required="false" style="null" value="${jointParticipant.documentNumber}" size="10" class="inputText" maxlength="50"/>
													</td>
												</tr>
												<tr>
													<td colspan="3" height="11"><img src="img/punto.gif" width="1" height="11" alt="" border="0"></td>
												</tr>
												<tr>
													<td width="190" class="txTahomaGrs10" valign="top">
														<@show.invtrLabel key="jointParticipant.Label.DateofBirth"/><br>
														<@show.selectDay id="jointParticipant.birthDateDay" name="jointParticipant.birthDateDay" value="${jointParticipant.birthDateDay?c}" cssClass="select" disabled=false/>
														<@show.selectMonth id="jointParticipant.birthDateMonth" name="jointParticipant.birthDateMonth" value="${jointParticipant.birthDateMonth?c}" cssClass="select" disabled=false/>
														<@show.selectYear id="jointParticipant.birthDateYear" name="jointParticipant.birthDateYear" value="${jointParticipant.birthDateYear?c}" cssClass="select" disabled=false/><br>
														<@show.invtrErrorVirtualField key="jointParticipant_birthDate"/>
													</td>
													<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
													<td width="243" class="txTahomaGrs10" valign="top">
														<@show.invtrLabel key="jointParticipant.Label.Gender"/><br>
														<select name="jointParticipant.gender.id" id="jointParticipant.gender.id" class="selectFixed">
															<option value="-1"><@show.invtrLabel key="jointParticipant.Menu.SelectGender"/></option>
															<#list Genders as gender>
																<option value="${gender.id?c}" <#if gender.id?c == jointParticipant.gender.id?c>selected</#if>>${gender.description}</option>				
															</#list>
														</select><br>
														<@show.invtrErrorField key="jointParticipant.gender.id"/>
													</td>
												</tr>
												<tr>
													<td colspan="3" height="11"><img src="img/punto.gif" width="1" height="11" alt="" border="0"></td>
												</tr>
												<tr>
													<td width="190" class="txTahomaGrs10" valign="top">
														<@show.invtrLabel key="jointParticipant.Label.OccupationIndustry"/><br>
														<select id="jointParticipant_occupationIndustry_id" name="jointParticipant.occupationIndustry.id" class="selectFixed" >
															<option value="-1"><@show.invtrLabel key="jointParticipant.Menu.Selectoccupation"/></option>
															<#list OccupationIndustries as occupation>
																<option value="${occupation.id?c}" <#if occupation.id?c == jointParticipant.occupationIndustry.id?c>selected</#if>>${occupation.description}</option>				
															</#list>
														</select>
														<@show.invtrErrorField key="jointParticipant.occupationIndustry.id"/>
													</td>
													<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
													<td width="243" class="txTahomaGrs10" valign="top">
														<@show.invtrLabel key="jointParticipant.Label.OccupationPosition"/><br>
														<select id="jointParticipant_occupationTitle_id" name="jointParticipant.occupationTitle.id" class="selectFixed">
															<option value="-1"><@show.invtrLabel key="jointParticipant.Menu.Selectoccupation"/></option>
															<#list OccupationTitles as occupation>
																<option value="${occupation.id?c}" <#if occupation.id?c == jointParticipant.occupationTitle.id?c>selected</#if>>${occupation.description}</option>				
															</#list>
														</select><br>
														<@show.invtrErrorField key="jointParticipant.occupationTitle.id"/>
													</td>
												</tr>
											</table>
										</td>
									</tr>
									
									<tr>
										<td width="40"><img src="img/punto.gif" width="1" height="40" alt="" border="0"></td>
									</tr>
									<tr>
										<td class="txTahomaGrs12b"><@show.invtrLabel key="jointParticipant.Title.ContactInformation"/></td>
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
														<@show.invtrLabel key="jointParticipant.Label.Emailaddress"/><br>
														<@show.inputText key="jointParticipant.EMail" disabled="false" required="false" style="null" value="${jointParticipant.EMail}" size="10" class="inputText" maxlength="50"/>
													</td>
													<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
													<td width="243" class="txTahomaGrs10">
														<@show.invtrLabel key="jointParticipant.Label.ConfirmEmailaddress"/><br>
														<@show.inputText key="EMailConfirmation" disabled="false" required="false" style="null" value="${EMailConfirmation}" size="10" class="inputText" maxlength="50"/>
													</td>
												</tr>
												<tr>
													<td width="190" class="txTahomaGrs10">
														<@show.invtrErrorVirtualField key="jointParticipant.eMails"/>
													</td>
												<tr>
													<td colspan="3" height="11"><img src="img/punto.gif" width="1" height="11" alt="" border="0"></td>
												</tr>
												<tr>
													<td colspan="3" class="txTahomaGrs10"><b><@show.invtrLabel key="jointParticipant.Title.TelephoneNumber"/>:</b></td>
												</tr>
												<tr>
													<td colspan="3" height="8"><img src="img/punto.gif" width="1" height="8" alt="" border="0"></td>
												</tr>
												<tr>
													<td>
														<@show.invtrErrorVirtualField key="jointParticipant.telephoneNumbers"/>
													</td>
												</tr>
												<tr>
													<td colspan="3" class="txTahomaGrs10" valign="top">
														<div id="content">
															<#include "jointParticipantTelephones.ftl" />
														</div>
													</td>
												</tr>
												<tr>
													<td colspan="3" height="8"><img src="img/punto.gif" width="1" height="8" alt="" border="0"></td>
												</tr>
												<tr>
													<td colspan="3"><a id="addTelephoneNumber" class="lnkTahomaAzl10b" href="#"><@show.invtrLabel key="jointParticipant.Hipertext.Addanothertelephonenumber"/></a></td>
												</tr>
											</table>
										</td>
									</tr>	
									<tr>
										<td width="40"><img src="img/punto.gif" width="1" height="40" alt="" border="0"></td>
									</tr>
									<tr>
										<td class="txTahomaGrs12b"><@show.invtrLabel key="jointParticipant.Title.AddressInformation"/></td>
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
													<td colspan="2" class="txTahomaGrs10"><b><@show.invtrLabel key="jointParticipant.Title.ResidentialAddress"/>:</b></td>
													<td class="txTahomaGrs10"><@show.checkbox name="jointParticipant.sameResidentialAddress" id="jointParticipant_sameResidentialAddress" value="true" disabled=false/><@show.invtrLabel key="jointParticipant.CheckboxText.sameasFirstPlanParticipant"/></td>
												</tr>
												<tr>
													<td colspan="3" height="8"><img src="img/punto.gif" width="1" height="8" alt="" border="0"></td>
												</tr>
												<#if (jointParticipant.sameResidentialAddress)>
													<#assign classInputTextAddress = "inputTextDisabled" />
													<#assign classInputTextPorcAddress = "inputTextPorcDisabled" />
													<#assign disabledInputTextAddress = "true" />
													<#assign disabledSelectAddress = "disabled" />
												<#else>
													<#assign classInputTextAddress = "inputText" />
													<#assign classInputTextPorcAddress = "inputTextPorc" />
													<#assign disabledInputTextAddress = "false" />
													<#assign disabledSelectAddress = "" />
												</#if>
												<tr>
													<td colspan="3" class="txTahomaGrs10" valign="top">
														<@show.invtrLabel key="jointParticipant.Label.AddressLine1"/><br>
														<@show.inputText key="jointParticipant_residentialAddress_addressLine1" name="jointParticipant.residentialAddress.addressLine1" disabled="${disabledInputTextAddress}" required="false" style="null" value="${jointParticipant.residentialAddress.addressLine1}" size="10" class="${classInputTextPorcAddress}" maxlength="50"/>
													</td>
												</tr>
												<tr>
													<td colspan="3" height="8"><img src="img/punto.gif" width="1" height="8" alt="" border="0"></td>
												</tr>
												<tr>
													<td colspan="3" class="txTahomaGrs10" valign="top">
														<@show.invtrLabel key="jointParticipant.Label.AddressLine2"/><br>
														<@show.inputText key="jointParticipant_residentialAddress_addressLine2" name="jointParticipant.residentialAddress.addressLine2" disabled="${disabledInputTextAddress}" required="false" style="null" value="${jointParticipant.residentialAddress.addressLine2}" size="10" class="${classInputTextPorcAddress}" maxlength="50"/>
													</td>
												</tr>
												<tr>
													<td colspan="3" height="8"><img src="img/punto.gif" width="1" height="8" alt="" border="0"></td>
												</tr>
												<tr>
													<td width="190" class="txTahomaGrs10" valign="top">
														<@show.invtrLabel key="jointParticipant.Label.City"/><br>
														<@show.inputText key="jointParticipant_residentialAddress_city" name="jointParticipant.residentialAddress.city" disabled="${disabledInputTextAddress}" required="false" style="null" value="${jointParticipant.residentialAddress.city}" size="10" class="${classInputTextAddress}" maxlength="50"/>
													</td>
													<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
													<td width="243" class="txTahomaGrs10" valign="top">
														<@show.invtrLabel key="jointParticipant.Label.StateProvince"/><br>
														<@show.inputText key="jointParticipant_residentialAddress_state" name="jointParticipant.residentialAddress.state" disabled="${disabledInputTextAddress}" required="false" style="null" value="${jointParticipant.residentialAddress.state}" size="10" class="${classInputTextAddress}" maxlength="50"/>
													</td>
												</tr>
												<tr>
													<td colspan="3" height="8"><img src="img/punto.gif" width="1" height="8" alt="" border="0"></td>
												</tr>
												<tr>
													<td width="190" class="txTahomaGrs10" valign="top">
														<@show.invtrLabel key="jointParticipant.Label.Country"/><br>
														<select name="jointParticipant.residentialAddress.country.id" id="jointParticipant_residentialAddress_country_id" class="selectFixed" ${disabledSelectAddress}>
															<option value="-1"><@show.invtrLabel key="jointParticipant.Menu.SelectCountryCode"/></option>
															<#list Countries as country>
																<option value="${country.id?c}" <#if country.id?c == jointParticipant.residentialAddress.country.id?c>selected</#if>>${country.description}</option>				
															</#list>
														</select>
														<@show.invtrErrorField key="jointParticipant.residentialAddress.country.id"/>
													</td>
													<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
													<td width="243" class="txTahomaGrs10" valign="top">
														<@show.invtrLabel key="jointParticipant.Label.PostalCode"/><br>
														<@show.inputText key="jointParticipant_residentialAddress_postalCode" name="jointParticipant.residentialAddress.postalCode" disabled="${disabledInputTextAddress}" required="false" style="null" value="${jointParticipant.residentialAddress.postalCode}" size="10" class="${classInputTextAddress}" maxlength="12"/>
													</td>
												</tr>
												<tr>
													<td colspan="3">
														<@show.invtrErrorVirtualField key="jointParticipant.residentialAddress"/>
													</td>
												</tr>
												<tr>
													<td colspan="3" height="11"><img src="img/punto.gif" width="1" height="11" alt="" border="0"></td>
												</tr>
												<tr>
													<td colspan="3">
														<#if (jointParticipant.businessAddress.isEmpty)>
															<a id="lnkAddBusinessAddress" class="lnkTahomaAzl10b" href="#"><@show.invtrLabel key="jointParticipant.Hipertext.Addbusinessaddress"/></a>
															<a id="lnkDeleteBusinessAddress" class="lnkTahomaAzl10b" href="#" style="display:none;"><@show.invtrLabel key="jointParticipant.Hipertext.Deletebusinessaddress"/></a>
														<#else>
															<a id="lnkAddBusinessAddress" class="lnkTahomaAzl10b" href="#" style="display:none;"><@show.invtrLabel key="jointParticipant.Hipertext.Addbusinessaddress"/></a>
															<a id="lnkDeleteBusinessAddress" class="lnkTahomaAzl10b" href="#"><@show.invtrLabel key="jointParticipant.Hipertext.Deletebusinessaddress"/></a>
														</#if>
													</td>
												</tr>
												<tr id="txBusinessAddress" <#if (jointParticipant.businessAddress.isEmpty)>style="display:none;"</#if>>
													<td colspan="3">
														<table width="450" cellspacing="0" cellpadding="0">
															<tr>
																<td colspan="3" height="9"><img src="img/punto.gif" width="1" height="9" alt="" border="0"></td>
															</tr>
															<tr>
																<td colspan="2" class="txTahomaGrs10"><b><@show.invtrLabel key="jointParticipant.Title.BusinessAddress"/></b></td>
																<td class="txTahomaGrs10">
																	<#if (firstParticipant.businessAddress.isEmpty == false)>
																		<@show.checkbox name="jointParticipant.sameBusinessAddress" id="jointParticipant_sameBusinessAddress" value="true" disabled=false/>
																	<#else>
																		<input type="checkbox" name="jointParticipant.sameBusinessAddress" id="jointParticipant_sameResidentialAddress" disabled>
																	</#if>
																	<@show.invtrLabel key="jointParticipant.CheckboxText.sameasFirstPlanParticipant"/>
																</td>
															</tr>
															<tr>
																<td colspan="3" height="8"><img src="img/punto.gif" width="1" height="8" alt="" border="0"></td>
															</tr>
															<#if (jointParticipant.sameBusinessAddress)>
																<#assign classInputTextAddress = "inputTextDisabled" />
																<#assign classInputTextPorcAddress = "inputTextPorcDisabled" />
																<#assign disabledInputTextAddress = "true" />
																<#assign disabledSelectAddress = "disabled" />
															<#else>
																<#assign classInputTextAddress = "inputText" />
																<#assign classInputTextPorcAddress = "inputTextPorc" />
																<#assign disabledInputTextAddress = "false" />
																<#assign disabledSelectAddress = "" />
															</#if>
															<tr>
																<td colspan="3" class="txTahomaGrs10" valign="top">
																	<@show.invtrLabel key="jointParticipant.Label.AddressLine1"/><br>
																	<@show.inputText key="jointParticipant_businessAddress_addressLine1" name="jointParticipant.businessAddress.addressLine1" disabled="${disabledInputTextAddress}" required="false" style="null" value="${jointParticipant.businessAddress.addressLine1}" size="10" class="${classInputTextPorcAddress}" maxlength="50"/>
																</td>
															</tr>
															<tr>
																<td colspan="3" height="8"><img src="img/punto.gif" width="1" height="8" alt="" border="0"></td>
															</tr>
															<tr>
																<td colspan="3" class="txTahomaGrs10" valign="top">
																	<@show.invtrLabel key="jointParticipant.Label.AddressLine2"/><br>
																	<@show.inputText key="jointParticipant_businessAddress_addressLine2" name="jointParticipant.businessAddress.addressLine2" disabled="${disabledInputTextAddress}" required="false" style="null" value="${jointParticipant.businessAddress.addressLine2}" size="10" class="${classInputTextPorcAddress}" maxlength="50"/>
																</td>
															</tr>
															<tr>
																<td colspan="3" height="8"><img src="img/punto.gif" width="1" height="8" alt="" border="0"></td>
															</tr>
															<tr>
																<td width="190" class="txTahomaGrs10" valign="top">
																	<@show.invtrLabel key="jointParticipant.Label.City"/><br>
																	<@show.inputText key="jointParticipant_businessAddress_city" name="jointParticipant.businessAddress.city" disabled="${disabledInputTextAddress}" required="false" style="null" value="${jointParticipant.businessAddress.city}" size="10" class="${classInputTextAddress}" maxlength="50"/>
																</td>
																<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
																<td width="243" class="txTahomaGrs10" valign="top">
																	<@show.invtrLabel key="jointParticipant.Label.StateProvince"/><br>
																	<@show.inputText key="jointParticipant_businessAddress_state" name="jointParticipant.businessAddress.state" disabled="${disabledInputTextAddress}" required="false" style="null" value="${jointParticipant.businessAddress.state}" size="10" class="${classInputTextAddress}" maxlength="50"/>
																</td>
															</tr>
															<tr>
																<td colspan="3" height="8"><img src="img/punto.gif" width="1" height="8" alt="" border="0"></td>
															</tr>
															<tr>
																<td width="190" class="txTahomaGrs10" valign="top">
																	<@show.invtrLabel key="jointParticipant.Label.Country"/><br>
																	<select name="jointParticipant.businessAddress.country.id" id="jointParticipant_businessAddress_country_id" class="selectFixed" ${disabledSelectAddress}>
																		<option value="-1"><@show.invtrLabel key="jointParticipant.Menu.SelectCountryCode"/></option>
																		<#list Countries as country>
																			<option value="${country.id?c}" <#if country.id?c == jointParticipant.businessAddress.country.id?c>selected</#if>>${country.description}</option>				
																		</#list>
																	</select>
																	<@show.invtrErrorField key="jointParticipant_businessAddress_country_id"/>
																</td>
																<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
																<td width="243" class="txTahomaGrs10" valign="top">
																	<@show.invtrLabel key="jointParticipant.Label.PostalCode"/><br>
																	<@show.inputText key="jointParticipant_businessAddress_postalCode" name="jointParticipant.businessAddress.postalCode" disabled="${disabledInputTextAddress}" required="false" style="null" value="${jointParticipant.businessAddress.postalCode}" size="10" class="${classInputTextAddress}" maxlength="12"/>
																</td>
															</tr>
															<tr>
																<td colspan="3">
																	<@show.invtrErrorVirtualField key="jointParticipant.businessAddress"/>
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
											<table border="0" cellspacing="0" cellpadding="0">
												<tr>
													<#if (editMode == false)>
														<td><@show.invtrButton key="jointParticipant.Button.Previous" id="btnPrevious" arrowLeft="1" arrowRight="0"/></td>
														<td width="25"><img src="img/punto.gif" width="25" height="1" alt="" border="0"></td>
													</#if>	
													<td><@show.invtrButton key="jointParticipant.Button.Next" id="btnNext" arrowLeft="0" arrowRight="1"/></td>
													<#if (editMode == false)>
														<td width="25"><img src="img/punto.gif" width="25" height="1" alt="" border="0"></td>	
														<td><@show.invtrButton key="jointParticipant.Button.CancelApplication" id="btnCancel" arrowLeft="0" arrowRight="0"/></td>
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