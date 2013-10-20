<input type="hidden" name="beneficiariesCount" id="beneficiariesCount" value="${beneficiariesCount?c}" />

<#if ( (beneficiaries?size)?? && beneficiaries?size > 0 ) >
		<#list 0..beneficiaries?size -1 as i>
	<div id="beneficiarySection_${i}">
			<table width="450" cellspacing="0" cellpadding="0" border="0" >
				<#if (language.nativeNameRequired)>
					<tr>
						<td width="190" class="txTahomaGrs10" valign="top"><@show.invtrLabel key="beneficiaries.Label.Nameinnativelanguage"/><br>
							  <@show.inputText key="benNativeName_${i}" disabled="false" required="true" style="null" value="${beneficiaries[i].person.nativeName}" size="10" class="inputText" maxlength="50"/>
						</td>
						<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0">
						</td>
						<td width="243" class="txTahomaGrs10" valign="top"><br>
							  <@show.checkboxEspecial name="benTraslationRequired_${i}" id="benTraslationRequired_${i}" value="true" disabled=false onclick="javascript: benTraslationRequired_click(this);" checked="${beneficiaries[i].person.traslationRequired?string}"/>
							  <@show.invtrLabel key="beneficiaries.CheckboxText.Requesttranslation"/> <img src="img/ico_important.gif" alt="<@show.invtrLabelLink key="all.Text.RequestTranslation"/>" width="20" height="19" border="0" align="middle">
						</td>
					</tr>
					<tr>
						<td colspan="3" height="11"><img src="img/punto.gif" width="1" height="11" alt="" border="0"></td>
					</tr>
				<#else>
					<@show.hidden name="benNativeName_${i}" value="${beneficiaries[i].person.nativeName}"/>
				</#if>
				<#if ( beneficiaries[i].person.traslationRequired )>
					<#assign classInputTextNames = "inputTextDisabled" />
					<#assign disabledInputTextNames = "true" />
				<#else>
					<#assign classInputTextNames = "inputText" />
					<#assign disabledInputTextNames = "false" />
				</#if>		
				<tr>
					<td width="190" class="txTahomaGrs10" valign="top"><@show.invtrLabel key="beneficiaries.Label.LastName"/> <br>
						<@show.inputText key="benLastName_${i}" disabled="${disabledInputTextNames}" required="true" style="null" value="${beneficiaries[i].person.lastName}" size="10" class="${classInputTextNames}" maxlength="50"/>
		  			</td>
		  			<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0">
		  			</td>
		  			<td width="243" class="txTahomaGrs10" valign="top"><@show.invtrLabel key="beneficiaries.Label.FirstName"/><br>
			 			<@show.inputText key="benFirstName_${i}" disabled="${disabledInputTextNames}" required="true" style="null" value="${beneficiaries[i].person.firstName}" size="10" class="${classInputTextNames}" maxlength="50"/>
					</td>
				</tr>
				<#if (!language.nativeNameRequired)>
					<tr>
						<td colspan="3" height="11"><img src="img/punto.gif" width="1" height="11" alt="" border="0"></td>
					</tr>
					<tr>
						<td width="190" class="txTahomaGrs10" valign="top"><@show.invtrLabel key="beneficiaries.Label.MiddleName"/><br>
					 		<@show.inputText key="benMiddleName_${i}" disabled="${disabledInputTextNames}" required="true" style="null" value="${beneficiaries[i].person.middleName}" size="10" class="${classInputTextNames}" maxlength="50"/>
				   		</td>
						<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0">
						</td>
						<td width="243" class="txTahomaGrs10" valign="top"></td>
					</tr>
				<#else>
					<@show.hidden name="benMiddleName_${i}" value="${beneficiaries[i].person.middleName}"/>
				</#if>
				<tr>
					<td colspan="3" height="11"><img src="img/punto.gif" width="1" height="11" alt="" border="0"></td>
				</tr>
				<tr>
					<td width="190" class="txTahomaGrs10" valign="top">
						<@show.invtrLabel key="beneficiaries.Label.DateofBirth"/><br>
						<@show.selectDay id="benDateBirthDay_${i}" name="benDateBirthDay_${i}" value="${beneficiaries[i].person.birthDateDay?c}" cssClass="select" disabled=false/>
						<@show.selectMonth id="benDateBirthMonth_${i}" name="benDateBirthMonth_${i}" value="${beneficiaries[i].person.birthDateMonth?c}" cssClass="select" disabled=false/>
						<@show.selectYear id="benDateBirthYear_${i}" name="benDateBirthYear_${i}" value="${beneficiaries[i].person.birthDateYear?c}" cssClass="select" disabled=false/><br>
						<@show.invtrErrorVirtualField key="benDateBirth_${i}"/>
					</td>
		 	 		<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0">
					</td>
			  		<td width="243" class="txTahomaGrs10" valign="top">
						<table border="0" cellspacing="0" cellpadding="0">
				  			<tr>
								<td class="txTahomaGrs10" valign="top"><@show.invtrLabel key="beneficiaries.Label.Relationshiptoplanparticipant"/><br>
					  				<select name="benBeneficiaryRelationship_${i}" id="benBeneficiaryRelationship_${i}" class="selectBenRel"> 
					  					<option value="-1"><@show.invtrLabel key="beneficiaries.Menu.SelectRelationship"/></option>
										<#list BeneficiaryRelationships as beneficiaryRelationship>
											<option value="${beneficiaryRelationship.id?c}" <#if beneficiaryRelationship.id?c == beneficiaries[i].beneficiaryRelationship.id?c>selected</#if>>${beneficiaryRelationship.description}</option>				
										</#list>
									</select><br>
									<@show.invtrErrorField key="benBeneficiaryRelationship_${i}"/>
								</td>
								<td width="5"><img src="img/punto.gif" width="5" height="1" alt="" border="0">
								</td>
								<td class="txTahomaGrs10" valign="top"><@show.invtrLabel key="beneficiaries.Label.Percentage"/>
									<@show.inputText key="benPercentage_${i}" disabled="false" required="true" style="null" value="${beneficiaries[i].percentageString}" size="3" class="inputTextPerc" maxlength="3"/>
									<input type="hidden" name="benIsDeleted_${i}" id="benIsDeleted_${i}" value="${beneficiaries[i].isDeleted?string}" />
								</td>
			  				</tr>
						 </table>
				  	</td>
			 	</tr>
			 	<tr><td colspan="3"><a class="lnkTahomaAzl10b" href="#" id="deleteBeneficiary_${i}" name="deleteBeneficiary_${i}" onclick="javascript: deleteBeneficiary_click(this);"><@show.invtrLabel key="beneficiaries.Hipertext.Deletebeneficiary"/></a></td></tr>
			 	<tr>
					<td colspan="3" height="7"><img src="img/punto.gif" width="1" height="19" alt="" border="0"></td>
				</tr>
				<tr>
					<td colspan="3"  height="1" bgcolor="#b3b3b3"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
				</tr>
			</table>
		 	</div>
		</#list>

<#else>
	<div id="beneficiarySection_0">
		<table width="450" cellspacing="0" cellpadding="0" border="0">
			<#if (language.nativeNameRequired)>
				<tr>
					<td width="190" class="txTahomaGrs10" valign="top"><@show.invtrLabel key="beneficiaries.Label.Nameinnativelanguage"/><br>
						  <@show.inputText key="benNativeName_0" disabled="false" required="true" style="null" value="" size="10" class="inputText" maxlength="50"/>
					</td>
					<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0">
					</td>
					<td width="243" class="txTahomaGrs10" valign="top"><br>
						  <@show.checkbox name="benTraslationRequired_0" id="benTraslationRequired_0" value="true" disabled=false onclick="javascript: benTraslationRequired_click(this);"/>
						  <@show.invtrLabel key="beneficiaries.CheckboxText.Requesttranslation"/> <img src="img/ico_important.gif" alt="<@show.invtrLabelLink key="all.Text.RequestTranslation"/>" width="20" height="19" border="0" align="middle">
					</td>
				</tr>
				<tr>
					<td colspan="3" height="11"><img src="img/punto.gif" width="1" height="11" alt="" border="0"></td>
				</tr>
			<#else>
				<@show.hidden name="benNativeName_0" value=""/>
			</#if>
			<tr>
				<td width="190" class="txTahomaGrs10" valign="top"><@show.invtrLabel key="beneficiaries.Label.LastName"/> <br>
					<@show.inputText key="benLastName_0" disabled="false" required="true" style="null" value="" size="10" class="inputText" maxlength="50"/>
	  			</td>
	  			<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0">
	  			</td>
	  			<td width="243" class="txTahomaGrs10" valign="top"><@show.invtrLabel key="beneficiaries.Label.FirstName"/><br>
		 			<@show.inputText key="benFirstName_0" disabled="false" required="true" style="null" value="" size="10" class="inputText" maxlength="50"/>
				</td>
			</tr>
			<#if (!language.nativeNameRequired)>
				<tr>
					<td colspan="3" height="11"><img src="img/punto.gif" width="1" height="11" alt="" border="0"></td>
				</tr>
				<tr>
					<td width="190" class="txTahomaGrs10" valign="top"><@show.invtrLabel key="beneficiaries.Label.MiddleName"/><br>
				 		<@show.inputText key="benMiddleName_0" disabled="false" required="true" style="null" value="" size="10" class="inputText" maxlength="50"/>
			   		</td>
					<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0">
					</td>
					<td width="243" class="txTahomaGrs10"></td>
				</tr>
			<#else>
				<@show.hidden name="benMiddleName_0" value=""/>
			</#if>
			<tr>
				<td colspan="3" height="11"><img src="img/punto.gif" width="1" height="11" alt="" border="0"></td>
			</tr>
			<tr>
				<td width="190" class="txTahomaGrs10" valign="top">
					<@show.invtrLabel key="beneficiaries.Label.DateofBirth"/><br>
					<@show.selectDay id="benDateBirthDay_0" name="benDateBirthDay_0" value="" cssClass="select" disabled=false/>
					<@show.selectMonth id="benDateBirthMonth_0" name="benDateBirthMonth_0" value="" cssClass="select" disabled=false/>
					<@show.selectYear id="benDateBirthYear_0" name="benDateBirthYear_0" value="" cssClass="select" disabled=false/><br>
					<@show.invtrErrorVirtualField key="benDateBirth_0"/>
				 </td>
	 	 		 <td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0">
		  		 </td>
		  		 <td width="243" class="txTahomaGrs10" valign="top">
					<table border="0" cellspacing="0" cellpadding="0">
			  			<tr>
							<td class="txTahomaGrs10" valign="top"><@show.invtrLabel key="beneficiaries.Label.Relationshiptoplanparticipant"/><br>
				  				<select name="benBeneficiaryRelationship_0" id="benBeneficiaryRelationship_0" class="selectBenRel"> 
				  					<option value="-1"><@show.invtrLabel key="beneficiaries.Menu.SelectRelationship"/></option>
									<#list BeneficiaryRelationships as beneficiaryRelationship>
										<option value="${beneficiaryRelationship.id?c}">${beneficiaryRelationship.description}</option>				
									</#list>
								</select><br>
								<@show.invtrErrorField key="benBeneficiaryRelationship_0"/>
							</td>
							<td width="5"><img src="img/punto.gif" width="5" height="1" alt="" border="0">
							</td>
							<td class="txTahomaGrs10" valign="top"><@show.invtrLabel key="beneficiaries.Label.Percentage"/>
								<@show.inputText key="benPercentage_0" disabled="false" required="true" style="null" value="" size="3" class="inputTextPerc" maxlength="3"/>
								<input type="hidden" name="benIsDeleted_0" id="benIsDeleted_0" value="" />
							</td>
		  				</tr>
					 </table>
			  	</td>
		 	</tr>
			<tr><td colspan="3"><a class="lnkTahomaAzl10b" href="#" id="deleteBeneficiary_0" name="deleteBeneficiary_0" onclick="javascript: deleteBeneficiary_click(this);"><@show.invtrLabel key="beneficiaries.Hipertext.Deletebeneficiary"/></a></td></tr>
		 	<tr>
				<td colspan="3" height="7"><img src="img/punto.gif" width="1" height="19" alt="" border="0"></td>
			</tr>
			<tr>
				<td colspan="3"  height="1" bgcolor="#b3b3b3"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
			</tr>
		</table>
	</div>

</#if>