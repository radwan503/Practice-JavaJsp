<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="header.jsp"></c:import>


<div class="banner-breadcum section">
        <div class="breadcrumb-image" style="background-image: url(https://images.pexels.com/photos/544117/pexels-photo-544117.jpeg?w=940&h=650&auto=compress&cs=tinysrgb);">
            <div class="container text-center">
                <h1>Frequently asked questions</h1>
                <div class="breadcrumbs_path">
                    <a href="#">Home</a>  -   FAQ's
                </div>
            </div>
        </div>
</div>

<div class="col-md-8 offset-md-2">
<div class="card card-outline-secondary body-style">
    <div class="card-body">
        <form class="form" role="form" autocomplete="off" modelAttribute="messageUser" action="${pageContext.request.contextPath}/editSave" method="POST">
            <input type="hidden" class="form-control" id="id" name="id" value="${messageUser.id}">
            <div class="form-group">
                <label for="firstName">FirstName</label>
                <input type="text" class="form-control" id="firstName" name="firstName" placeholder="Full name" value="${messageUser.firstName}">
            </div>
            <div class="form-group">
                <label for="lastName">LastName</label>
                <input type="text" class="form-control" id="lastName" name="lastName" placeholder="Full name" value="${messageUser.lastName}">
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" class="form-control" id="email" name="email" placeholder="Email" required="" value="${messageUser.email}">
            </div>
            <div class="form-group">
                <label for="exampleFormControlTextarea1">Message</label>
                                <textarea class="form-control" id="exampleFormControlTextarea1"
                                          name="message" rows="3" style="height: 80px;line-height: 15px;">${messageUser.message}</textarea>
            </div>

            <div class="row">
                <div class="form-actions floatRight">
                    <input type="submit" value="Update" class="btn btn-primary btn-sm">
                </div>
            </div>
        </form>
    </div>
</div>
</div>
<c:import url="footer.jsp"></c:import>