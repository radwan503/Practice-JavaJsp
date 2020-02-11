<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="dahsboard-header.jsp"></c:import>

<body id="page-top">

<!-- Page Wrapper -->
<div id="wrapper">

  <c:import url="dashboard-sidebar.jsp"></c:import>

  <!-- Content Wrapper -->
  <div id="content-wrapper" class="d-flex flex-column">

    <!-- Main Content -->
    <div id="content">

      <c:import url="top-navbar.jsp"></c:import>

      <!-- Begin Page Content -->
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-12 mb-3">
            <ul class="nav nav-pills flex-column" id="myTab" role="tablist">
              <li class="nav-item">
                <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Home(Slider)</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" id="about-tab" data-toggle="tab" href="#about" role="tab" aria-controls="about" aria-selected="false">About</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">Contact</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" id="testmonial-tab" data-toggle="tab" href="#testmonial" role="tab" aria-controls="testmonial" aria-selected="false">Testmonial</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" id="team-tab" data-toggle="tab" href="#team" role="tab" aria-controls="team" aria-selected="false">Team</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" id="pricing-tab" data-toggle="tab" href="#pricing" role="tab" aria-controls="pricing" aria-selected="false">Pricing</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" id="projectCounter-tab" data-toggle="tab" href="#counter" role="tab" aria-controls="counter" aria-selected="false">Counter</a>
              </li>
            </ul>
          </div>
        </div>

        <div class="row">
          <div class="col-md-12">

            <div class="tab-content" id="myTabContent">

              <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                <div class="card shadow">
                <div class="signup-form slider-form">
                  <form action="${pageContext.request.contextPath}/addSliderContent" method="POST">
                    <h6 class="m-0 font-weight-bold text-primary card-header py-3">Slider ${message}</h6>
                    <div class="card-body">
                    <div class="form-group row">
                      <label for="sTitle" class="col-sm-2 col-form-label">Title</label>
                      <div class="col-sm-6">
                      <input type="text" class="form-control" name="title" placeholder="Title" id="sTitle" required="required">
                      </div>
                    </div>
                    <div class="form-group row">
                      <label for="sSubTitle" class="col-sm-2 col-form-label">Sub Title</label>
                      <div class="col-sm-6">
                      <input type="text" class="form-control" name="subTitle" placeholder="Sub Title" id="sSubTitle" required="required">
                      </div>
                    </div>
                    <div class="form-group row">
                      <div class="col-sm-6 offset-sm-2">
                      <button type="submit" class="btn btn-primary">Submit</button>
                        </div>
                    </div>
                      </div>
                  </form>
                </div>
                </div>
              </div>
              <div class="tab-pane fade" id="about" role="tabpanel" aria-labelledby="about-tab">
                <div class="card shadow">
                <div class="signup-form about-form">
                  <form action="${pageContext.request.contextPath}/addAboutContent" method="POST">
                    <h6 class="m-0 font-weight-bold text-primary card-header py-3">About</h6>
                    <div class="card-body">
                    <div class="form-group row">
                      <label for="aSubTitle" class="col-sm-2 col-form-label">Sub Title</label>
                      <div class="col-sm-6">
                      <input type="text" class="form-control" name="subTitle" placeholder="SubTitle" id="aSubTitle" required="required">
                        </div>
                    </div>
                    <div class="form-group row">
                      <label for="imgTitle" class="col-sm-2 col-form-label">imgTitle</label>
                      <div class="col-sm-6">
                      <input type="text" class="form-control" name="imgTitle" placeholder="imgTitle" id="imgTitle" required="required">
                        </div>
                    </div>
                    <div class="form-group row">
                      <div class="col-sm-6 offset-sm-2">
                        <button type="submit" class="btn btn-primary">Submit</button>
                      </div>
                    </div>
                      </div>
                  </form>

                </div>
                </div>
              </div>
              <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
                <div class="signup-form">
                  <form action="/examples/actions/confirmation.php" method="post">
                    <h2>Service</h2>
                    <div class="form-group">
                      <input type="text" class="form-control" name="title" placeholder="Title" required="required">
                    </div>
                    <div class="form-group">
                      <input type="text" class="form-control" name="serviceDetailsTitle" placeholder="serviceDetailsTitle" required="required">
                    </div>
                    <div class="form-group">
                      <input type="text" class="form-control" name="serviceDetailsSubTitle" placeholder="serviceDetailsSubTitle" required="required">
                    </div>
                    <div class="form-group">
                      <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                  </form>

                </div>

              </div>
              <div class="tab-pane fade" id="testmonial" role="tabpanel" aria-labelledby="testmonial-tab">
                <div class="signup-form">
                  <form action="/examples/actions/confirmation.php" method="post">
                    <h2>Service</h2>
                    <div class="form-group">
                      <input type="text" class="form-control" name="title" placeholder="Title" required="required">
                    </div>
                    <div class="form-group">
                      <input type="text" class="form-control" name="serviceDetailsTitle" placeholder="serviceDetailsTitle" required="required">
                    </div>
                    <div class="form-group">
                      <input type="text" class="form-control" name="serviceDetailsSubTitle" placeholder="serviceDetailsSubTitle" required="required">
                    </div>
                    <div class="form-group">
                      <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                  </form>

                </div>

              </div>
              <div class="tab-pane fade" id="team" role="tabpanel" aria-labelledby="team-tab">
                <div class="signup-form">
                  <form action="/examples/actions/confirmation.php" method="post">
                    <h2>Service</h2>
                    <div class="form-group">
                      <input type="text" class="form-control" name="title" placeholder="Title" required="required">
                    </div>
                    <div class="form-group">
                      <input type="text" class="form-control" name="serviceDetailsTitle" placeholder="serviceDetailsTitle" required="required">
                    </div>
                    <div class="form-group">
                      <input type="text" class="form-control" name="serviceDetailsSubTitle" placeholder="serviceDetailsSubTitle" required="required">
                    </div>
                    <div class="form-group">
                      <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                  </form>

                </div>

              </div>
              <div class="tab-pane fade" id="pricing" role="tabpanel" aria-labelledby="pricing-tab">
                <div class="signup-form">
                  <form action="/examples/actions/confirmation.php" method="post">
                    <h2>Service</h2>
                    <div class="form-group">
                      <input type="text" class="form-control" name="title" placeholder="Title" required="required">
                    </div>
                    <div class="form-group">
                      <input type="text" class="form-control" name="serviceDetailsTitle" placeholder="serviceDetailsTitle" required="required">
                    </div>
                    <div class="form-group">
                      <input type="text" class="form-control" name="serviceDetailsSubTitle" placeholder="serviceDetailsSubTitle" required="required">
                    </div>
                    <div class="form-group">
                      <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                  </form>

                </div>

              </div>
              <div class="tab-pane fade" id="counter" role="tabpanel" aria-labelledby="counter-tab">
                <div class="signup-form">
                  <form action="/examples/actions/confirmation.php" method="post">
                    <h2>Service</h2>
                    <div class="form-group">
                      <input type="text" class="form-control" name="title" placeholder="Title" required="required">
                    </div>
                    <div class="form-group">
                      <input type="text" class="form-control" name="serviceDetailsTitle" placeholder="serviceDetailsTitle" required="required">
                    </div>
                    <div class="form-group">
                      <input type="text" class="form-control" name="serviceDetailsSubTitle" placeholder="serviceDetailsSubTitle" required="required">
                    </div>
                    <div class="form-group">
                      <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                  </form>

                </div>

              </div>



            </div>
          </div>
          <!-- /.col-md-8 -->
        </div>




      </div>
      <!-- /.container-fluid -->

    </div>
    <!-- End of Main Content -->

    <!-- Footer -->
    <footer class="sticky-footer bg-white">
      <div class="container my-auto">
        <div class="copyright text-center my-auto">
          <span>Copyright &copy; Your Website 2019</span>
        </div>
      </div>
    </footer>
    <!-- End of Footer -->

  </div>
  <!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
  <i class="fas fa-angle-up"></i>
</a>

<!-- Logout Modal-->


<c:import url="dashbord-footer.jsp"></c:import>