<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<h2>Liste des Utilisateurs</h2>
<hr>

<div class="mb-3">
    <a href="<%= request.getContextPath() %>/user-form" class="btn btn-success">Ajouter un Utilisateur</a>
</div>

<table class="table table-bordered">
    <thead class="thead-dark">
        <tr>
            <th>ID</th>
            <th>Prénom</th>
            <th>Nom</th>
            <th>Email</th>
            <th>Date de création</th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="user" items="${users}">
            <tr>
                <td><c:out value="${user.id}" /></td>
                <td><c:out value="${user.firstName}" /></td>
                <td><c:out value="${user.lastName}" /></td>
                <td><c:out value="${user.email}" /></td>
                <td><c:out value="${user.createdAt}" /></td>
                <td>
                    <a href="<%= request.getContextPath() %>/user-form?action=edit&id=<c:out value='${user.id}' />" class="btn btn-primary btn-sm">Modifier</a>

                    <a href="<%= request.getContextPath() %>/delete-user?id=<c:out value='${user.id}' />" class="btn btn-danger btn-sm" onclick="return confirm('Êtes-vous sûr de vouloir supprimer cet utilisateur?')">Supprimer</a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>

<%@ include file="footer.jsp" %>