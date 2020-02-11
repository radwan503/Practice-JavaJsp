<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<c:import url="header.jsp"></c:import>

<!--   parallax home-->
<section class="parralax-bg-section" data-parallax="scroll" data-image-src="../static/image/all_banner/parallax-bg2.png" data-scroll-index="0">
    <canvas class="parralax-particels"></canvas>
    <div class="home-bg-parralax">
        <div class="container">
            <div class="row">
                <div class="col-xl-8 col-md-8 col-sm-8 offset-xl-2 offset-md-2 offset-sm-2">
                    <div class="bg-content">
                        <c:forEach items="${sliderContent}" var="list">
                        <span>${list.title}</span>
                        <h1>${list.subTitle}</h1>
                        </c:forEach>
                        <div class="btn-group mt-30">
                            <a href="#" class="btn btn-control">Register</a>
                            <a href="#" class="btn btn-control bg-white text-dark">See video</a> </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--    end parallax home-->
<!--Start About Section-->
<section id="about-area" class="about-area section-padding " data-scroll-index="1">
    <div class="container">
        <div class="row">
            <div class="section-heading mb-50 text-center">
                <h2 class="section-title">About</h2>
                <p class="section-subtitle">Ours is a team of visionary young professionals who simply love WordPress. We code and we develop to make you happy.</p>
            </div>
        </div>
        <div class="about-wrapper text-center">
            <div class="row">
                <div class="col-xl-4 col-md-4 col-sm-12">
                    <div class="img-box">
                        <div class="img-thumb"> <img src="../static/image/about/open-source.png" alt="" class="img-responsive"> </div>
                        <h3 class="img-title">We Are Open Source</h3> </div>
                </div>
                <div class="col-xl-4 col-md-4 col-sm-12">
                    <div class="img-box">
                        <div class="img-thumb"> <img src="../static/image/about/wordpress.png" alt="" class="img-responsive"> </div>
                        <h3 class="img-title">WordPress enthusiasts</h3> </div>
                </div>
                <div class="col-xl-4 col-md-4 col-sm-12">
                    <div class="img-box">
                        <div class="img-thumb"> <img src="../static/image/about/support.png" alt="" class="img-responsive"> </div>
                        <h3 class="img-title">Highly-Rated Support</h3> </div>
                </div>
                <div class="col-xl-4 col-md-4 col-sm-12">
                    <div class="img-box">
                        <div class="img-thumb"> <img src="../static/image/about/plugins.png" alt="" class="img-responsive"> </div>
                        <h3 class="img-title">Feature-Rich Free &amp; Pro Plugins</h3> </div>
                </div>
                <div class="col-xl-4 col-md-4 col-sm-12">
                    <div class="img-box">
                        <div class="img-thumb"> <img src="../static/image/about/updates.png" alt="" class="img-responsive"> </div>
                        <h3 class="img-title">Regular Updates &amp; Bug fixes</h3> </div>
                </div>
                <div class="col-xl-4 col-md-4 col-sm-12">
                    <div class="img-box">
                        <div class="img-thumb"> <img src="../static//image/about/freemium.png" alt="" class="img-responsive"> </div>
                        <h3 class="img-title">Extensions to step-up your game</h3> </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--    end About Section-->
<!--  start service section-->
<section id="service-area" class="section-padding service-area" data-scroll-index="2">
    <div class="container">
        <div class="row">
            <div class="section-heading mb-50 text-center">
                <h2 class="section-title">Service</h2>
                <p class="section-subtitle">Ours is a team of visionary young professionals who simply love WordPress. We code and we develop to make you happy.</p>
            </div>
        </div>
        <div class="about-wrapper text-center">
            <div class="row">
                <div class="col-xl-4 col-md-4 col-sm-12">
                    <div class="service-box">
                        <div class="product-thumb"> <img src="../static/image/service/open-source.png" alt="" class="img-responsive"> </div>
                        <h3 class="product-title">We Are Open Source</h3>
                        <div class="product-content"> Build your dream marketplace with the one-stop Multi Vendor eCommerce solution for WordPress Lorem ipsum dolor sit amet, consectetur adipisicing elit. </div>
                    </div>
                </div>
                <div class="col-xl-4 col-md-4 col-sm-12">
                    <div class="service-box">
                        <div class="product-thumb"> <img src="../static/image/service/project-management.png" alt="" class="img-responsive"> </div>
                        <h3 class="product-title">We Are Open Source</h3>
                        <div class="product-content"> Build your dream marketplace with the one-stop Multi Vendor eCommerce solution for WordPress Lorem ipsum dolor sit amet, consectetur adipisicing elit. </div>
                    </div>
                </div>
                <div class="col-xl-4 col-md-4 col-sm-12">
                    <div class="service-box">
                        <div class="product-thumb"> <img src="../static/image/service/goal.png" alt="" class="img-responsive"> </div>
                        <h3 class="product-title">We Are Open Source</h3>
                        <div class="product-content"> Build your dream marketplace with the one-stop Multi Vendor eCommerce solution for WordPress Lorem ipsum dolor sit amet, consectetur adipisicing elit. </div>
                    </div>
                </div>
                <div class="col-xl-4 col-md-4 col-sm-12">
                    <div class="service-box">
                        <div class="product-thumb"> <img src="../static/image/service/goal2.png" alt="" class="img-responsive"> </div>
                        <h3 class="product-title">We Are Open Source</h3>
                        <div class="product-content"> Build your dream marketplace with the one-stop Multi Vendor eCommerce solution for WordPress Lorem ipsum dolor sit amet, consectetur adipisicing elit. </div>
                    </div>
                </div>
                <div class="col-xl-4 col-md-4 col-sm-12">
                    <div class="service-box">
                        <div class="product-thumb"> <img src="../static/image/service/programmer.png" alt="" class="img-responsive"> </div>
                        <h3 class="product-title">We Are Open Source</h3>
                        <div class="product-content"> Build your dream marketplace with the one-stop Multi Vendor eCommerce solution for WordPress Lorem ipsum dolor sit amet, consectetur adipisicing elit. </div>
                    </div>
                </div>
                <div class="col-xl-4 col-md-4 col-sm-12s">
                    <div class="service-box">
                        <div class="product-thumb"> <img src="../static/image/service/hack.png" alt="" class="img-responsive"> </div>
                        <h3 class="product-title">We Are Open Source</h3>
                        <div class="product-content"> Build your dream marketplace with the one-stop Multi Vendor eCommerce solution for WordPress Lorem ipsum dolor sit amet, consectetur adipisicing elit. </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--    end service area-->
<!--    portfolio area-->
<section id="portfolio-area" class="section-padding clearfix" data-scroll-index="3">
    <div class="container">
        <div class="row">
            <div class="section-heading mb-50 text-center">
                <h2 class="section-title">Portfolio</h2>
                <p class="section-subtitle">Ours is a team of visionary young professionals who simply love WordPress. We code and we develop to make you happy.</p>
            </div>
        </div>
        <div class="row">
            <div class="col-xl-12 col-lg-12 col-sm-12 text-center">
                <!--   portfolio menu-->
                <div class="portfolio-menu mb-50">
                    <button data-filter="*" data-toggle="tooltip" data-placement="top" title="Show All"><i class="fa fa-th-list" aria-hidden="true"></i></button>
                    <button data-filter=".cat1" data-toggle="tooltip" data-placement="top" title=" web">web</button>
                    <button data-filter=".cat2" data-toggle="tooltip" data-placement="top" title=" photo">photo</button>
                    <button data-filter=".cat3" data-toggle="tooltip" data-placement="top" title="grapics ">grapics</button>
                    <button data-filter=".cat4" data-toggle="tooltip" data-placement="top" title=" branding">branding</button>
                    <button data-filter=".cat5" data-toggle="tooltip" data-placement="top" title=" logo">logo</button>
                </div>
            </div>
        </div>
        <!--   portfolio img-->
        <div class="row portfolio-active">
            <div class="col-xl-3 col-md-3 col-sm-3 grid-item cat1 filter">
                <div class="portfolio-item mb-30 "> <img src="../static/image/project/project1.jpg" alt="">
                    <div class="overlay-content text-center">
                        <div class="overlay-title"> <a href="#">Grapics Design</a> </div>
                        <ul>
                            <li>
                                <a class="image-link portfolio-popup-active" href="asset/image/project/project1.jpg"> <span title="zoom-image">
                                     <i class="fa fa-search-plus" aria-hidden="true"></i></span> </a>
                            </li>
                            <li><span title="link"><a href="#"> <i class="fa fa-external-link" aria-hidden="true"></i></a></span></li>

                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-3 col-sm-3 grid-item cat2 filter">
                <div class="portfolio-item mb-30 "> <img src="../static/image/project/project2.jpg" alt="">
                    <div class="overlay-content text-center">
                        <div class="overlay-title"> <a href="#">Web Design</a> </div>
                        <ul>
                            <li>
                                <a class="image-link portfolio-popup-active" href="asset/image/project/project2.jpg"> <span title="zoom-image"><i class="fa fa-search-plus" aria-hidden="true"></i></span></a>
                            </li>
                            <li><span title="link"><a href="#"> <i class="fa fa-external-link" aria-hidden="true"></i></a></span></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-3 col-sm-3 grid-item cat3 filter">
                <div class="portfolio-item mb-30 "> <img src="../static/image/project/project3.jpg" alt="">
                    <div class="overlay-content text-center">
                        <div class="overlay-title"> <a href="#">Grapics Design</a> </div>
                        <ul>
                            <li>
                                <a class="image-link portfolio-popup-active" href="asset/image/project/project3.jpg"> <span title="zoom-image"><i class="fa fa-search-plus" aria-hidden="true"></i></span></a>
                            </li>
                            <li><span title="link"><a href="#"><i class="fa fa-external-link" aria-hidden="true"></i></a></span></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-3 col-sm-3 grid-item cat4 filter">
                <div class="portfolio-item mb-30 "> <img src="../static/image/project/project4.jpg" alt="">
                    <div class="overlay-content text-center">
                        <div class="overlay-title"> <a href="#">Grapics Design</a> </div>
                        <ul>
                            <li>
                                <a class="image-link portfolio-popup-active" href="asset/image/project/project4.jpg"> <span title="zoom-image"><i class="fa fa-search-plus" aria-hidden="true"></i></span></a>
                            </li>
                            <li><span title="link"><a href="#"> <i class="fa fa-external-link" aria-hidden="true"></i></a></span></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-3 col-sm-3 grid-item cat4 filter">
                <div class="portfolio-item mb-30 "> <img src="../static/image/project/project2.jpg" alt="">
                    <div class="overlay-content text-center">
                        <div class="overlay-title"> <a href="#">Grapics Design</a> </div>
                        <ul>
                            <li>
                                <a class="image-link portfolio-popup-active" href="asset/image/project/project5.png"> <span title="zoom-image"><i class="fa fa-search-plus" aria-hidden="true"></i></span> </a>
                            </li>
                            <li><span title="link"><a href="#"> <i class="fa fa-external-link" aria-hidden="true"></i></a></span></li>

                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-3 col-sm-3 grid-item cat5 filter">
                <div class="portfolio-item mb-30 "> <img src="../static/image/project/project6.jpg" alt="">
                    <div class="overlay-content text-center">
                        <div class="overlay-title"> <a href="#">Grapics Design</a> </div>
                        <ul>
                            <li><a class="image-link portfolio-popup-active" href="asset/image/project/project6.jpg"><span title="zoom-image"><i class="fa fa-search-plus" aria-hidden="true"></i></span>

                            </a> </li>
                            <li><span title="link"><a href="#"> <i class="fa fa-external-link" aria-hidden="true"></i></a></span></li>

                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-3 col-sm-3 grid-item cat4 filter">
                <div class="portfolio-item mb-30 "> <img src="../static/image/project/project1.jpg" alt="">
                    <div class="overlay-content text-center">
                        <div class="overlay-title"> <a href="#">Grapics Design</a> </div>
                        <ul>
                            <li><a class="image-link portfolio-popup-active" href="asset/image/project/project1.jpg"><span title="zoom-image"><i class="fa fa-search-plus" aria-hidden="true"></i></span>

                            </a> </li>
                            <li><span title="link"><a href="#"> <i class="fa fa-external-link" aria-hidden="true"></i></a></span></li>

                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-3 col-sm-3 grid-item cat3">
                <div class="portfolio-item mb-30 "> <img src="../static/image/project/project3.jpg" alt="">
                    <div class="overlay-content text-center">
                        <div class="overlay-title"> <a href="#">Grapics Design</a> </div>
                        <ul>
                            <li><a class="image-link portfolio-popup-active" href="asset/image/project/project2.jpg"><span title="zoom-image"><i class="fa fa-search-plus" aria-hidden="true"></i></span>

                            </a> </li>
                            <li><span title="link"><a href="#"> <i class="fa fa-external-link" aria-hidden="true"></i></a></span></li>

                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--    end portfolio area-->
<!--  start testmonial area  -->
<section id="testmonial-area" class="section-padding testmonial-area" data-scroll-index="4">
    <div class="container">
        <div class="row">
            <div class="section-heading mb-50 text-center">
                <h2 class="section-title">Testmonial</h2>
                <p class="section-subtitle">Ours is a team of visionary young professionals who simply love WordPress. We code and we develop to make you happy.</p>
            </div>
        </div>
        <div class="testmonial-wrapper text-center">
            <div class="testmonial-item-group owl-carousel">
                <!--single testmonial-->
                <div class="single-item-test">
                    <div class="reviewr-img"> <img src="../static/image/testmonial/testmonial1.png" class="img-responsive" alt=""> </div>
                    <div class="review-comment mt-50">
                        <h3 class="reviwer-title">“I'm selfish, impatient and a little insecure. I make mistakes, I am out of control and at times hard to handle. But if you can't handle me at my worst, then you sure as hell don't deserve me at my best.” </h3>
                        <p class="reviwer-subtitle">― Marilyn Monroe</p>
                    </div>
                </div>
                <!--single testmonial-->
                <div class="single-item-test">
                    <div class="reviewr-img"> <img src="../static/image/testmonial/testmonial2.png" class="img-responsive" alt=""> </div>
                    <div class="review-comment mt-50">
                        <h3 class="reviwer-title">“I'm selfish, impatient and a little insecure. I make mistakes, I am out of control and at times hard to handle. But if you can't handle me at my worst, then you sure as hell don't deserve me at my best.” </h3>
                        <p class="reviwer-subtitle">― Marilyn Monroe</p>
                    </div>
                </div>
                <!--single testmonial-->
                <div class="single-item-test">
                    <div class="reviewr-img"> <img src="../static/image/testmonial/testmonial3.png" class="img-responsive" alt=""> </div>
                    <div class="review-comment mt-50">
                        <h3 class="reviwer-title">“I'm selfish, impatient and a little insecure. I make mistakes, I am out of control and at times hard to handle. But if you can't handle me at my worst, then you sure as hell don't deserve me at my best.” </h3>
                        <p class="reviwer-subtitle">― Marilyn Monroe</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--    end testmonial area-->
<!--  team section-->
<div id="team-area" class="section-padding team-area" data-scroll-index="5">
    <div class="container">
        <div class="row">
            <div class="section-heading mb-50 text-center">
                <h2 class="section-title">Team</h2>
                <p class="section-subtitle">Ours is a team of visionary young professionals who simply love WordPress. We code and we develop to make you happy.</p>
            </div>
        </div>
        <div class="team-wrapper">
            <div class="row">
                <div class="col-md-12 col-md-12 col-sm-12">
                    <div class="team-member">
                        <img src="../static/image/team/team.png" alt="" class="img-responsive"> </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--    end team area-->
<!--   start pricing section-->
<section id="pricing-area" class="pricing-area section-padding" data-scroll-index="6">
    <div class="container">
        <div class="row">
            <div class="section-heading mb-50 text-center">
                <h2 class="section-title">Pricing</h2>
                <p class="section-subtitle">Ours is a team of visionary young professionals who simply love WordPress. We code and we develop to make you happy.</p>
            </div>
        </div>
        <div class="row">
            <div class="col-xl-4 col-md-4 col-sm-12">
                <div class="pricingTable">
                    <svg x="0" y="0" viewBox="0 0 360 220">
                        <g>
                            <path fill="#28B463" d="M0.732,193.75c0,0,29.706,28.572,43.736-4.512c12.976-30.599,37.005-27.589,44.983-7.061
                                c8.09,20.815,22.83,41.034,48.324,27.781c21.875-11.372,46.499,4.066,49.155,5.591c6.242,3.586,28.729,7.626,38.246-14.243
                                s27.202-37.185,46.917-8.488c19.715,28.693,38.687,13.116,46.502,4.832c7.817-8.282,27.386-15.906,41.405,6.294V0H0.48
                                L0.732,193.75z"></path>
                        </g>
                        <text transform="matrix(1 0 0 1 109.7256 116.2686)" fill="#fff" font-size="48.4489">$10</text>
                        <text transform="matrix(0.9566 0 0 1 197.3096 83.9121)" fill="#fff" font-size="19.0829">.99</text>
                        <text transform="matrix(1 0 0 1 233.9629 115.5303)" fill="#fff" font-size="15.4128">/Month</text>
                    </svg>
                    <div class="pricing-content">
                        <h3 class="title">Standard</h3>
                        <ul class="pricing-content">
                            <li><b>50GB</b> Disk Space</li>
                            <li><b>50GB</b> Bandwidth</li>
                            <li><b>10</b> Subdomains</li>
                            <li><b>15</b> Domains</li>
                        </ul> <a href="#" class="pricingTable-signup">Subscribe Now</a> </div>
                </div>
            </div>
            <div class="col-xl-4 col-md-4 col-sm-12">
                <div class="pricingTable blue">
                    <svg x="0" y="0" viewBox="0 0 360 220">
                        <g>
                            <path fill="#2BC084" d="M0.732,193.75c0,0,29.706,28.572,43.736-4.512c12.976-30.599,37.005-27.589,44.983-7.061
                                c8.09,20.815,22.83,41.034,48.324,27.781c21.875-11.372,46.499,4.066,49.155,5.591c6.242,3.586,28.729,7.626,38.246-14.243
                                s27.202-37.185,46.917-8.488c19.715,28.693,38.687,13.116,46.502,4.832c7.817-8.282,27.386-15.906,41.405,6.294V0H0.48
                                L0.732,193.75z"></path>
                        </g>
                        <text transform="matrix(1 0 0 1 109.7256 116.2686)" fill="#fff" font-size="48.4489">$20</text>
                        <text transform="matrix(0.9566 0 0 1 197.3096 83.9121)" fill="#fff" font-size="19.0829">.99</text>
                        <text transform="matrix(1 0 0 1 233.9629 115.5303)" fill="#fff" font-size="15.4128">/Month</text>
                    </svg>
                    <div class="pricing-content">
                        <h3 class="title">Business</h3>
                        <ul class="pricing-content">
                            <li><b>60GB</b> Disk Space</li>
                            <li><b>60GB</b> Bandwidth</li>
                            <li><b>15</b> Subdomains</li>
                            <li><b>20</b> Domains</li>
                        </ul> <a href="#" class="pricingTable-signup">Subscribe Now</a> </div>
                </div>
            </div>
            <div class="col-xl-4 col-md-4 col-sm-12">
                <div class="pricingTable">
                    <svg x="0" y="0" viewBox="0 0 360 220">
                        <g>
                            <path fill="#28B463" d="M0.732,193.75c0,0,29.706,28.572,43.736-4.512c12.976-30.599,37.005-27.589,44.983-7.061
                                c8.09,20.815,22.83,41.034,48.324,27.781c21.875-11.372,46.499,4.066,49.155,5.591c6.242,3.586,28.729,7.626,38.246-14.243
                                s27.202-37.185,46.917-8.488c19.715,28.693,38.687,13.116,46.502,4.832c7.817-8.282,27.386-15.906,41.405,6.294V0H0.48
                                L0.732,193.75z"></path>
                        </g>
                        <text transform="matrix(1 0 0 1 109.7256 116.2686)" fill="#fff" font-size="48.4489">$10</text>
                        <text transform="matrix(0.9566 0 0 1 197.3096 83.9121)" fill="#fff" font-size="19.0829">.99</text>
                        <text transform="matrix(1 0 0 1 233.9629 115.5303)" fill="#fff" font-size="15.4128">/Month</text>
                    </svg>
                    <div class="pricing-content">
                        <h3 class="title">Professional</h3>
                        <ul class="pricing-content">
                            <li><b>50GB</b> Disk Space</li>
                            <li><b>50GB</b> Bandwidth</li>
                            <li><b>10</b> Subdomains</li>
                            <li><b>15</b> Domains</li>
                        </ul> <a href="#" class="pricingTable-signup">Subscribe Now</a> </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--end pricing area-->
<!--Start Counter area-->
<section id="counter-area" class="counter-area section-padding" data-parallax="scroll" data-image-src="../static/image/all_banner/counterbg.jpg">
    <div class="container">
        <div class="row">
            <div class="section-heading mb-50 text-center">
                <h2 class="section-title">Count Your Process</h2>
                <p class="section-subtitle">Ours is a team of visionary young professionals who simply love WordPress. We code and we develop to make you happy.</p>
            </div>
        </div>
        <div class="counter-wrapper text-center">
            <div class="row">
                <div class="col-xl-3 col-md-3 col-sm-3">
                    <!--Counter box -->
                    <div class="counter-box">
                        <div class="counter-icon">
                            <img src="../static/image/icon/smile.png" alt=""></div>
                        <span class="counter-num">128</span>
                        <p class="counter-name mt-10">happy client</p>
                    </div>
                </div>
                <div class="col-xl-3 col-md-3 col-sm-3">
                    <div class="counter-box">
                        <div class="counter-icon">
                            <img src="../static/image/icon/project-management.png" alt=""></div> <span class="counter-num">150</span>
                        <p class="counter-name mt-10">Total Project </p>
                    </div>
                </div>
                <div class="col-xl-3 col-md-3 col-sm-3">
                    <div class="counter-box">
                        <div class="counter-icon">
                            <img src="../static/image/icon/coffee-cup.png" alt=""></div>
                        <span class="counter-num">10208</span>
                        <p class="counter-name mt-10">Cup of Cofee</p>
                    </div>
                </div>
                <div class="col-xl-3 col-md-3 col-sm-3">
                    <div class="counter-box wow slideInRight">
                        <div class="counter-icon">
                            <img src="../static/image/icon/web.png" alt=""></div>
                        <span class="counter-num">10000</span>
                        <p class="counter-name mt-10">line of Code</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--    end counter area-->
<!-- start blog area   -->
<section id="blog-area" class="blog-area section-padding" data-scroll-index="7">
    <div class="container">
        <div class="row">
            <div class="section-heading mb-50 text-center">
                <h2 class="section-title">Blog</h2>
                <p class="section-subtitle">Ours is a team of visionary young professionals who simply love WordPress. We code and we develop to make you happy.</p>
            </div>
        </div>
        <div class="blog-wrapper">
            <div class="card-deck blog-post-active owl-carousel">
                <!--single card-->
                <div class="card single-blog-post "> <img class="card-img-top" src="../static/image/blog/blog1.png" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Here Write Your Post Title</h5>
                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat nemo, esse quas a, expedita maxime veniam eveniet natus! Exercitationem, suscipit.</p>
                    </div>
                    <div class="card-footer">
                        <small class="text-muted" title="Admin">
                            <i class="fa fa-user-plus" aria-hidden="true"></i> 3 mins ago</small>
                        <a href="#" class="btn-read butn-bg pull-right">
                            <span>See More</span></a> </div>
                </div>
                <!--single card-->
                <div class="card single-blog-post"> <img class="card-img-top" src="../static/image/blog/blog2.png" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Here Write Your Post Title</h5>
                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat nemo, esse quas a, expedita maxime veniam eveniet natus! Exercitationem, suscipit.</p>
                    </div>
                    <div class="card-footer"> <small class="text-muted" title="Lorm"><i class="fa fa-user-plus" aria-hidden="true"></i> 1 hour ago</small> <a href="#" class="btn-read butn-bg pull-right">
                        <span>See More</span></a> </div>
                </div>
                <!--single card-->
                <div class="card single-blog-post"> <img class="card-img-top" src="../static/image/blog/blog3.png" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Here Write Your Post Title</h5>
                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat nemo, esse quas a, expedita maxime veniam eveniet natus! Exercitationem, suscipit.</p>
                    </div>
                    <div class="card-footer"> <small class="text-muted pull-left" title="Admin"><i class="fa fa-user-plus" aria-hidden="true"></i> 5 mins ago</small> <a href="#" class="btn-read butn-bg pull-right">
                        <span>See More</span></a> </div>
                </div>
                <!--single card-->
                <div class="card single-blog-post"> <img class="card-img-top" src="../static/image/blog/blog3.png" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Here Write Your Post Title</h5>
                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat nemo, esse quas a, expedita maxime veniam eveniet natus! Exercitationem, suscipit.</p>
                    </div>
                    <div class="card-footer"> <small class="text-muted pull-left" title="Admin"><i class="fa fa-user-plus" aria-hidden="true"></i> 5 mins ago</small> <a href="#" class="btn-read butn-bg pull-right">
                        <span>See More</span></a> </div>
                </div>

            </div>
        </div>
    </div>
</section>
<!--    End blog start-->
<!--    contact area start-->
<div id="contact-area" class="contact-area section-padding" data-scroll-index="8">
    <div class="container">
        <div class="row">
            <div class="section-heading mb-50 text-center">
                <h2 class="section-title">Contact</h2>
                <p class="section-subtitle">Ours is a team of visionary young professionals who simply love WordPress. We code and we develop to make you happy.</p>
            </div>
        </div>
        <div class="contact-wrapper">
            <div class="row">
                <div class="col-xl-6 col-md-6 col-sm-6">
                    <!-- left col-->
                    <div class="widget-text">
                        <h2 class="contact-section-title">Say Something</h2>
                        <h6 class="contact-section-title text-color">${message}</h6>
                        <form class="contact-from mt-30" action="${pageContext.request.contextPath}/save" method="POST">
                            <div class="row">
                                <div class="col-xl-6 col-md-6 col-sm-6">
                                    <div class="form-group">
                                        <input type="text" name="firstName" class="form-control" id="user-name" placeholder="First Name"> </div>
                                </div>
                                <div class="col-xl-6 col-md-6 col-sm-6">
                                    <div class="form-group">
                                        <input type="text" name="lastName" class="form-control" id="user-" placeholder="Last Name"> </div>
                                </div>
                                <div class="col-xl-12 col-md-12 col-sm-12">
                                    <div class="form-group">
                                        <input type="text" name="email" class="form-control" id="user-email" placeholder="Email"> </div>
                                </div>
                                <div class="col-xl-12 col-md-12 col-sm-12">
                                    <div class="form-group">
                                        <textarea rows="5" cols="100" name="message" class="form-control user-input" placeholder="Write Your Message"></textarea>
                                    </div>
                                </div>
                                <div class="col-xl-12 col-md-12 col-sm-12">
                                    <div class="form-group">
                                        <button class="pull-left btn btn-success" type="submit">Send</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-xl-6 col-md-6 col-sm-6">
                    <!--Right col-->
                    <div class="contact-info mt-40">
                        <h2 class="contact-section-title">Get in Touch</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dicta aspernatur ex tenetur doloremque voluptatum. Illum saepe minus nostrum architecto debitis.</p>
                        <div class="contact-content">
                            <div class="c-list"> <span class="pull-left icon mr-15"><i class="fa fa-envelope-o" aria-hidden="true"></i></span> <span class="info">rdawncse503@gmail.com</span> </div>
                            <div class="c-list mt-30"> <span class="pull-left icon mr-15"><i class="fa fa-phone" aria-hidden="true"></i></span> <span class="info">+0088 17938-1922</span> </div>
                            <div class="c-list mt-30"> <span class="pull-left icon mr-15"><i class="fa fa-map" aria-hidden="true"></i></span> <span class="info">Savar,Dhaka,Bangladesh,1201</span> </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--    end contact area-->
<!--   start footer area-->
<footer id="footer-area" class="footer-area pt-40 pb-40">
    <div class="container">
        <div class="row">
            <div class="col-xl-5 col-md-5 col-sm-5"> <span class="footer-copyright">&copy;All right reserved by infinity-web -2018</span> </div>
            <div class="col-xl-2 col-md-2 col-sm-2">
                <div class="scrolltop text-center" data-scroll-goto="0">
                    <img class="img-responsive" title="scroll-top" src="../static/image/footer/scroll.png" alt=""> </div>
            </div>
            <div class="col-xl-5 col-md-5 col-sm-5">
                <div class="social-site text-right">
                    <ul>
                        <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                        <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                        <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                        <li><a href="#"><i class="fa fa-youtube" aria-hidden="true"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</footer>



<c:import url="footer.jsp"></c:import>