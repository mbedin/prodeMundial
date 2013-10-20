<input type="hidden" name="contingentsCount" id="contingentsCount" value="${contingentsCount?c}" />

<#if ( (contingents?size)?? && contingents?size > 0 ) >
		<#list 0..contingents?size -1 as i>

		<div id="contingentSection_${i}">
			<table width="450" cellspacing="0" cellpadding="0" border=0" >
				<#if (language.nativeNameRequired)>
					<tr>
						<td width="190" class="txTahomaGrs10" valign="top"><@show.invtrLabel key="beneficiaries.Label.Nameinnativelanguage"/><br>
							  <@show.inputText key="conNativeName_${i}" disabled="false" required="true" style="null" value="${contingents[i].person.nativeName}" size="10" class="inputText" maxlength="50"/>
						</td>
						<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0">
						</td>
						<td width="243" class="txTahomaGrs10" valign="top"><br>
							  <@show.checkboxEspecial name="conTraslationRequired_${i}" id="conTraslationRequired_${i}" value="true" disabled=false onclick="javascript: conTraslationRequired_click(this);" checked="${contingents[i].person.traslationRequired?string}" />
							  <@show.invtrLabel key="beneficiaries.CheckboxText.Requesttranslation"/> <img src="img/ico_important.gif" alt="<@show.invtrLabelLink key="all.Text.RequestTranslation"/>" width="20" height="19" border="0" align="middle">
						</td>
					</tr>
					<tr>
						<td colspan="3" height="11"><img src="img/punto.gif" width="1" height="11" alt="" border="0"></td>
					</tr>
				<#else>
					<@show.hidden name="conNativeName_${i}" value="${contingents[i].person.nativeName}"/>
				</#if>
				<#if ( contingents[i].person.traslationRequired )>
					<#assign classInputTextNames = "inputTextDisabled" />
					<#assign disabledInputTextNames = "true" />
				<#else>
					<#assign classInputTextNames = "inputText" />
					<#assign disabledInputTextNames = "false" />
				</#if>				
				<tr>
					<td width="190" class="txTahomaGrs10" valign="top"><@show.invtrLabel key="beneficiaries.Label.LastName"/> <br>
						<@show.inputText key="conLastName_${i}" disabled="${disabledInputTextNames}" required="true" style="null" value="${contingents[i].person.lastName}" size="10" class="${classInputTextNames}" maxlength="50"/>
		  			</td>
		  			<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0">
		  			</td>
		  			<td width="243" class="txTahomaGrs10" valign="top"><@show.invtrLabel key="beneficiaries.Label.FirstName"/><br>
			 			<@show.inputText key="conFirstName_${i}" disabled="${disabledInputTextNames}" required="true" style="null" value="${contingents[i].person.firstName}" size="10" class="${classInputTextNames}" maxlength="50"/>
					</td>
				</tr>
				<#if (!language.nativeNameRequired)>
					<tr>
						<td colspan="3" height="11"><img src="img/punto.gif" width="1" height="11" alt="" border="0"></td>
					</tr>
					<tr>
						<td width="190" class="txTahomaGrs10" valign="top"><@show.invtrLabel key="beneficiaries.Label.MiddleName"/><br>
					 		<@show.inputText key="conMiddleName_${i}" disabled="${disabledInputTextNames}" required="true" style="null" value="${contingents[i].person.middleName}" size="10" class="${classInputTextNames}" maxlength="50"/>
				   		</td>
						<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0">
						</td>
						<td width="243" class="txTahomaGrs10" valign="top"></td>
					</tr>
				<#else>
					<@show.hidden name="conMiddleName_${i}" value="${beneficiaries[i].person.middleName}"/>
				</#if>
				<tr>
					<td colspan="3" height="11"><img src="img/punto.gif" width="1" height="11" alt="" border="0"></td>
				</tr>
				<tr>
					<td width="190" class="txTahomaGrs10" valign="top">
						<@show.invtrLabel key="beneficiaries.Label.DateofBirth"/><br>
						<@show.selectDay id="conDateBirthDay_${i}" name="conDateBirthDay_${i}" value="${contingents[i].person.birthDateDay?c}" cssClass="select" disabled=false/>
						<@show.selectMonth id="conDateBirthMonth_${i}" name="conDateBirthMonth_${i}" value="${contingents[i].person.birthDateMonth?c}" cssClass="select" disabled=false/>
						<@show.selectYear id="conDateBirthYear_${i}" name="conDateBirthYear_${i}" value="${contingents[i].person.birthDateYear?c}" cssClass="select" disabled=false/><br>
						<@show.invtrErrorVirtualField key="conDateBirth_${i}"/>
					</td>
		 	 		<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0">
			  		</td>
			  		<td width="243" class="txTahomaGrs10">
						<table border="0" cellspacing="0" cellpadding="0">
			  				<tr>
								<td class="txTahomaGrs10" valign="top"><@show.invtrLabel key="beneficiaries.Label.Relationshiptoplanparticipant"/><br>
				  					<select name="conBeneficiaryRelationship_${i}" id="conBeneficiaryRelationship_${i}" class="selectBenRel"> 
				  						<option value="-1"><@show.invtrLabel key="beneficiaries.Menu.SelectRelationship"/></option>
										<#list BeneficiaryRelationships as beneficiaryRelationship>
											<option value="${beneficiaryRelationship.id?c}" <#if beneficiaryRelationship.id?c == contingents[i].beneficiaryRelationship.id?c>selected</#if>>${beneficiaryRelationship.description}</option>				
										</#list>
									</select><br>
									<@show.invtrErrorField key="conBeneficiaryRelationship_${i}"/>
								</td>
								<td width="5"><img src="img/punto.gif" width="5" height="1" alt="" border="0">
								</td>
								<td class="txTahomaGrs10" valign="top"><@show.invtrLabel key="beneficiaries.Label.Percentage"/>
									<@show.inputText key="conPercentage_${i}" disabled="false" required="true" style="null" value="${contingents[i].percentageString}" size="3" class="inputTextPerc" maxlength="3"/>
									<input type="hidden" name="conIsDeleted_${i}" id="conIsDeleted_${i}" value="${contingents[i].isDeleted?string}" />
								</td>
		  					</tr>
					 	</table>
					</td>
			 	</tr>
			 	<tr><td colspan="3"><a class="lnkTahomaAzl10b" href="#" id="deleteContingent_${i}" name="deleteContingent_${i}" onclick="javascript: deleteBeneficiary_click(this);"><@show.invtrLabel key="beneficiaries.Hipertext.Deletecontingentbeneficiary"/></a></td></tr>
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
	<div id="contingentSection_0">
		<table width="450" cellspacing="0" cellpadding="0" border="0">
			<#if (language.nativeNameRequired)>
				<tr>
					<td width="190" class="txTahomaGrs10" valign="top"><@show.invtrLabel key="beneficiaries.Label.Nameinnativelanguage"/><br>
						  <@show.inputText key="conNativeName_0" disabled="false" required="true" style="null" value="" size="10" class="inputText" maxlength="50"/>
					</td>
					<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0">
					</td>
					<td width="243" class="txTahomaGrs10" valign="top"><br>
						  <@show.checkbox name="conTraslationRequired_0" id="conTraslationRequired_0" value="true" disabled=false onclick="javascript: conTraslationRequired_click(this);"/>
						  <@show.invtrLabel key="beneficiaries.CheckboxText.Requesttranslation"/> <img src="img/ico_important.gif" alt="<@show.invtrLabelLink key="all.Text.RequestTranslation"/>" width="20" height="19" border="0" align="middle">
					</td>
				</tr>
				<tr>
					<td colspan="3" height="11"><img src="img/punto.gif" width="1" height="11" alt="" border="0"></td>
				</tr>
			<#else>
				<@show.hidden name="conNativeName_0" value=""/>
			</#if>
			<tr>
				<td width="190" class="txTahomaGrs10" valign="top"><@show.invtrLabel key="beneficiaries.Label.LastName"/> <br>
					<@show.inputText key="conLastName_0" disabled="false" required="true" style="null" value="" size="10" class="inputText" maxlength="50"/>
	  			</td>
	  			<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0">
	  			</td>
	  			<td width="243" class="txTahomaGrs10" valign="top"><@show.invtrLabel key="beneficiaries.Label.FirstName"/><br>
		 			<@show.inputText key="conFirstName_0" disabled="false" required="true" style="null" value="" size="10" class="inputText" maxlength="50"/>
				</td>
			</tr>
			<#if (!language.nativeNameRequired)>
				<tr>
					<td colspan="3" height="11"><img src="img/punto.gif" width="1" height="11" alt="" border="0"></td>
				</tr>
				<tr>
					<td width="190" class="txTahomaGrs10" valign="top"><@show.invtrLabel key="beneficiaries.Label.MiddleName"/><br>
				 		<@show.inputText key="conMiddleName_0" disabled="false" required="true" style="null" value="" size="10" class="inputText" maxlength="50"/>
			   		</td>
					<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0">
					</td>
					<td width="243" class="txTahomaGrs10" valign="top"></td>
				</tr>
			<#else>
				<@show.hidden name="conMiddleName_0" value=""/>
			</#if>				
			<tr>
				<td colspan="3" height="11"><img src="img/punto.gif" width="1" height="11" alt="" border="0"></td>
			</tr>
			<tr>
				<td width="190" class="txTahomaGrs10" valign="top">
					<@show.invtrLabel key="beneficiaries.Label.DateofBirth"/><br>
					<@show.selectDay id="conDateBirthDay_0" name="conDateBirthDay_0" value="" cssClass="select" disabled=false/>
					<@show.selectMonth id="conDateBirthMonth_0" name="conDateBirthMonth_0" value="" cssClass="select" disabled=false/>
					<@show.selectYear id="conDateBirthYear_0" name="conDateBirthYear_0" value="" cssClass="select" disabled=false/><br>
					<@show.invtrErrorVirtualField key="conDateBirth_0"/>

				</td>
	 	 		 <td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0">
		  		 </td>
		  		 <td width="243" class="txTahomaGrs10" valign="top">
					<table border="0" cellspacing="0" cellpadding="0">
			  			<tr>
							<td class="txTahomaGrs10" valign="top"><@show.invtrLabel key="beneficiaries.Label.Relationshiptoplanparticipant"/><br>
				  				<select name="conBeneficiaryRelationship_0" id="conBeneficiaryRelationship_0" class="selectBenRel"> 
				  					<option value="-1"><@show.invtrLabel key="beneficiaries.Menu.SelectRelationship"/></option>
									<#list BeneficiaryRelationships as beneficiaryRelationship>
										<option value="${beneficiaryRelationship.id?c}">${beneficiaryRelationship.description}</option>				
									</#list>
								</select><br>
								<@show.invtrErrorField key="conBeneficiaryRelationship_0"/>
							</td>
							<td width="5"><img src="img/punto.gif" width="5" height="1" alt="" border="0">
							</td>
							<td class="txTahomaGrs10" valign="top"><@show.invtrLabel key="beneficiaries.Label.Percentage"/>
								<@show.inputText key="conPercentage_0" disabled="false" required="true" style="null" value="" size="3" class="inputTextPerc" maxlength="3"/>
								<input type="hidden" name="conIsDeleted_0" id="conIsDeleted_0" value="" />
							</td>
		  				</tr>
					 </table>
			  	</td>
		 	</tr>
		 	<tr><td colspan="3"><a class="lnkTahomaAzl10b" href="#" id="deleteContingent_0" name="deleteContingent_0" onclick="javascript: deleteContingent_click(this);"><@show.invtrLabel key="beneficiaries.Hipertext.Deletecontingentbeneficiary"/></a></td></tr>
		 	<tr>
				<td colspan="3" height="7"><img src="img/punto.gif" width="1" height="19" alt="" border="0"></td>
			</tr>
			<tr>
				<td colspan="3"  height="1" bgcolor="#b3b3b3"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
			</tr>
		</table>
	</div>
</#if>