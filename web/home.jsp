<%--
   Document   : _TEMPLATE
   Created on : 10 juil. 2018, 16:42:27
   Author     : The Klaude
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <title>Magic Game</title>
        <c:import url="/Template/_STYLESHEET.jsp"/>
    </head>


    <body>

        <c:import url="/Template/_HEADER.jsp"/>

        <div class="row">
            <div class="col-xs-6 col-md-4"></div>
            <div class="col-xs-6 col-md-4">
                <h3>Liste des parties</h3>

                <c:forEach items="${listeParties}" var="partie">
                    <div class="tr">
                        <div class="td" style="flex-grow: 2;">
                            <span>${partie.nom}</span>
                        </div>
                        <div class="td" style="align-items: flex-end;">
                            <a href="<c:url value="/rejoindre"/>?idPartie=${partie.id}">
                                <button class="btn btn-primary">Rejoindre</button>
                            </a>
                        </div>
                    </div>
                </c:forEach>

                
                </form>


            </div>
            <div class="col-xs-6 col-md-4"></div>
        </div>
 



        <c:import url="/Template/_FOOTER.jsp"/>
        <c:import url="/Template/_JAVASCRIPTS.jsp"/>
    </body>

</html>
