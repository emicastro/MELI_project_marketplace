

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'publicacion.label', default: 'Publicacion')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-publicacion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">s
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-publicacion" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list publicacion">
			
				<g:if test="${publicacionInstance?.titulo}">
				<li class="fieldcontain">
					<span id="titulo-label" class="property-label"><g:message code="publicacion.titulo.label" default="Titulo" /></span>
					
						<span class="property-value" aria-labelledby="titulo-label"><g:fieldValue bean="${publicacionInstance}" field="titulo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${publicacionInstance?.descripcion}">
				<li class="fieldcontain">
					<span id="descripcion-label" class="property-label"><g:message code="publicacion.descripcion.label" default="Descripcion" /></span>
					
						<span class="property-value" aria-labelledby="descripcion-label"><g:fieldValue bean="${publicacionInstance}" field="descripcion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${publicacionInstance?.fechaCreacion}">
				<li class="fieldcontain">
					<span id="fechaCreacion-label" class="property-label"><g:message code="publicacion.fechaCreacion.label" default="Fecha Creacion" /></span>
					
						<span class="property-value" aria-labelledby="fechaCreacion-label"><g:formatDate date="${publicacionInstance?.fechaCreacion}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${publicacionInstance?.fechaVencimiento}">
				<li class="fieldcontain">
					<span id="fechaVencimiento-label" class="property-label"><g:message code="publicacion.fechaVencimiento.label" default="Fecha Vencimiento" /></span>
					
						<span class="property-value" aria-labelledby="fechaVencimiento-label"><g:formatDate date="${publicacionInstance?.fechaVencimiento}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${publicacionInstance?.usuario}">
				<li class="fieldcontain">
					<span id="usuario-label" class="property-label"><g:message code="publicacion.usuario.label" default="Usuario" />${publicacionInstance?.usuario?.id }</span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form controller="comprar" action="realizarCompra" method="POST">
				<g:hiddenField name="idPublicacion" value="${publicacionInstance.id}"/>
				<g:submitButton name="Comprar!"/>
			</g:form>
		</div>
	</body>
</html>
