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
                <a class="nav-link" id="service-tab" data-toggle="tab" href="#service" role="tab" aria-controls="service" aria-selected="false">Service</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" id="portfolio-tab" data-toggle="tab" href="#portfolio" role="tab" aria-controls="portfolio" aria-selected="false">Portfolio</a>
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
                <a class="nav-link" id="counter-tab" data-toggle="tab" href="#counter" role="tab" aria-controls="counter" aria-selected="false">Counter</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" id="blog-tab" data-toggle="tab" href="#blog" role="tab" aria-controls="blog" aria-selected="false">Blog</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">Contact</a>
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
                    <h6 class="m-0 font-weight-bold text-primary card-header py-3">About ${message}</h6>
                    <div class="card-body">
                    <div class="form-group row">
                      <label for="aSubTitle" class="col-sm-2 col-form-label">Sub Title</label>
                      <div class="col-sm-6">
                      <input type="text" class="form-control" name="subTitle" placeholder="SubTitle" id="aSubTitle">
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
              <div class="tab-pane fade" id="service" role="tabpanel" aria-labelledby="service-tab">
                <div class="card shadow">
                  <div class="signup-form about-form">
                    <form action="${pageContext.request.contextPath}/addServiceContent" method="POST">
                      <h6 class="m-0 font-weight-bold text-primary card-header py-3">Service</h6>
                      <div class="card-body">
                        <div class="form-group row">
                          <label for="serviceSectionTitle" class="col-sm-2 col-form-label">Section SubTitle</label>
                          <div class="col-sm-6">
                            <input type="text" class="form-control" name="serviceSectionTitle" placeholder="Section SubTitle" id="serviceSectionTitle">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label for="serviceTitle" class="col-sm-2 col-form-label">Title</label>
                          <div class="col-sm-6">
                            <input type="text" class="form-control" name="serviceTitle" placeholder="Service Title" id="serviceTitle" required="required">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label for="serviceDetails" class="col-sm-2 col-form-label">Details</label>
                          <div class="col-sm-6">
                            <input type="text" class="form-control" name="serviceDetailsSubTitle" placeholder="Service Details" id="serviceDetails" required="required">
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
              <div class="tab-pane fade" id="portfolio" role="tabpanel" aria-labelledby="portfolio-tab">
                <div class="card shadow">
                  <div class="signup-form about-form">
                    <form action="${pageContext.request.contextPath}/addPortfolioContent" method="POST">
                      <c:forEach items="${portfolioContent}" var="portfolio_header">
                        <h6 class="m-0 font-weight-bold text-primary card-header py-3">${portfolio_header.portfolioSectionTitle}</h6>
                      </c:forEach>

                      <div class="card-body">
                        <div class="form-group row">
                          <label for="portfolioSectionTitle" class="col-sm-2 col-form-label">Section SubTitle</label>
                          <div class="col-sm-6">
                            <input type="text" class="form-control" name="portfolioSectionTitle" placeholder="Section SubTitle" id="portfolioSectionTitle" required="required">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label for="portfolioMenu" class="col-sm-2 col-form-label">Menu</label>
                          <div class="col-sm-6">
                            <input type="text" class="form-control" name="portfolioMenu" placeholder="portfolio Menu" id="portfolioMenu" required="required">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label for="portfolioProductTag" class="col-sm-2 col-form-label">Product Tag On Image</label>
                          <div class="col-sm-6">
                            <input type="text" class="form-control" name="portfolioProductTag" placeholder="portfolio Product Tag" id="portfolioProductTag" required="required">
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
              <div class="tab-pane fade" id="testmonial" role="tabpanel" aria-labelledby="testmonial-tab">
                <div class="card shadow">
                  <div class="signup-form about-form">
                    <form action="${pageContext.request.contextPath}/addTestimonialContent" method="POST">
                      <h6 class="m-0 font-weight-bold text-primary card-header py-3">Testimonial</h6>
                      <div class="card-body">
                        <div class="form-group row">
                          <label for="testimonialSectionTitle" class="col-sm-2 col-form-label">Section SubTitle</label>
                          <div class="col-sm-6">
                            <input type="text" class="form-control" name="testimonialSectionTitle" placeholder="Section SubTitle" id="testimonialSectionTitle">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label for="testimonialDetails" class="col-sm-2 col-form-label">Details</label>
                          <div class="col-sm-6">
                            <input type="text" class="form-control" name="testimonialDetails" placeholder="User Comment" id="testimonialDetails" required="required">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label for="testimonialUserName" class="col-sm-2 col-form-label">User Name</label>
                          <div class="col-sm-6">
                            <input type="text" class="form-control" name="testimonialUserName" placeholder="User Name" id="testimonialUserName" required="required">
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
              <div class="tab-pane fade" id="team" role="tabpanel" aria-labelledby="team-tab">
                <div class="card shadow">
                  <div class="signup-form about-form">
                    <form action="${pageContext.request.contextPath}/addTeamContent" method="POST">
                      <h6 class="m-0 font-weight-bold text-primary card-header py-3">Team</h6>
                      <div class="card-body">
                        <div class="form-group row">
                          <label for="teamSectionTitle" class="col-sm-2 col-form-label">Section SubTitle</label>
                          <div class="col-sm-6">
                            <input type="text" class="form-control" name="teamSectionTitle" placeholder="Section SubTitle" id="teamSectionTitle" required="required">
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

              <div class="tab-pane fade" id="pricing" role="tabpanel" aria-labelledby="pricing-tab">
                <div class="card shadow">
                  <div class="signup-form about-form">
                    <form action="${pageContext.request.contextPath}/addPricingContent" method="POST">
                      <h6 class="m-0 font-weight-bold text-primary card-header py-3">Pricing</h6>
                      <div class="card-body">
                        <div class="form-group row">
                        <label for="pricingSectionTitle" class="col-sm-2 col-form-label">Section SubTitle</label>
                        <div class="col-sm-6">
                          <input type="text" class="form-control" name="pricingSectionTitle" placeholder="Section SubTitle" id="pricingSectionTitle">
                        </div>
                      </div>
                        <div class="form-group row">
                        <label for="price" class="col-sm-2 col-form-label">price</label>
                        <div class="col-sm-6">
                          <input type="text" class="form-control" name="price" placeholder="Package Price" id="price" required="required">
                        </div>
                      </div>
                        <div class="form-group row">
                          <label for="subscriptionType" class="col-sm-2 col-form-label">Subscription Type</label>
                          <div class="col-sm-6">
                            <input type="text" class="form-control" name="subscriptionType" placeholder="Subscription Type" id="subscriptionType" required="required">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label for="subscriptionDetailsOne" class="col-sm-2 col-form-label">Subscription details one</label>
                          <div class="col-sm-6">
                            <input type="text" class="form-control" name="subscriptionDetailsOne" placeholder="subscription Details One" id="subscriptionDetailsOne" required="required">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label for="subscriptionDetailsTwo" class="col-sm-2 col-form-label">Subscription details two</label>
                          <div class="col-sm-6">
                            <input type="text" class="form-control" name="subscriptionDetailsTwo" placeholder="subscription Details Two" id="subscriptionDetailsTwo" required="required">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label for="subscriptionDetailsThree" class="col-sm-2 col-form-label">Subscription details three</label>
                          <div class="col-sm-6">
                            <input type="text" class="form-control" name="subscriptionDetailsThree" placeholder="Subscription details three" id="subscriptionDetailsThree" required="required">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label for="subscriptionDetailsFour" class="col-sm-2 col-form-label">Subscription details four</label>
                          <div class="col-sm-6">
                            <input type="text" class="form-control" name="subscriptionDetailsFour" placeholder="Subscription details four" id="subscriptionDetailsFour" required="required">
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


              <div class="tab-pane fade" id="counter" role="tabpanel" aria-labelledby="counter-tab">
                <div class="card shadow">
                  <div class="signup-form about-form">
                    <form action="${pageContext.request.contextPath}/addCounterContent" method="POST">
                      <h6 class="m-0 font-weight-bold text-primary card-header py-3">Counter</h6>
                      <div class="card-body">
                        <div class="form-group row">
                          <label for="counterSectionTitle" class="col-sm-2 col-form-label">Section SubTitle</label>
                          <div class="col-sm-6">
                            <input type="text" class="form-control" name="counterSectionTitle" placeholder="Section SubTitle" id="counterSectionTitle">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label for="counterNumber" class="col-sm-2 col-form-label">Counter Number</label>
                          <div class="col-sm-6">
                            <input type="text" class="form-control" name="counterNumber" placeholder="Counter Number" id="counterNumber" required="required">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label for="counterDetails" class="col-sm-2 col-form-label">Counter Details</label>
                          <div class="col-sm-6">
                            <input type="text" class="form-control" name="counterDetails" placeholder="Counter Details" id="counterDetails" required="required">
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

              <div class="tab-pane fade" id="blog" role="tabpanel" aria-labelledby="blog-tab">
                <div class="card shadow">
                  <div class="signup-form about-form">
                    <form action="${pageContext.request.contextPath}/addBlogContent" method="POST">
                      <h6 class="m-0 font-weight-bold text-primary card-header py-3">Blog</h6>
                      <div class="card-body">
                        <div class="form-group row">
                          <label for="blogSectionTitle" class="col-sm-2 col-form-label">Section SubTitle</label>
                          <div class="col-sm-6">
                            <input type="text" class="form-control" name="blogSectionTitle" placeholder="Section SubTitle" id="blogSectionTitle" required="required">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label for="blogPostTitle" class="col-sm-2 col-form-label">Blog Post Title</label>
                          <div class="col-sm-6">
                            <input type="text" class="form-control" name="blogPostTitle" placeholder="Blog Post Title" id="blogPostTitle" required="required">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label for="blogPostDetails" class="col-sm-2 col-form-label">Blog Post Details</label>
                          <div class="col-sm-6">
                            <input type="text" class="form-control" name="blogPostDetails" placeholder="Blog Post Details" id="blogPostDetails" required="required">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label for="blogPostTime" class="col-sm-2 col-form-label">Post Time</label>
                          <div class="col-sm-6">
                            <input type="text" class="form-control" name="blogPostTime" placeholder="Post Time" id="blogPostTime" required="required">
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
                <div class="card shadow">
                  <div class="signup-form about-form">
                    <form action="${pageContext.request.contextPath}/addContactContent" method="POST">
                      <h6 class="m-0 font-weight-bold text-primary card-header py-3">Contact</h6>
                      <div class="card-body">
                        <div class="form-group row">
                          <label for="contactSectionTitle" class="col-sm-2 col-form-label">Section SubTitle</label>
                          <div class="col-sm-6">
                            <input type="text" class="form-control" name="contactSectionTitle" placeholder="Section SubTitle" id="contactSectionTitle" required="required">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label for="aboutCompany" class="col-sm-2 col-form-label">About Company</label>
                          <div class="col-sm-6">
                            <input type="text" class="form-control" name="aboutCompany" placeholder="Blog Post Title" id="aboutCompany" required="required">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label for="companyEmail" class="col-sm-2 col-form-label">Company Email</label>
                          <div class="col-sm-6">
                            <input type="text" class="form-control" name="companyEmail" placeholder="Blog Post Details" id="companyEmail" required="required">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label for="contactNumber" class="col-sm-2 col-form-label">Phone Number</label>
                          <div class="col-sm-6">
                            <input type="text" class="form-control" name="contactNumber" placeholder="Contact Number" id="contactNumber" required="required">
                          </div>
                        </div>

                        <div class="form-group row">
                          <label for="contactLocation" class="col-sm-2 col-form-label">Contact Location</label>
                          <div class="col-sm-6">
                            <input type="text" class="form-control" name="contactLocation" placeholder="Contact Location" id="contactLocation" required="required">
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

