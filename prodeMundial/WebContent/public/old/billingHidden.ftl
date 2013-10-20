<#ftl>
<#import "showMacros.ftl" as show>
<div>
	<#show.hidden name="firstParticipant.firstName" value="${firstParticipant.firstName}"/>
	<#show.hidden name="firstParticipant.middleName" value="${firstParticipant.middleName}"/>
	<#show.hidden name="firstParticipant.lastName" value="${firstParticipant.lastName}"/>

	<#show.hidden name="jointParticipant.firstName" value="${jointParticipant.firstName}"/>
	<#show.hidden name="jointParticipant.middleName" value="${jointParticipant.middleName}"/>
	<#show.hidden name="jointParticipant.lastName" value="${jointParticipant.lastName}"/>

	<#show.hidden name="firstParticipant.residentialAddress.addressLine1" value="${firstParticipant.residentialAddress.addressLine1}"/>
	<#show.hidden name="firstParticipant.residentialAddress.addressLine2" value="${firstParticipant.residentialAddress.addressLine2}"/>
	<#show.hidden name="firstParticipant.residentialAddress.city" value="${firstParticipant.residentialAddress.city}"/>
	<#show.hidden name="firstParticipant.residentialAddress.state" value="${firstParticipant.residentialAddress.state}"/>
	<#show.hidden name="firstParticipant.residentialAddress.country.id" value="${firstParticipant.residentialAddress.country.id}"/>
	<#show.hidden name="firstParticipant.residentialAddress.postalCode" value="${firstParticipant.residentialAddress.postalCode}"/>
	
	<#show.hidden name="firstParticipant.businessAddress.addressLine1" value="${firstParticipant.businessAddress.addressLine1}"/>
	<#show.hidden name="firstParticipant.businessAddress.addressLine2" value="${firstParticipant.businessAddress.addressLine2}"/>
	<#show.hidden name="firstParticipant.businessAddress.city" value="${firstParticipant.businessAddress.city}"/>
	<#show.hidden name="firstParticipant.businessAddress.state" value="${firstParticipant.businessAddress.state}"/>
	<#show.hidden name="firstParticipant.businessAddress.country.id" value="${firstParticipant.businessAddress.country.id}"/>
	<#show.hidden name="firstParticipant.businessAddress.postalCode" value="${firstParticipant.residentialAddress.postalCode}"/>

	<#show.hidden name="jointParticipant.residentialAddress.addressLine1" value="${jointParticipant.residentialAddress.addressLine1}"/>
	<#show.hidden name="jointParticipant.residentialAddress.addressLine2" value="${jointParticipant.residentialAddress.addressLine2}"/>
	<#show.hidden name="jointParticipant.residentialAddress.city" value="${jointParticipant.residentialAddress.city}"/>
	<#show.hidden name="jointParticipant.residentialAddress.state" value="${jointParticipant.residentialAddress.state}"/>
	<#show.hidden name="jointParticipant.residentialAddress.country.id" value="${jointParticipant.residentialAddress.country.id}"/>
	<#show.hidden name="jointParticipant.residentialAddress.postalCode" value="${jointParticipant.residentialAddress.postalCode}"/>
	
	<#show.hidden name="jointParticipant.businessAddress.addressLine1" value="${jointParticipant.businessAddress.addressLine1}"/>
	<#show.hidden name="jointParticipant.businessAddress.addressLine2" value="${jointParticipant.businessAddress.addressLine2}"/>
	<#show.hidden name="jointParticipant.businessAddress.city" value="${jointParticipant.businessAddress.city}"/>
	<#show.hidden name="jointParticipant.businessAddress.state" value="${jointParticipant.businessAddress.state}"/>
	<#show.hidden name="jointParticipant.businessAddress.country.id" value="${jointParticipant.businessAddress.country.id}"/>
	<#show.hidden name="jointParticipant.businessAddress.postalCode" value="${jointParticipant.residentialAddress.postalCode}"/>	
	

</div>