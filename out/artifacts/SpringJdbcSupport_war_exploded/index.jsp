<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<body>
<div class="content-wrapper">
    <div id="main-nav">
        <ul id="top-menu">
            <li><a href='<c:url value="/" />'>Home</a></li>
            <li><a href='<c:url value="/books.jsp" />'>Forms</a></li>
        </ul>
    </div>
<div id="main-content">
    <div id="content">
        <div id="contact" class="page">
            <form action="<c:url value="" />" method="post">
                <ul class="form-hold">
                    <li>
                        <label>Book Name <small>(Required)</small></label>
                        <input type="text" name="Name" id="Name" value="${Book.Name}">
                    </li>

                    <li>
                        <label>Author <small>(Required)</small></label>
                        <input type="text" id="Author" name="Author" value="${Book.Author}">
                    </li>

                    <li>
                        <label>ISBN <small>(Between 1-100, Required)</small></label>
                        <input type="text" id="ISBN" name="ISBN" value="${Book.ISBN}">
                    </li>

                    <li>
                        <label>Price (in TL) <small>(Between 1-100, Required)</small></label>
                        <input type="text" id="Price" name="Price" value="${Book.Price}">
                    </li>

                    <li>
                        <c:if test="${param.resumeError}">
                            <div class="error">
                                You have errors in forms
                            </div>
                        </c:if>

                        <input type="submit" class="submit-button" value="Send">
                    </li>

                </ul>
            </form>
        </div>
    </div>
</div>
</body>
</html>
