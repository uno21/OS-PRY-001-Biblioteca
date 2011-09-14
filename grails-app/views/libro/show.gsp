
<%@ page import="uno21.biblioteca.Libro" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="libro.show" default="Show Libro" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="libro.list" default="Libro List" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="libro.new" default="New Libro" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="libro.show" default="Show Libro" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <g:form>
                <g:hiddenField name="id" value="${libroInstance?.id}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="libro.id" default="Id" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: libroInstance, field: "id")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="libro.isbn" default="Isbn" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: libroInstance, field: "isbn")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="libro.titulo" default="Titulo" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: libroInstance, field: "titulo")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="libro.autores" default="Autores" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: libroInstance, field: "autores")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="libro.editorial" default="Editorial" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: libroInstance, field: "editorial")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="libro.review" default="Review" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: libroInstance, field: "review")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="libro.imageURL" default="Image URL" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: libroInstance, field: "imageURL")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="libro.amazonURL" default="Amazon URL" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: libroInstance, field: "amazonURL")}</td>
                                
                            </tr>
                            
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'edit', 'default': 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'delete', 'default': 'Delete')}" onclick="return confirm('${message(code: 'delete.confirm', 'default': 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
