<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<!-- begin::Head -->
<head>
<meta charset="utf-8" />
<title>Add New Employee</title>
<meta name="description" content="User profile view and edit">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no">

<!--begin::Web font -->
<script
	src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.16/webfont.js"></script>
<script>
	WebFont.load({
		google : {
			"families" : [ "Poppins:300,400,500,600,700",
					"Roboto:300,400,500,600,700" ]
		},
		active : function() {
			sessionStorage.fonts = true;
		}
	});
</script>

<!--end::Web font -->

<!--begin:: Global Mandatory Vendors -->
<link href="vendors/perfect-scrollbar/css/perfect-scrollbar.css"
	rel="stylesheet" type="text/css" />

<!--end:: Global Mandatory Vendors -->

<!--begin:: Global Optional Vendors -->
<link href="vendors/vendors/flaticon/css/flaticon.css" rel="stylesheet"
	type="text/css" />


<!--end:: Global Optional Vendors -->

<!--begin::Global Theme Styles -->
<link href="assets/demo/base/style.bundle.css" rel="stylesheet"
	type="text/css" />

<!--RTL version:<link href="assets/demo/base/style.bundle.rtl.css" rel="stylesheet" type="text/css" />-->

<!--end::Global Theme Styles -->
<link rel="shortcut icon" href="assets/demo/media/img/logo/favicon.ico" />
</head>

<!-- end::Head -->

<!-- begin::Body -->
<body
	class="m-page--fluid m--skin- m-content--skin-light2 m-header--fixed m-header--fixed-mobile m-aside-left--enabled m-aside-left--skin-dark m-aside-left--offcanvas m-footer--push m-aside--offcanvas-default">

	<!-- begin:: Page -->
	<div class="m-grid m-grid--hor m-grid--root m-page">

		<!-- BEGIN: Header -->
		     <%@ include file="/WEB-INF/layouts/header.jsp" %>
		<!-- END: Header -->

		<!-- begin::Body -->
		<div
			class="m-grid__item m-grid__item--fluid m-grid m-grid--ver-desktop m-grid--desktop m-body">

			<!-- BEGIN: Left Aside -->
			       <%@ include file="/WEB-INF/layouts/aside.jsp" %>
				<!-- END: Aside Menu -->
			</div>

			<!-- END: Left Aside -->
			<div class="m-grid__item m-grid__item--fluid m-wrapper">

				<!-- BEGIN: Subheader -->
				    <div class="m-subheader ">
						<div class="d-flex align-items-center">
							<div class="mr-auto">
								<h3 class="m-subheader__title m-subheader__title--separator">Add New Employee</h3>
								<ul class="m-subheader__breadcrumbs m-nav m-nav--inline">
									<li class="m-nav__item m-nav__item--home">
										<a href="/" class="m-nav__link m-nav__link--icon">
											<i class="m-nav__link-icon la la-home"></i>
										</a>
									</li>
									<li class="m-nav__separator">-</li>
									<li class="m-nav__item">
										<a href="javascript:;" class="m-nav__link">
											<span class="m-nav__link-text">Employee Portal</span>
										</a>
									</li>
									<li class="m-nav__separator">-</li>
									<li class="m-nav__item">
										<a href="addemployee" class="m-nav__link">
											<span class="m-nav__link-text">Add New Employee</span>
										</a>
									</li>
								</ul>
							</div>
						</div>
</div>
				<!-- END: Subheader -->
				<div class="m-content">
					<div class="row">
						<div class="col-xl-12 col-lg-12">
							<div class="m-portlet m-portlet--full-height   m-portlet--unair">
								<div class="m-portlet__body">
									
									<form action="signup" method="post">
									<c:if test="${message != null}">
									    <div class="alert alert-success">
                                            <strong>Success!</strong>
                                            ${message}
                                          </div>
                                     </c:if>    
                                     <c:if test="${error != null}">
									    <div class="alert alert-danger">
                                            <strong>Error!</strong>
                                            ${error}
                                            </div>
                                     </c:if>   
										
										<div class="form-group">
											<label>Name<sup>*</sup></label> <input type="text"
												class="form-control" name="name" required>
										</div>
										<div class="form-group">
											<label>Email<sup>*</sup></label> <input type="text"
												class="form-control" name="email" required>
										</div>
										<div class="form-group">
											<label>Password<sup>*</sup></label> <input type="password"
												class="form-control" name="password" required>
										</div>
										<div class="form-group">
											<label>Mobile<sup>*</sup></label> <input type="number"
												class="form-control" name="mobile" required>
										</div>

										<div class="m-portlet__foot m-portlet__foot--fit">
											<div class="m-form__actions">
												<div class="row">
													<div class="col-7">
														<button type="submit"
															class="btn btn-accent m-btn m-btn--air m-btn--custom">Add</button>
														&nbsp;&nbsp;
														<button type="reset"
															class="btn btn-secondary m-btn m-btn--air m-btn--custom">Clear</button>
													</div>
												</div>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- end:: Body -->

		<!-- begin::Footer -->
		   <%@ include file="/WEB-INF/layouts/footer.jsp" %>
		<!-- end::Footer -->
	

	<!-- end:: Page -->

	

	<!-- begin::Scroll Top -->
	<div id="m_scroll_top" class="m-scroll-top">
		<i class="la la-arrow-up"></i>
	</div>

	<!-- end::Scroll Top -->

	

	<!--begin:: Global Mandatory Vendors -->
	<script src="vendors/jquery/dist/jquery.js" type="text/javascript"></script>
	<script src="vendors/popper.js/dist/umd/popper.js"
		type="text/javascript"></script>
	<script src="vendors/bootstrap/dist/js/bootstrap.min.js"
		type="text/javascript"></script>
	<script src="vendors/js-cookie/src/js.cookie.js" type="text/javascript"></script>
	<script src="vendors/moment/min/moment.min.js" type="text/javascript"></script>
	<script src="vendors/tooltip.js/dist/umd/tooltip.min.js"
		type="text/javascript"></script>
	<script src="vendors/perfect-scrollbar/dist/perfect-scrollbar.js"
		type="text/javascript"></script>
	<script src="vendors/wnumb/wNumb.js" type="text/javascript"></script>

	<!--end:: Global Mandatory Vendors -->

	<!--begin:: Global Optional Vendors -->
	

	<!--end:: Global Optional Vendors -->

	<!--begin::Global Theme Bundle -->
	<script src="assets/demo/base/scripts.bundle.js" type="text/javascript"></script>

	<!--end::Global Theme Bundle -->
</body>

<!-- end::Body -->
</html>