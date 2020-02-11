<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="header.jsp"></c:import>

<div class="page-header">
    <div class="container">
        <div class="row">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                <div class="page-caption">
                    <h1 class="page-title">Hike Pageheader</h1>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /.page-header-->
<!-- news -->
<div class="card-section">
    <div class="container">
        <div class="card-block bg-white mb30">
            <div class="row">
                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                    <!-- section-title -->
                    <div class="section-title mb-0">
                        <h2>All about Hike. We share our knowledge on blog</h2>
                        <p>Our approach is very simple: we define your problem and give the best solution. </p>
                    </div>
                    <!-- /.section-title -->
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container" style="margin-bottom:100px;">
    <table id="example" class="display" style="width:100%">
        <thead>
        <tr>
            <th>Id</th>
            <th>FirstName</th>
            <th>LastNane</th>
            <th>Email</th>
            <th>Message</th>
            <th>Action</th>

        </tr>
        </thead>
        <tbody>
        <c:forEach items="${listAllUser}" var="list">
        <tr>
            <td>${list.id}</td>
            <td>${list.firstName}</td>
            <td>${list.lastName}</td>
            <td>${list.email}</td>
            <td>${list.message}</td>
            <td>

                <a href="${pageContext.request.contextPath}/editUser/${list.id}">Edit</a>
                |
                <a href="${pageContext.request.contextPath}/delete/${list.id}">Delete</a>
            </td>

        </tr>
        </c:forEach>
        </tbody>
    </table>

</div>






<c:import url="footer.jsp"></c:import>
<script>
    $(document).ready(function() {
        $('#example').DataTable();
    } );
</script>
