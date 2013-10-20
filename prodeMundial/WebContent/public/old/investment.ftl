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
				<td colspan="3" height="32" class="txTahomaAzl24"><img src="img/bu_titulo.gif" width="17" height="17" alt="" border="0">&nbsp;<@show.invtrLabel key="investment.Title.ProductSelection"/></td>
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
										<td class="txTahomaGrs12b"><@show.invtrLabel key="investment.Title.ProductInformation"/></td>
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
													<td colspan="3" width="190" class="txTahomaGrs10"><@show.invtrLabel key="investment.Label.InvestmentProduct"/><br>
										 				<select name="investment.product.id" id="investment_product_id" class="select" style="width:394px;">
															<option value="-1"><@show.invtrLabel key="investment.Menu.SelectProduct"/></option>
															<#list Products as product>
																<option value="${product.id?c}" <#if product.id?c == investment.product.id?c>selected</#if>>${product.description}</option>				
															</#list>
														</select>
														<@show.invtrErrorField key="investment.product.id"/>
													</td>
												</tr>
												<tr>
													<td colspan="3" height="11"><img src="img/punto.gif" width="1" height="11" alt="" border="0"></td>
												</tr>
												<tr>
													<td width="190" class="txTahomaGrs10"><@show.invtrLabel key="investment.Label.TotalAnnualContribution"/><br>
													     <@show.inputText key="investment_totalAnnualContribution" name="investment.totalAnnualContribution" disabled="false" required="true" style="null" value="${investment.totalAnnualContribution?c}" size="10" class="inputText" maxlength="10"/>
													</td>
													<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
													<td width="243" class="txTahomaGrs10">
													</td>
												</tr>
												<tr>
													<td colspan="3" height="11"><img src="img/punto.gif" width="1" height="11" alt="" border="0"></td>
												</tr>
												<tr>
													<td width="190" class="txTahomaGrs10"><@show.invtrLabel key="investment.Label.PaymentFrecuency"/><br>
														<select name="investment.paymentFrecuency.id" id="investment_paymentFrecuency_id" class="selectFixed">
															<option value="-1"><@show.invtrLabel key="investment.Menu.SelectFrecuency"/></option>
															<#list PaymentFrecuencies as paymentFrecuency>
																<option value="${paymentFrecuency.id?c}" <#if paymentFrecuency.id?c == investment.paymentFrecuency.id?c>selected</#if>>${paymentFrecuency.description}</option>				
															</#list>
														</select>
														<@show.invtrErrorField key="investment.paymentFrecuency.id"/>
													</td>
													<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
													<td width="243" class="txTahomaGrs10"><@show.invtrLabel key="investment.Label.RegularContribution"/><br>
														<@show.inputText key="investment_regularContribution" name="investment.regularContribution" disabled="true" required="true" style="null" value="US$ ${investment.regularContribution?string('0.00')}" size="10" class="inputTextReg" maxlength="10"/>
													</td>
												</tr>
												<tr>
													<td colspan="3" height="11"><img src="img/punto.gif" width="1" height="11" alt="" border="0"></td>
												</tr>
												<tr>
													<td width="190" class="txTahomaGrs10"><@show.invtrLabel key="investment.Label.ReferenceCode"/><br>
														<@show.inputPassword key="investment.referenceCode" disabled="false" required="true" style="null" value="${investment.referenceCode}" size="10" class="inputText" maxlength="50"/>
													</td>
													<td width="17"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
													<td width="243" class="txTahomaGrs10"><@show.invtrLabel key="investment.Label.ConfirmReferenceCode"/><br>
														<@show.inputPassword key="referenceCodeConfirm" disabled="false" required="true" style="null" value="${referenceCodeConfirm}" size="10" class="inputText" maxlength="50"/>
													</td>
												</tr>
												<tr>
													<td colspan="3">
														<@show.invtrErrorField key="investment.referenceCodes"/>
													</td>
												</tr>
											</table>
										</td>
									</tr>
									<tr>
										<td width="40"><img src="img/punto.gif" width="1" height="40" alt="" border="0"></td>
									</tr>
									<tr>
										<td class="txTahomaGrs12b"><@show.invtrLabel key="investment.Title.AllocationofFunds"/></td>
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
														<div id="divAllocInv" style="display:none;"><@show.invtrLabel key="investment.Text.initialInvestment.inv"/></div>
														<div id="divAllocSpx" style="display:none;"><@show.invtrLabel key="investment.Text.initialInvestment.spx"/></div>
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
														<td><@show.invtrButton key="investment.Button.Previous" id="btnPrevious" arrowLeft="1" arrowRight="0"/></td>
														<td width="25"><img src="img/punto.gif" width="25" height="1" alt="" border="0"></td>
													</#if>	
													<td><@show.invtrButton key="investment.Button.Next" id="btnNext" arrowLeft="0" arrowRight="1"/></td>
													<#if (editMode == false)>
														<td width="25"><img src="img/punto.gif" width="25" height="1" alt="" border="0"></td>	
														<td><@show.invtrButton key="investment.Button.CancelApplication" id="btnCancel" arrowLeft="0" arrowRight="0"/></td>
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
							    <table width="242" cellpadding="0" cellspacing="0" border="0">
									<tr>
										<td colspan="3" height="25"><img src="img/punto.gif" width="1" height="25" alt="" border="0"></td>
									</tr>
									<tr>
										<td width="3"><img src="img/im_corner_rec_1.jpg" width="3" height="3" alt="" border="0"></td>														
										<td width="236" class="clsTable1top"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
										<td width="3"><img src="img/im_corner_rec_2.jpg" width="3" height="3" alt="" border="0"></td>
									</tr>
									<tr>
										<td class="clsTable1left"><img src="img/punto.gif" width="1" height="1" alt="" border="0"></td>
										<td class="clsTable1text">
											<#if language.locale == "">
												<#assign lnkPerformance = "https://cadb.investors-trust.com/performance/Performance-Eng-USD.html" />
											<#elseif language.locale == "en">
												<#assign lnkPerformance = "https://cadb.investors-trust.com/performance/Performance-Eng-USD.html" />
											<#elseif language.locale == "es">
												<#assign lnkPerformance = "https://cadb.investors-trust.com/performance/Performance-Esp-USD.html" />
											<#elseif language.locale == "pt">
												<#assign lnkPerformance = "https://cadb.investors-trust.com/performance/Performance-Por-USD.html" />
											<#elseif language.locale == "zh-CN">
												<#assign lnkPerformance = "https://cadb.investors-trust.com/performance/Performance-Chi-USD.html" />
											<#elseif language.locale == "zh-TW">
												<#assign lnkPerformance = "https://cadb.investors-trust.com/performance/Performance-Chi-USD.html" />
											</#if>
											<p class="clsTable1text">
												<@show.invtrLabel key="investment.Text.InvestorsTrustoffers.preLink"/>
												<a href="${lnkPerformance}" target="_blank"><@show.invtrLabelLink key="investment.Text.InvestorsTrustoffers.link"/></a>
												<@show.invtrLabel key="investment.Text.InvestorsTrustoffers.postLink"/>
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
	<#include "expire.ftl" />
</@show.page>