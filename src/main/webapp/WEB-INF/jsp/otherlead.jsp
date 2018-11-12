<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html lang="en" xmlns:th="http://www.thymeleaf.org" >

	<!-- begin::Head -->
	<head>
		<meta charset="utf-8" />
		<title>PixelTechlab | Other Leads</title>
		<meta name="description" content="Latest updates and statistic charts">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no">

		<!--begin::Web font -->
		<script src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.16/webfont.js"></script>
		<script>
			WebFont.load({
            google: {"families":["Poppins:300,400,500,600,700","Roboto:300,400,500,600,700"]},
            active: function() {
                sessionStorage.fonts = true;
            }
          });
        </script>

		<!--end::Web font -->

		<!--begin:: Global Mandatory Vendors -->
		<link href="vendors/perfect-scrollbar/css/perfect-scrollbar.css" rel="stylesheet" type="text/css" />
		

		<!--end:: Global Mandatory Vendors -->

		<!--begin:: Global Optional Vendors -->
        <link href="vendors/vendors/line-awesome/css/line-awesome.css" rel="stylesheet" type="text/css" />
		<link href="vendors/vendors/flaticon/css/flaticon.css" rel="stylesheet" type="text/css" />
		<link href="vendors/vendors/metronic/css/styles.css" rel="stylesheet" type="text/css" />
		<link href="vendors/vendors/fontawesome5/css/all.min.css" rel="stylesheet" type="text/css" />
        <link href="vendors/toastr/build/toastr.css" rel="stylesheet" type="text/css" />
		<!--end:: Global Optional Vendors -->

		<!--begin::Global Theme Styles -->
		<link href="assets/demo/base/style.bundle.min.css" rel="stylesheet" type="text/css" />

		<!--RTL version:<link href="assets/demo/base/style.bundle.rtl.css" rel="stylesheet" type="text/css" />-->

		<!--end::Global Theme Styles -->

		<!--begin::Page Vendors Styles -->
		
		<!--RTL version:<link href="assets/vendors/custom/fullcalendar/fullcalendar.bundle.rtl.css" rel="stylesheet" type="text/css" />-->

		<!--end::Page Vendors Styles -->
		<link rel="shortcut icon" href="assets/demo/media/img/logo/favicon.ico" />
		<link href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css" />
		<link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css" rel="stylesheet" type="text/css" />
	
	</head>

	<!-- end::Head -->

	<!-- begin::Body -->
<body class="m-page--fluid m--skin- m-content--skin-light2 m-header--fixed m-header--fixed-mobile m-aside-left--enabled m-aside-left--skin-dark m-aside-left--offcanvas m-footer--push m-aside--offcanvas-default">

		<!-- begin:: Page -->
		<div class="m-grid m-grid--hor m-grid--root m-page">

			<!-- BEGIN: Header -->
			
			    <%@ include file="/WEB-INF/layouts/header.jsp" %>

			<!-- END: Header -->

			<!-- begin::Body -->
			<div class="m-grid__item m-grid__item--fluid m-grid m-grid--ver-desktop m-grid--desktop m-body">

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
								<h3 class="m-subheader__title m-subheader__title--separator">Other Leads</h3>
								<ul class="m-subheader__breadcrumbs m-nav m-nav--inline">
									<li class="m-nav__item m-nav__item--home">
										<a href="/" class="m-nav__link m-nav__link--icon">
											<i class="m-nav__link-icon la la-home"></i>
										</a>
									</li>
									<li class="m-nav__separator">-</li>
									<li class="m-nav__item">
										<a href="jacascript:;" class="m-nav__link">
											<span class="m-nav__link-text">Leads</span>
										</a>
									</li>
									<li class="m-nav__separator">-</li>
									<li class="m-nav__item">
										<a href="/" class="m-nav__link">
											<span class="m-nav__link-text">Other Leads</span>
										</a>
									</li>
								</ul>
							</div>
						</div>
</div>

					<!-- END: Subheader -->
					<div class="m-content">
						<!--Begin::Section-->
						<div class="row">
							<div class="col-xl-12">
								<div class="m-portlet m-portlet--mobile  m-portlet--unair">
									
									<div class="m-portlet__body">

										<!--begin: Datatable -->
									           <table id="otherLeadTable" class="table table-striped">
										            <thead>
										                <tr>
										                    <th>leadID</th>
										                    <th>Name</th>
										                    <th>Mobile</th>
										                    <th>creationDate</th>
										                    <th>lastUpdatedDate</th>
										                    <th>status</th>
										                    <c:if test="${AppUtil.hasRole('admin')}" >
										                    <th>Employee Name</th>
										                    </c:if>
										                    
										                </tr>
										            </thead>
								    	        </table>
										<!--end: Datatable -->
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
		<script src="vendors/popper.js/dist/umd/popper.js" type="text/javascript"></script>
		<script src="vendors/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
		<script src="vendors/js-cookie/src/js.cookie.js" type="text/javascript"></script>
		<script src="vendors/moment/min/moment.min.js" type="text/javascript"></script>
		<script src="vendors/tooltip.js/dist/umd/tooltip.min.js" type="text/javascript"></script>
		<script src="vendors/perfect-scrollbar/dist/perfect-scrollbar.js" type="text/javascript"></script>
		<script src="vendors/wnumb/wNumb.js" type="text/javascript"></script>

		<!--end:: Global Mandatory Vendors -->

		<!--begin:: Global Optional Vendors -->
		
		<!--end:: Global Optional Vendors -->

		<!--begin::Global Theme Bundle -->
		<script src="assets/demo/base/scripts.bundle.js" type="text/javascript"></script>
		
		<!--end::Global Theme Bundle -->

		<!--begin::Page Vendors -->
		

		<!--end::Page Vendors -->

		<!--begin::Page Scripts -->
		
		<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js" type="text/javascript"></script>
		<script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js" type="text/javascript"></script>
	
		


		<!--end::Page Scripts -->
		<script type="text/javascript">
		$('#otherLeadTable').DataTable( {
	        "processing": true,
	        "serverSide": true,
	        "pageLength": 10,
	        "ajax": {
	            "url": "/leads/fetch/other",
	            "data": function ( data ) {
				 
	         }},
	        "columns": [
	                    { "data": "lead_id", "name" : "LeadID", "title" : "LeadID"  },
	                    { "data": "name", "name" : "Name" , "title" : "Name"},
	                    { "data": "mobile", "name" : "Mobile" , "title" : "Mobile"},
	                    { "data": "creation_date", "name" : "CreationDate" , "title" : "CreationDate"},
	                    { "data": "last_updated_date", "name" : "LastUpdatedDate" , "title" : "LastUpdatedDate"},
	                    { "data": "status", "name" : "Status" , "title" : "Status"},
	                    <c:if test="${AppUtil.hasRole('admin')}" >
	                    { "data": "employee_name", "name" : "employee_name" , "title" : "Employee Name"},
	                    </c:if>
	                    
	                   
	                ]    
		});

		
		
		
		 
		</script>
	</body>

	<!-- end::Body -->
</html>