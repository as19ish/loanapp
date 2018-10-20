<!DOCTYPE html>
<html lang="en">

<!-- begin::Head -->
<head>
<meta charset="utf-8" />
<title>Upload Lead</title>
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
<link href="vendors/tether/dist/css/tether.css" rel="stylesheet"
	type="text/css" />
<link
	href="vendors/bootstrap-datepicker/dist/css/bootstrap-datepicker3.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="vendors/bootstrap-datetime-picker/css/bootstrap-datetimepicker.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="vendors/bootstrap-timepicker/css/bootstrap-timepicker.min.css"
	rel="stylesheet" type="text/css" />
<link href="vendors/bootstrap-daterangepicker/daterangepicker.css"
	rel="stylesheet" type="text/css" />
<link
	href="vendors/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.css"
	rel="stylesheet" type="text/css" />
<link
	href="vendors/bootstrap-switch/dist/css/bootstrap3/bootstrap-switch.css"
	rel="stylesheet" type="text/css" />
<link href="vendors/bootstrap-select/dist/css/bootstrap-select.css"
	rel="stylesheet" type="text/css" />
<link href="vendors/select2/dist/css/select2.css" rel="stylesheet"
	type="text/css" />
<link href="vendors/nouislider/distribute/nouislider.css"
	rel="stylesheet" type="text/css" />
<link href="vendors/owl.carousel/dist/assets/owl.carousel.css"
	rel="stylesheet" type="text/css" />
<link href="vendors/owl.carousel/dist/assets/owl.theme.default.css"
	rel="stylesheet" type="text/css" />
<link href="vendors/ion-rangeslider/css/ion.rangeSlider.css"
	rel="stylesheet" type="text/css" />
<link href="vendors/ion-rangeslider/css/ion.rangeSlider.skinFlat.css"
	rel="stylesheet" type="text/css" />
<link href="vendors/dropzone/dist/dropzone.css" rel="stylesheet"
	type="text/css" />
<link href="vendors/summernote/dist/summernote.css" rel="stylesheet"
	type="text/css" />
<link href="vendors/bootstrap-markdown/css/bootstrap-markdown.min.css"
	rel="stylesheet" type="text/css" />
<link href="vendors/animate.css/animate.css" rel="stylesheet"
	type="text/css" />
<link href="vendors/toastr/build/toastr.css" rel="stylesheet"
	type="text/css" />
<link href="vendors/jstree/dist/themes/default/style.css"
	rel="stylesheet" type="text/css" />
<link href="vendors/morris.js/morris.css" rel="stylesheet"
	type="text/css" />
<link href="vendors/chartist/dist/chartist.min.css" rel="stylesheet"
	type="text/css" />
<link href="vendors/sweetalert2/dist/sweetalert2.min.css"
	rel="stylesheet" type="text/css" />
<link href="vendors/socicon/css/socicon.css" rel="stylesheet"
	type="text/css" />
<link href="vendors/vendors/line-awesome/css/line-awesome.css"
	rel="stylesheet" type="text/css" />
<link href="vendors/vendors/flaticon/css/flaticon.css" rel="stylesheet"
	type="text/css" />
<link href="vendors/vendors/metronic/css/styles.css" rel="stylesheet"
	type="text/css" />
<link href="vendors/vendors/fontawesome5/css/all.min.css"
	rel="stylesheet" type="text/css" />

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
								<h3 class="m-subheader__title m-subheader__title--separator">Upload Lead List</h3>
								<ul class="m-subheader__breadcrumbs m-nav m-nav--inline">
									<li class="m-nav__item m-nav__item--home">
										<a href="/" class="m-nav__link m-nav__link--icon">
											<i class="m-nav__link-icon la la-home"></i>
										</a>
									</li>
									<li class="m-nav__separator">-</li>
									<li class="m-nav__item">
										<a href="javascript:;" class="m-nav__link">
											<span class="m-nav__link-text">Leads</span>
										</a>
									</li>
									<li class="m-nav__separator">-</li>
									<li class="m-nav__item">
										<a href="upload-leads" class="m-nav__link">
											<span class="m-nav__link-text">Upload Leads</span>
										</a>
									</li>
								</ul>
							</div>
						</div>
                 </div>
				<!-- END: Subheader -->
              					<c:if test="${leadsAdded eq 'true' }">
						<div class="row text-center">
							<div class="col-sm-12 text-success">
								${addedLeads} leads addes successfully
							</div>
							
							<c:forEach items="${rejectedLeads}" var="rLead">
								<div class="col-sm-12 text-danger">
									Row number [${rLead.rowNumber}] not addec - ${rLead.reason}
								</div>
							</c:forEach>
						</div>
					</c:if>
					
					
					<!-- END: Subheader -->
					<div class="m-content">
						<div class="row">
							<div class="col-xl-12 col-lg-12">
								<div class="m-portlet m-portlet--full-height   m-portlet--unair">
									<div class="m-portlet__body">
										<form method="POST" action="<c:url value='/upload-leads' />" enctype="multipart/form-data">
											
											<p> Choose Excel Sheet </p>
										    <div class="custom-file mb-3">
										      <input type="file" class="custom-file-input" id="customFile" name="file">
										      <label class="custom-file-label" for="customFile">Choose file</label>
										    </div>
										    <div class="m-portlet__foot m-portlet__foot--fit">
											<div class="m-form__actions">
												<div class="row">
													<div class="col-7">
														<button type="submit"
															class="btn btn-accent m-btn m-btn--air m-btn--custom">Upload</button>
														
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
	</div>

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
	<script src="vendors/jquery.repeater/src/lib.js" type="text/javascript"></script>
	<script src="vendors/jquery.repeater/src/jquery.input.js"
		type="text/javascript"></script>
	<script src="vendors/jquery.repeater/src/repeater.js"
		type="text/javascript"></script>
	<script src="vendors/jquery-form/dist/jquery.form.min.js"
		type="text/javascript"></script>
	<script src="vendors/block-ui/jquery.blockUI.js" type="text/javascript"></script>
	<script
		src="vendors/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"
		type="text/javascript"></script>
	<script
		src="vendors/js/framework/components/plugins/forms/bootstrap-datepicker.init.js"
		type="text/javascript"></script>
	<script
		src="vendors/bootstrap-datetime-picker/js/bootstrap-datetimepicker.min.js"
		type="text/javascript"></script>
	<script
		src="vendors/bootstrap-timepicker/js/bootstrap-timepicker.min.js"
		type="text/javascript"></script>
	<script
		src="vendors/js/framework/components/plugins/forms/bootstrap-timepicker.init.js"
		type="text/javascript"></script>
	<script src="vendors/bootstrap-daterangepicker/daterangepicker.js"
		type="text/javascript"></script>
	<script
		src="vendors/js/framework/components/plugins/forms/bootstrap-daterangepicker.init.js"
		type="text/javascript"></script>
	<script
		src="vendors/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.js"
		type="text/javascript"></script>
	<script src="vendors/bootstrap-maxlength/src/bootstrap-maxlength.js"
		type="text/javascript"></script>
	<script src="vendors/bootstrap-switch/dist/js/bootstrap-switch.js"
		type="text/javascript"></script>
	<script
		src="vendors/js/framework/components/plugins/forms/bootstrap-switch.init.js"
		type="text/javascript"></script>
	<script
		src="vendors/vendors/bootstrap-multiselectsplitter/bootstrap-multiselectsplitter.min.js"
		type="text/javascript"></script>
	<script src="vendors/bootstrap-select/dist/js/bootstrap-select.js"
		type="text/javascript"></script>
	<script src="vendors/select2/dist/js/select2.full.js"
		type="text/javascript"></script>
	<script src="vendors/typeahead.js/dist/typeahead.bundle.js"
		type="text/javascript"></script>
	<script src="vendors/handlebars/dist/handlebars.js"
		type="text/javascript"></script>
	<script src="vendors/inputmask/dist/jquery.inputmask.bundle.js"
		type="text/javascript"></script>
	<script
		src="vendors/inputmask/dist/inputmask/inputmask.date.extensions.js"
		type="text/javascript"></script>
	<script
		src="vendors/inputmask/dist/inputmask/inputmask.numeric.extensions.js"
		type="text/javascript"></script>
	<script
		src="vendors/inputmask/dist/inputmask/inputmask.phone.extensions.js"
		type="text/javascript"></script>
	<script src="vendors/nouislider/distribute/nouislider.js"
		type="text/javascript"></script>
	<script src="vendors/owl.carousel/dist/owl.carousel.js"
		type="text/javascript"></script>
	<script src="vendors/autosize/dist/autosize.js" type="text/javascript"></script>
	<script src="vendors/clipboard/dist/clipboard.min.js"
		type="text/javascript"></script>
	<script src="vendors/ion-rangeslider/js/ion.rangeSlider.js"
		type="text/javascript"></script>
	<script src="vendors/dropzone/dist/dropzone.js" type="text/javascript"></script>
	<script src="vendors/summernote/dist/summernote.js"
		type="text/javascript"></script>
	<script src="vendors/markdown/lib/markdown.js" type="text/javascript"></script>
	<script src="vendors/bootstrap-markdown/js/bootstrap-markdown.js"
		type="text/javascript"></script>
	<script
		src="vendors/js/framework/components/plugins/forms/bootstrap-markdown.init.js"
		type="text/javascript"></script>
	<script src="vendors/jquery-validation/dist/jquery.validate.js"
		type="text/javascript"></script>
	<script src="vendors/jquery-validation/dist/additional-methods.js"
		type="text/javascript"></script>
	<script
		src="vendors/js/framework/components/plugins/forms/jquery-validation.init.js"
		type="text/javascript"></script>
	<script src="vendors/bootstrap-notify/bootstrap-notify.min.js"
		type="text/javascript"></script>
	<script
		src="vendors/js/framework/components/plugins/base/bootstrap-notify.init.js"
		type="text/javascript"></script>
	<script src="vendors/toastr/build/toastr.min.js" type="text/javascript"></script>
	<script src="vendors/jstree/dist/jstree.js" type="text/javascript"></script>
	<script src="vendors/raphael/raphael.js" type="text/javascript"></script>
	<script src="vendors/morris.js/morris.js" type="text/javascript"></script>
	<script src="vendors/chartist/dist/chartist.js" type="text/javascript"></script>
	<script src="vendors/chart.js/dist/Chart.bundle.js"
		type="text/javascript"></script>
	<script
		src="vendors/js/framework/components/plugins/charts/chart.init.js"
		type="text/javascript"></script>
	<script
		src="vendors/vendors/bootstrap-session-timeout/dist/bootstrap-session-timeout.min.js"
		type="text/javascript"></script>
	<script src="vendors/vendors/jquery-idletimer/idle-timer.min.js"
		type="text/javascript"></script>
	<script src="vendors/waypoints/lib/jquery.waypoints.js"
		type="text/javascript"></script>
	<script src="vendors/counterup/jquery.counterup.js"
		type="text/javascript"></script>
	<script src="vendors/es6-promise-polyfill/promise.min.js"
		type="text/javascript"></script>
	<script src="vendors/sweetalert2/dist/sweetalert2.min.js"
		type="text/javascript"></script>
	<script
		src="vendors/js/framework/components/plugins/base/sweetalert2.init.js"
		type="text/javascript"></script>

	<!--end:: Global Optional Vendors -->

	<!--begin::Global Theme Bundle -->
	<script src="assets/demo/base/scripts.bundle.js" type="text/javascript"></script>

	<!--end::Global Theme Bundle -->
</body>

<!-- end::Body -->
</html>