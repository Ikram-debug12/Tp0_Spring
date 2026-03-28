
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<div class="jumbotron">
    <h1 class="display-4">Bienvenue dans l'application de Gestion d'Inventaire</h1>
    <p class="lead">Cette application démontre l'intégration de JSP, Servlet, Hibernate avec Jakarta EE et un DAO générique.

    <hr class="my-4">
    <p>Utilisez les liens ci-dessous pour naviguer dans l'application :

    <div class="row">
        <div class="col-md-6">
            <div class="card mb-4">
                <div class="card-header">Gestion des Utilisateurs</div>
                <div class="card-body">
                    <p>Gérez les utilisateurs de l'application

                    <a class="btn btn-primary" href="<%= request.getContextPath() %>/users" role="button">Voir les Utilisateurs</a>
                    <a class="btn btn-success" href="<%= request.getContextPath() %>/user-form" role="button">Ajouter un Utilisateur</a>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="card mb-4">
                <div class="card-header">Gestion des Produits</div>
                <div class="card-body">
                    <p>Gérez l'inventaire des produits

                    <a class="btn btn-primary" href="<%= request.getContextPath() %>/products" role="button">Voir les Produits</a>
                    <a class="btn btn-success" href="<%= request.getContextPath() %>/product-form" role="button">Ajouter un Produit</a>
                </div>
            </div>
        </div>
    </div>
</div>

<%@ include file="footer.jsp" %>