<%@ page import="kz.test.Drug" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Olzhas Zhetpisbayev
  Date: 10/15/2017
  Time: 17:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>Drugs</title>
  </head>
  <body>

  <%
    List<Drug> drugList = (List<Drug>) request.getAttribute("drugList");
  %>

  <ul>
    <c:forEach items="${drugList}" var="drug">
      <li>Id: ${drug.id}, Name: ${drug.name }</li>
    </c:forEach>
  </ul>

  </body>
</html>
