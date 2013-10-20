<#ftl>
<#import "showMacros.ftl" as show>
<@show.page>
	<form name="frmMain" id="frmMain" method="post">
		<table width="735" cellspacing="0" cellpadding="0" border="0">
			<tr>
				<td height="36" colspan="3"><img src="img/punto.gif" width="1" height="36" alt="" border="0"></td>
			</tr>
			<tr>
				<td colspan="3" height="32" class="txTahomaAzl24"><img src="img/bu_titulo.gif" width="17" height="17" alt="" border="0">&nbsp;<@show.invtrLabel key="welcome.Title.welcome"/></td>
			</tr>
			<tr>
				<td height="2" width="469" background="img/im_linea.jpg"><img src="img/im_linea.jpg" width="30" height="2" alt="" border="0"></td>
				<td rowspan="2" width="15"><img src="img/punto.gif" width="15" height="1" alt="" border="0"></td>
				<td rowspan="2" valign="top" width="251" align="right">
					<img src="img/fo_home.jpg" width="251" height="252" alt="" border="0">
				</td>
			</tr>
			<tr>
				<td height="300" valign="top">
					<table width="469" cellpadding="0" cellspacing="0">
						<tr>
							<td height="16"><img src="img/punto.gif" width="1" height="16" alt="" border="0"></td>
						</tr>
						<tr>
							<td>
								<span class="txTahomaGrs14"><b><img src="img/tx_welcome.gif" width="327" height="14" alt="" border="0"></b></span>
							</td>
						</tr>
						<tr>
							<td height="22"><img src="img/punto.gif" width="1" height="22" alt="" border="0"></td>
						</tr>
						<tr>
							<td>
								<table width="469" cellpadding="0" cellspacing="0">
									<tr>
										<td valign="top" height="28" width="151" class="txTahomaGrs11"><@show.invtrLabel key="welcome.Label.SelectLanguage"/>:</td>
										<td width="*" >
											<table width="100%" cellpadding="0" cellspacing="0">
											
												
												<#list 0..languages.size()-1 as i>  
	
													<#if ((i%3)==0)>
														<#if i gt 0>
															</tr>
														</#if>
														<tr>
															<td valign="top" width="106" class="txTahomaGrs12">
																<#if ((languages[i].id == language.id))>
																	<@show.radioButton name="language.id" id="rbLanguage${i}" value="${languages[i].id}" checked="true" />
																<#else>
																	<@show.radioButton name="language.id" id="rbLanguage${i}" value="${languages[i].id}" checked="false" />
																</#if>
																<img src="img/tx_idioma_${languages[i].id}.gif" alt="${languages[i].description}" border="0">
															</td>  
													<#else>
														<td valign="top" width="106" class="txTahomaGrs12">
															<#if ((languages[i].id == language.id))>
																<@show.radioButton name="language.id" id="rbLanguage${i}" value="${languages[i].id}" checked="true" />
															<#else>
																<@show.radioButton name="language.id" id="rbLanguage${i}" value="${languages[i].id}" checked="false" />
															</#if>
															
															<img src="img/tx_idioma_${languages[i].id}.gif" alt="${languages[i].description}" border="0">
														</td> 
													</#if>
												</#list> 
												</tr>
											</table>
											<@show.actionErrorsShow/>
										</td>
									</tr>
									<tr>
										<td colspan="2" height="13"><img src="img/punto.gif" width="1" height="13" alt="" border="0"></td>
									</tr>
									<tr>
										<td></td>
										<td>
											<table border="0" cellpadding="0" cellspacing="0" style="cursor:hand;" id="btnEnter">
												<tr>
													<td>
														<@show.invtrButton key="welcome.Button.Enter" id="btnEnter" arrowLeft="0" arrowRight="1"/>
													</td>
													<td width="25"><img src="img/punto.gif" width="25" height="1" alt="" border="0"></td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td height="18"><img src="img/punto.gif" width="1" height="18" alt="" border="0"></td>
						</tr>
						<tr>
							<td>
								<#include "privacyPolicy.ftl" />
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</form>
	<#include "nonExpire.ftl" />
</@show.page>