
<%@ page import="uno21.biblioteca.Libro" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="libro.list" default="Libro List" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="libro.new" default="New Libro" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="libro.list" default="Libro List" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	    <g:sortableColumn property="id" title="Id" titleKey="libro.id" />
                        
                   	    <g:sortableColumn property="isbn" title="Isbn" titleKey="libro.isbn" />
                        
                   	    <g:sortableColumn property="titulo" title="Titulo" titleKey="libro.titulo" />
                        
                   	    <g:sortableColumn property="autores" title="Autores" titleKey="libro.autores" />
                        
                   	    <g:sortableColumn property="editorial" title="Editorial" titleKey="libro.editorial" />
                        
                   	    <g:sortableColumn property="review" title="Review" titleKey="libro.review" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${libroInstanceList}" status="i" var="libroInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${libroInstance.id}">${fieldValue(bean: libroInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: libroInstance, field: "isbn")}</td>
                        
                            <td>${fieldValue(bean: libroInstance, field: "titulo")}</td>
                        
                            <td>${fieldValue(bean: libroInstance, field: "autores")}</td>
                        
                            <td>${fieldValue(bean: libroInstance, field: "editorial")}</td>
                        
                            <td>${fieldValue(bean: libroInstance, field: "review")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${libroInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
