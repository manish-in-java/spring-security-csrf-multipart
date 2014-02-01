<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>
    <head>
        <title>Spring Security Multipart Sample</title>
        <link href="<c:url value='/css/main.css' />" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <div id="content">
            You uploaded: <b><c:out value="${file}"/></b>.
        </div>
    </body>
</html>
