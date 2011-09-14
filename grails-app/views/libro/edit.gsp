
<%@ page import="uno21.biblioteca.Libro" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="libro.edit" default="Edit Libro" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="libro.list" default="Libro List" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="libro.new" default="New Libro" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="libro.edit" default="Edit Libro" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <g:hasErrors bean="${libroInstance}">
            <div class="errors">
                <g:renderErrors bean="${libroInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${libroInstance?.id}" />
                <g:hiddenField name="version" value="${libroInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="isbn"><g:message code="libro.isbn" default="Isbn" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: libroInstance, field: 'isbn', 'errors')}">
                                    <g:textField name="isbn" value="${fieldValue(bean: libroInstance, field: 'isbn')}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="titulo"><g:message code="libro.titulo" default="Titulo" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: libroInstance, field: 'titulo', 'errors')}">
                                    <g:textField name="titulo" value="${fieldValue(bean: libroInstance, field: 'titulo')}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="autores"><g:message code="libro.autores" default="Autores" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: libroInstance, field: 'autores', 'errors')}">
                                    <g:textField name="autores" value="${fieldValue(bean: libroInstance, field: 'autores')}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="editorial"><g:message code="libro.editorial" default="Editorial" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: libroInstance, field: 'editorial', 'errors')}">
                                    <g:textField name="editorial" value="${fieldValue(bean: libroInstance, field: 'editorial')}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="review"><g:message code="libro.review" default="Review" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: libroInstance, field: 'review', 'errors')}">
                                    <g:textField name="review" value="${fieldValue(bean: libroInstance, field: 'review')}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="imageURL"><g:message code="libro.imageURL" default="Image URL" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: libroInstance, field: 'imageURL', 'errors')}">
                                    <g:textField name="imageURL" value="${fieldValue(bean: libroInstance, field: 'imageURL')}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="amazonURL"><g:message code="libro.amazonURL" default="Amazon URL" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: libroInstance, field: 'amazonURL', 'errors')}">
                                    <g:textField name="amazonURL" value="${fieldValue(bean: libroInstance, field: 'amazonURL')}" />

                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'update', 'default': 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'delete', 'default': 'Delete')}" onclick="return confirm('${message(code: 'delete.confirm', 'default': 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
