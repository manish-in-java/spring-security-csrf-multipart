<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>

<html>
    <head>
        <title>Spring Security Multipart Sample</title>
        <link href="<c:url value='/css/main.css' />" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <div id="content">
            <f:form enctype="multipart/form-data" method="post">
                <fieldset>
                    <table>
                        <tbody>
                            <tr>
                                <th align="right">File:</th>
                                <td align="left"><input id="file" name="file" type="file" /></td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <button>Upload</button></button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </fieldset>
            </f:form>
        </div>
    </body>
</html>
