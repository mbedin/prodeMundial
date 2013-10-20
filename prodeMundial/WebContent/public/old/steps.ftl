<table cellspacing="0" cellpadding="0" width="*">
	<tr>
		<td height="27" colspan="13"><img src="img/punto.gif" width="1" height="27" alt="" border="0"></td>
	</tr>
	<tr>

		<#if (stepPlanParticipant)>
			<td class="bto_on"><p class="menu_sup"><@show.invtrLabel key="firstParticipant.Title.PlanParticipants"/></p></td>
		<#else>
			<td class="bto_off"><p class="menu_sup_off"><@show.invtrLabel key="firstParticipant.Title.PlanParticipants"/></p></td>
		</#if>

		<#if (stepBeneficiaries)>
			<td><img src="img/im_menu_on_on.gif" width="18" height="26" alt="" border="0"></td>
			<td class="bto_on"><p class="menu_sup"><@show.invtrLabel key="beneficiaries.Title.Beneficiaries"/></p></td>
		<#else>
			<#if (stepPlanParticipant)>
				<td><img src="img/im_menu_on_off.gif" width="18" height="26" alt="" border="0"></td>
			</#if>
			<td class="bto_off"><p class="menu_sup_off"><@show.invtrLabel key="beneficiaries.Title.Beneficiaries"/></p></td>
			<td><img src="img/im_menu_off_off.gif" width="18" height="26" alt="" border="0"></td>
		</#if>

		<#if (stepInvestment)>
			<td><img src="img/im_menu_on_on.gif" width="18" height="26" alt="" border="0"></td>
			<td class="bto_on"><p class="menu_sup"><@show.invtrLabel key="investment.Title.InvestmentDetails"/></p></td>
		<#else>
			<#if (stepBeneficiaries)>
				<td><img src="img/im_menu_on_off.gif" width="18" height="26" alt="" border="0"></td>
			</#if>
			<td class="bto_off"><p class="menu_sup_off"><@show.invtrLabel key="investment.Title.InvestmentDetails"/></p></td>
			<td><img src="img/im_menu_off_off.gif" width="18" height="26" alt="" border="0"></td>
		</#if>
		
		<#if (stepAgreement)>
			<td><img src="img/im_menu_on_on.gif" width="18" height="26" alt="" border="0"></td>
			<td class="bto_on"><p class="menu_sup"><@show.invtrLabel key="agreement.Title.Agreement"/></p></td>
		<#else>
			<#if (stepInvestment)>
				<td><img src="img/im_menu_on_off.gif" width="18" height="26" alt="" border="0"></td>
			</#if>
			<td class="bto_off"><p class="menu_sup_off"><@show.invtrLabel key="agreement.Title.Agreement"/></p></td>
			<td><img src="img/im_menu_off_off.gif" width="18" height="26" alt="" border="0"></td>
		</#if>

		<#if (stepBillingInformation)>
			<td><img src="img/im_menu_on_on.gif" width="18" height="26" alt="" border="0"></td>
			<td class="bto_on"><p class="menu_sup"><@show.invtrLabel key="billing.Title.BillingInformation"/></p></td>
		<#else>
			<#if (stepAgreement)>
				<td><img src="img/im_menu_on_off.gif" width="18" height="26" alt="" border="0"></td>
			</#if>
			<td class="bto_off"><p class="menu_sup_off"><@show.invtrLabel key="billing.Title.BillingInformation"/></p></td>
			<td><img src="img/im_menu_off_off.gif" width="18" height="26" alt="" border="0"></td>
		</#if>
				
		<#if (stepVerifyInformation)>
			<td><img src="img/im_menu_on_on.gif" width="18" height="26" alt="" border="0"></td>
			<td class="bto_on"><p class="menu_sup"><@show.invtrLabel key="verifyInformation.Title.VerifyInformation"/></p></td>
		<#else>
			<#if (stepBillingInformation)>
				<td><img src="img/im_menu_on_off.gif" width="18" height="26" alt="" border="0"></td>
			</#if>
			<td class="bto_off"><p class="menu_sup_off"><@show.invtrLabel key="verifyInformation.Title.VerifyInformation"/></p></td>
			<td><img src="img/im_menu_off_off.gif" width="18" height="26" alt="" border="0"></td>
		</#if>

		<#if (stepApproval)>
			<td><img src="img/im_menu_on_on.gif" width="18" height="26" alt="" border="0"></td>
			<td class="bto_on"><p class="menu_sup"><@show.invtrLabel key="approval.Title.Approval"/></p></td>
		<#else>
			<#if (stepVerifyInformation)>
				<td><img src="img/im_menu_on_off.gif" width="18" height="26" alt="" border="0"></td>
			</#if>
			<td class="bto_off"><p class="menu_sup_off"><@show.invtrLabel key="approval.Title.Approval"/></p></td>
		</#if>
		
	</tr>
	
</table>