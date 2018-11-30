<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<!-- begin::Head -->
<head>
<meta charset="utf-8" />
<title>500</title>
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
<link href="<c:url value="/vendors/perfect-scrollbar/css/perfect-scrollbar.css" />"
	rel="stylesheet" type="text/css" />

<!--end:: Global Mandatory Vendors -->

<!--begin:: Global Optional Vendors -->

<link href="<c:url value="/vendors/vendors/flaticon/css/flaticon.css" />" rel="stylesheet"
	type="text/css" />


<!--end:: Global Optional Vendors -->

<!--begin::Global Theme Styles -->
<link href="<c:url value="/assets/demo/base/style.bundle.css" />" rel="stylesheet"
	type="text/css" />

<!--RTL version:<link href="assets/demo/base/style.bundle.rtl.css" rel="stylesheet" type="text/css" />-->

<!--end::Global Theme Styles -->
<link rel="shortcut icon" href="<c:url value="/assets/demo/media/img/logo/favicon.ico" />" />
<style>
   .page-404 .number,.page-500 .number{letter-spacing:-10px;line-height:128px;font-size:128px;font-weight:300}.page-404 .details,.page-500 .details{margin-left:40px;display:inline-block}.page-404{text-align:center}.page-404 .number{position:relative;top:35px;display:inline-block;margin-top:0;margin-bottom:10px;color:#7bbbd6;text-align:right}.page-404-full-page .page-404,.page-500-full-page .page-500{margin-top:100px}.page-404 .details{padding-top:0;text-align:left}.page-500{text-align:center}.page-500 .number{display:inline-block;color:#ec8c8c;text-align:right}.page-500 .details{text-align:left}.page-404-full-page{overflow-x:hidden;padding:20px;margin-bottom:20px;background-color:#fafafa!important}.page-404-full-page .details input{background-color:#fff}.page-500-full-page{overflow-x:hidden;padding:20px;background-color:#fafafa!important}.page-500-full-page .details input{background-color:#fff}.page-404-3{background:#000!important}.page-404-3 .page-inner img{right:0;bottom:0;z-index:-1;position:absolute}.page-404-3 .error-404{color:#fff;text-align:left;padding:70px 20px 0}.page-404-3 h1{color:#fff;font-size:130px;line-height:160px}.page-404-3 h2{color:#fff;font-size:30px;margin-bottom:30px}.page-404-3 p{color:#fff;font-size:16px}@media (max-width:480px){.page-404 .details,.page-404 .number,.page-500 .details,.page-500 .number{text-align:center;margin-left:0}.page-404-full-page .page-404{margin-top:30px}.page-404-3 .error-404{text-align:left;padding-top:10px}.page-404-3 .page-inner img{right:0;bottom:0;z-index:-1;position:fixed}}
</style>
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
			class="m-grid__item m-grid__item--fluid m-grid m-grid--ver-desktop m-grid--desktop m-body" style="background:#fff;">

			<!-- BEGIN: Left Aside -->
			       <%@ include file="/WEB-INF/layouts/aside.jsp" %>
				<!-- END: Aside Menu -->
			</div>

			<!-- END: Left Aside -->
			<div class="m-grid__item m-grid__item--fluid m-wrapper">

				<!-- BEGIN: Subheader -->
				   <div class="m-subheader ">

                  </div>
				<!-- END: Subheader -->
				<div class="m-content">
					<div class="row">
                            <div class="col-md-12 page-404">
                                <div class="number font-green"> 500 </div>
                                <div class="details">
                                    <h3 style="font-size:24px;font-weight:100">Oops! Something went wrong.</h3>
                                    <p style="font-size:15px;"> We are fixing it! Please come back in a while. 
                                        <br>
                                        <a href="/"> Return home </a> </p>
                                   
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
	<script src="<c:url value="/vendors/jquery/dist/jquery.js" />" type="text/javascript"></script>
	<script src="<c:url value="/vendors/popper.js/dist/umd/popper.js" />"
		type="text/javascript"></script>
	<script src="<c:url value="/vendors/bootstrap/dist/js/bootstrap.min.js" />"
		type="text/javascript"></script>
	<script src="<c:url value="/vendors/js-cookie/src/js.cookie.js" />" type="text/javascript"></script>
	<script src="<c:url value="/vendors/moment/min/moment.min.js" />" type="text/javascript"></script>
	<script src="<c:url value="/vendors/tooltip.js/dist/umd/tooltip.min.js" />"
		type="text/javascript"></script>
	<script src="<c:url value="/vendors/perfect-scrollbar/dist/perfect-scrollbar.js" />"
		type="text/javascript"></script>
	<script src="<c:url value="/vendors/wnumb/wNumb.js" />" type="text/javascript"></script>

	<!--end:: Global Mandatory Vendors -->

	<!--begin:: Global Optional Vendors -->


	<!--end:: Global Optional Vendors -->

	<!--begin::Global Theme Bundle -->
	<script src="<c:url value="/assets/demo/base/scripts.bundle.js" />" type="text/javascript"></script>

	<!--end::Global Theme Bundle -->
</body>

<!-- end::Body -->
</html>