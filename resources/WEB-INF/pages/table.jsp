<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Prog.kiev.ua</title>
</head>
<body>
<div align="center">
    <form action="/delselected" enctype="multipart/form-data" method="POST">
        <table class="table table-bordered">

            <thead>
            <tr>
                <th class="col-1">Delete</th>
                <th class="col-2">Photo id</th>
                <th class="col-3">Photo</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${photos}" var="photo">
                <tr>
                    <td>
                        <input type="checkbox" class="big-checkbox" name="photos[]" value="${photo}">
                    </td>
                    <td>
                        <a href="/photo/${photo}">${photo}</a>
                    </td>
                    <td>
                        <img ootstra src="/photo/${photo}" width=" 10%" height="10%"/>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <input type="submit" value="Delete selected photo">
    </form>
    <input type="submit" value="Return" onclick="window.location='/';" />
</div>
</body>
</html>