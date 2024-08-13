<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.HashMap, java.util.ArrayList, com.yojulab.study_springboot.utils.Paginations" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bootstrap 5 Template</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
</head>

<body>
<!-- Menu -->
<%@ include file="/WEB-INF/views/commons/header.jsp" %>

<%
    HashMap result = (HashMap) request.getAttribute("result");
    HashMap params = (result.get("params") != null) ? (HashMap) result.get("params") : new HashMap<>();
    String search = (params.get("search") != null) ? params.get("search").toString() : "";
%>

<!-- Main Content -->
<main class="container">

    <h2 class="my-4">CarCompany List</h2>

    <nav class="my-4 navbar navbar-light">
        <div class="container-fluid">
            <form class="d-flex" action="/carcompany/list" method="get">
                <label for="search">출시년도</label>
                <input class="form-control" id="search" name="search" type="search" placeholder="Search" aria-label="Search"
                       value=<%=search%>>
                <button class="btn btn-primary" type="submit">Search</button>
            </form>
        </div>
    </nav>

    <table class="table">
        <thead>
        <tr>
            <th scope="col">회사이름</th>
            <th scope="col">자동차이름</th>
            <th scope="col">연식</th>
            <th scope="col">옵션 갯수</th>
        </tr>
        </thead>
        <tbody>
        <% ArrayList<HashMap> resultList = (ArrayList<HashMap>) result.get("resultList");
            for (HashMap record : resultList) {%>
        <tr>
            <td>
                <%= record.get("CP_NAME") %>
            </td>
            <td>
                <%= record.get("CAR_NAME") %>
            </td>
            <td>
                <%= record.get("DATE_YEAR") %>
            </td>
            <td>
                <%= record.get("OPTION_COUNT") %>
            </td>
        </tr>
        <% } %>
        </tbody>
    </table>
</main>

<!-- Footer -->
<%@ include file="/WEB-INF/views/commons/footer.jsp" %>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>