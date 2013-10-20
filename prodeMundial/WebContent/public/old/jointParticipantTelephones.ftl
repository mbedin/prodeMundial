<input type="hidden" name="telephonesCount" id="telephonesCount" value="${telephonesCount?c}" />

<#if ( (jointParticipant.telephoneNumbers?size)?? && jointParticipant.telephoneNumbers?size > 0 ) >
		<#list 0..jointParticipant.telephoneNumbers?size -1 as i>
	<div id="telephoneSection_${i}">
			<table border="0" cellspacing="0" cellpadding="0" >
				<tr>
					<td class="txTahomaGrs10" valign="top"><@show.invtrLabel key="jointParticipant.Label.Type"/><br>
						<select name="telephoneType_${i}" id="telephoneType_${i}" class="selectTelType">
							<option value="-1"><@show.invtrLabel key="jointParticipant.Menu.SelectType"/></option>
							<#list telephoneTypes as telephoneType>
								<option value="${telephoneType.id?c}" <#if telephoneType.id?c == jointParticipant.telephoneNumbers[i].telephoneType.id?c>selected</#if>>${telephoneType.description}</option>				
							</#list>
						</select>
						<@show.invtrErrorField key="telephoneType_${i}"/>
					</td>
					<td><img src="img/punto.gif" width="6" height="1" alt="" border="0"></td>
					<td class="txTahomaGrs10" valign="top"><@show.invtrLabel key="jointParticipant.Label.CountryCode"/><br>
						<select name="countryCode_${i}" id="countryCode_${i}" class="selectCountryCode">
							<option value="-1"><@show.invtrLabel key="jointParticipant.Menu.SelectCountryCode"/></option>
							<#list countryCodes as countryCode>
								<#if countryCode.callingCode == "" >
									<optgroup label='${countryCode.description}'></optgroup>";
								<#else>
									<option value="${countryCode.id?c}" <#if countryCode.id?c == jointParticipant.telephoneNumbers[i].countryCode.id?c>selected</#if>>${countryCode.description}</option>				
								</#if>
							</#list>
						</select>
						<@show.invtrErrorField key="countryCode_${i}"/>
					</td>
					<td><img src="img/punto.gif" width="6" height="1" alt="" border="0"></td>
					<td class="txTahomaGrs10" align="center" valign="top" nowrap ><@show.invtrLabel key="jointParticipant.Label.AreaCode"/><br>
						<@show.inputText key="areaCode_${i}" disabled="false" required="true" style="null" value="${jointParticipant.telephoneNumbers[i].areaCode}" size="10" class="inputTextCode" maxlength="4"/>
					</td>
					<td><img src="img/punto.gif" width="6" height="1" alt="" border="0"></td>
					<td class="txTahomaGrs10" valign="top"><@show.invtrLabel key="jointParticipant.Label.LocalNumber"/>
						<@show.inputText key="localNumber_${i}" disabled="false" required="true" style="null" value="${jointParticipant.telephoneNumbers[i].localNumber}" size="10" class="inputTextNum" maxlength="8"/>																			
						<input type="hidden" name="telephoneIsDeleted_${i}" id="telephoneIsDeleted_${i}" value="${firstParticipant.telephoneNumbers[i].isDeleted?string}" />
					</td>
				</tr>
				<tr><td colspan="7"><a class="lnkTahomaAzl10b" href="#" id="deleteTelephoneNumber_${i}" name="deleteTelephoneNumber_${i}" onclick="javascript: deleteTelephoneNumber_click(this);"><@show.invtrLabel key="firstParticipant.Hipertext.Deletetelephonenumber"/></a></td></tr>
				<tr><td height="8" colspan="7"></td></tr>
			</table>
		</div>
		</#list>

<#else>
  <div id="telephoneSection_0">
	<table border="0" cellspacing="0" cellpadding="0" >
		<tr>
			<td class="txTahomaGrs10" valign="top"><@show.invtrLabel key="jointParticipant.Label.Type"/><br>
				<select name="telephoneType_0" id="telephoneType_0" class="selectTelType">
					<option value="-1"><@show.invtrLabel key="jointParticipant.Menu.SelectType"/></option>
					<#list telephoneTypes as telephoneType>
						<option value="${telephoneType.id?c}">${telephoneType.description}</option>				
					</#list>
				</select>
				<@show.invtrErrorField key="telephoneType_0"/>
			</td>
			<td><img src="img/punto.gif" width="6" height="1" alt="" border="0"></td>
			<td class="txTahomaGrs10" valign="top"><@show.invtrLabel key="jointParticipant.Label.CountryCode"/><br>
				<select name="countryCode_0" id="countryCode_0" class="selectCountryCode">
					<option value="-1"><@show.invtrLabel key="jointParticipant.Menu.SelectCountryCode"/></option>
					<#list countryCodes as countryCode>
						<#if countryCode.callingCode == "" >
							<optgroup label='${countryCode.description}'></optgroup>";
						<#else>
							<option value="${countryCode.id?c}">${countryCode.description}</option>				
						</#if>
					</#list>
				</select>
				<@show.invtrErrorField key="telephoneType_0"/>
			</td>
			<td><img src="img/punto.gif" width="6" height="1" alt="" border="0"></td>
			<td class="txTahomaGrs10" align="center" valign="top" nowrap><@show.invtrLabel key="jointParticipant.Label.AreaCode"/><br>
				<@show.inputText key="areaCode_0" disabled="false" required="true" style="null" value="" size="10" class="inputTextCode" maxlength="4"/>
			</td>
			<td><img src="img/punto.gif" width="6" height="1" alt="" border="0"></td>
			<td class="txTahomaGrs10" valign="top"><@show.invtrLabel key="jointParticipant.Label.LocalNumber"/>
				<@show.inputText key="localNumber_0" disabled="false" required="true" style="null" value="" size="10" class="inputTextNum" maxlength="8"/>																			
				<input type="hidden" name="telephoneIsDeleted_0" id="telephoneIsDeleted_0" value="false" />
			</td>
		</tr>
		<tr><td colspan="7"><a class="lnkTahomaAzl10b" href="#" id="deleteTelephoneNumber_0" name="deleteTelephoneNumber_0" onclick="javascript: deleteTelephoneNumber_click(this);"><@show.invtrLabel key="firstParticipant.Hipertext.Deletetelephonenumber"/></a></td></tr>
		<tr><td height="8" colspan="7"></td></tr>
	</table>	
  </div>
</#if>
