<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="crud">
	<g:set var="entityName" value="${message(code: 'speaker.label', default: 'Speaker')}" />
	<title><g:message code="default.create.label" args="[entityName]" /></title>
</head>
<body>
<a href="#create-speaker" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;" /></a>

<nav:admin>
		<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
</nav:admin>

<div id="create-speaker" class="content scaffold-create" role="main">
	<h1><g:message code="default.create.label" args="[entityName]" /></h1>
	<g:if test="${flash.message}">
		<div class="message" role="status">${flash.message}</div>
	</g:if>
	<g:hasErrors bean="${speakerInstance}">
		<ul class="errors" role="alert">
			<g:eachError bean="${speakerInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}" /></li>
			</g:eachError>
		</ul>
	</g:hasErrors>
	<g:form action="save">
		<fieldset class="form">
			<g:render template="/admin/speaker/form" />
		</fieldset>
		<fieldset class="buttons">
			<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
		</fieldset>
	</g:form>
</div>
</body>
</html>
