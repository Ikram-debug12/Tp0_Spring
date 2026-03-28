<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<c:if test="${product != null}">
    <h2>Modifier le Produit</h2>
    <form action="<%= request.getContextPath() %>/update-product" method="post">
    <input type="hidden" name="id" value="<c:out value='${product.id}' />" />
</c:if>
<c:if test="${product == null}">
    <h2>Ajouter un Produit</h2>
    <form action="<%= request.getContextPath() %>/create-product" method="post">
</c:if>

<div class="form-group">
    <label for="name">Nom du produit</label>
    <input type="text" class="form-control" id="name" name="name" value="<c:out value='${product.name}' />" required>
</div>

<div class="form-group">
    <label for="description">Description</label>
    <textarea class="form-control" id="description" name="description" rows="3"><c:out value='${product.description}' /></textarea>
</div>

<div class="form-group">
    <label for="price">Prix</label>
    <input type="number" step="0.01" class="form-control" id="price" name="price" value="<c:out value='${product.price}' />" required>
</div>

<div class="form-group">
    <label for="stockQuantity">Quantité en stock</label>
    <input type="number" class="form-control" id="stockQuantity" name="stockQuantity" value="<c:out value='${product.stockQuantity}' />" required>
</div>

<div class="form-group">
    <label for="sku">SKU (Code produit unique)</label>
    <input type="text" class="form-control" id="sku" name="sku" value="<c:out value='${product.sku}' />" required>
</div>

<button type="submit" class="btn btn-primary">Enregistrer</button>
<a href="<%= request.getContextPath() %>/products" class="btn btn-secondary">Annuler</a>
</form>

<%@ include file="footer.jsp" %>