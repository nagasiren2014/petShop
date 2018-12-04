<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<p>
    <c:forEach items="${bossList}" var="item">
        ${item.name}----------------------------
        ${item.character}<br>
    </c:forEach>
</p>