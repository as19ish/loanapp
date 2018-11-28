<!DOCTYPE html>
<html lang="en">

<!-- begin::Head -->
<head>
<meta charset="utf-8" />
<title>Upload Company</title>
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
<style>
.upload-input{
    border: 1px solid #c4c5d6;
    padding: 1%;
}
em{
   color:red;
   margin-left:4%;
}
.center{
   text-align: center;
}
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
								<h3 class="m-subheader__title m-subheader__title--separator">Upload Company Sheet</h3>
								<ul class="m-subheader__breadcrumbs m-nav m-nav--inline">
									<li class="m-nav__item m-nav__item--home">
										<a href="/" class="m-nav__link m-nav__link--icon">
											<i class="m-nav__link-icon la la-home"></i>
										</a>
									</li>
									<li class="m-nav__separator">-</li>
									<li class="m-nav__item">
										<a href="javascript:;" class="m-nav__link">
											<span class="m-nav__link-text">Company</span>
										</a>
									</li>
									<li class="m-nav__separator">-</li>
									<li class="m-nav__item">
										<a href="upload-company" class="m-nav__link">
											<span class="m-nav__link-text">Upload Company</span>
										</a>
									</li>
								</ul>
							</div>
						</div>
                 </div>
				<!-- END: Subheader -->
              					<c:if test="${companyAdded eq 'true' }">
              					<div class="modal fade in" id="uploadResults"  tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
								  <div class="modal-dialog modal-lg " role="document">
								    <div class="modal-content">
								      <div class="modal-header">
								        <h5 class="modal-title" id="exampleModalLongTitle">Upload Results</h5>
								        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
								          <span aria-hidden="true">&times;</span>
								        </button>
								      </div>
								      <div class="modal-body">
								         <c:if test="${sheetExist eq 'true' }">
								         <div class="alert alert-danger">
                                             <span>Errors !! Sheet Already Uploaded </span>
                                             <br>
                                             <span>Try Again With Different Sheet</span>
                                              
                                         </div>
								         </c:if>
											
										 <c:if test="${sheetExist eq 'false' }">
											<div class="alert alert-success">
	                                           ${addedCompany} leads added successfully
	                                         </div>
	                                         <div class="alert alert-danger">
	                                            <span>Errors found in ${rejectedCompanysize} leads</span>
	                                            <br>
	                                          </div>   
	                                     <table id="errors" class="table table-striped table-bordered">
										    <thead>
										      <tr>
										        <th style="color:red;" class="center">Row No</th>
										        <th style="color:red;" class="center" >Reason</th>
										       
										      </tr>
										    </thead>
										    <tbody>
										    <c:forEach items="${rejectedCompany}" var="rLead">
										      <tr>
										        <td class="center">${rLead.rowNumber}</td>
										        <td class="center">${rLead.reason}</td>
										       
										      </tr>
										    </c:forEach> 
										    </tbody>
										  </table>
	                                        
										</c:if>					
								      </div>
								      
								    </div>
								  </div>
								</div>
						
					</c:if>
					
					
					<!-- END: Subheader -->
					<div class="m-content">
						<div class="row">
							<div class="col-xl-12 col-lg-12">
								<div class="m-portlet m-portlet--full-height   m-portlet--unair">
									<div class="m-portlet__body">
										<form method="POST" action="<c:url value='/upload-company' />" enctype="multipart/form-data" id="upload-form">
											
											<p> Choose Excel Sheet </p>
											<div class="row">
				                                 <div class="col-md-12">
					                                     <div class="form-group">
					                                         <label class="control-label col-md-6"></label>
					                                         <div class="col-md-12">
					                                             <input type="file" class="upload-input" id="uploadFile" name="file">
					                                         </div>
					                                     </div>
					                                 </div>
					                           </div>
										    
										    <div class="m-portlet__foot m-portlet__foot--fit" style="border-top:none;margin-left:1%">
											<div class="m-form__actions">
												<div class="row">
													<div class="col-7">
														<button type="button"
															class="btn btn-accent m-btn m-btn--air m-btn--custom" id="b-submit" style="margin-left:1%">Upload</button>
														
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
	<script src="vendors/jquery-validation/dist/jquery.validate.js" type="text/javascript"></script>
	<script src="vendors/jquery-validation/dist/additional-methods.js" type="text/javascript"></script>
	<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js" type="text/javascript"></script>
	<script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js" type="text/javascript"></script>
	
		
	<script>
	<c:if test="${companyAdded eq 'true' }">
	 $(window).on('load',function(){
	        $('#uploadResults').modal({
	        	backdrop: 'static',
			    keyboard: false
	        });
	    });
	 </c:if>
	 jQuery.validator.setDefaults({
		  debug: true,
		  success: "valid"
		});
	var validator =  $( "#upload-form" ).validate({
		  rules: {
		    file: {
		      required: true,
		      extension: "xlsx"
		    }
	     },
		    messages:{
		    	file:{
		    		required: 'Please choose data sheet',
		    		extension: 'Only Excel Sheet Allowed'
		    	}
		    },
		  
		  errorElement: "em",
    	  highlight: function(element, errorClass, validClass) {
			    
				 $(element).css({"border": "1px solid rgba(232, 5, 5, 0.4)"})
			 },
    	 unhighlight:function(element, errorClass, validClass) {
					 $(element).css({"border": "1px solid #e2e2e2"})
				 },
		});
	 $('#b-submit').click(function(){
		 if(!validator.form()){
			 return false;
		 }
		 $('#b-submit').html('Processing<i class="fa fa-spinner fa-spin" ></i>');
		 $('#upload-form')[0].submit();
		 
	 });
	 $('#errors').DataTable({
	    	searching: false, 
	    	
	    });
	 $('#errors_length').hide();
	</script>
	

	<!--end::Global Theme Bundle -->
</body>

<!-- end::Body -->
</html>