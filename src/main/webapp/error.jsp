<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<div class="alert alert-danger">
    <h3>Erreur</h3>
    <p>Une erreur s'est produite. Veuillez réessayer plus tard ou contacter l'administrateur.

    <a href="<%= request.getContextPath() %>/" class="btn btn-primary">Retour à l'accueil</a>
</div>

<%@ include file="footer.jsp" %>