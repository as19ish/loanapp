<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>


<html lang="en">

	<!-- begin::Head -->
	<head>
		<meta charset="utf-8" />
		<title> New Lead</title>
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
		<link href="vendors/tether/dist/css/tether.css" rel="stylesheet" type="text/css" />
		<link href="vendors/bootstrap-datepicker/dist/css/bootstrap-datepicker3.min.css" rel="stylesheet" type="text/css" />
		<link href="vendors/bootstrap-datetime-picker/css/bootstrap-datetimepicker.min.css" rel="stylesheet" type="text/css" />
		<link href="vendors/bootstrap-timepicker/css/bootstrap-timepicker.min.css" rel="stylesheet" type="text/css" />
		<link href="vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet" type="text/css" />
		<link href="vendors/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.css" rel="stylesheet" type="text/css" />
		<link href="vendors/bootstrap-switch/dist/css/bootstrap3/bootstrap-switch.css" rel="stylesheet" type="text/css" />
		<link href="vendors/bootstrap-select/dist/css/bootstrap-select.css" rel="stylesheet" type="text/css" />
		<link href="vendors/select2/dist/css/select2.css" rel="stylesheet" type="text/css" />
		<link href="vendors/nouislider/distribute/nouislider.css" rel="stylesheet" type="text/css" />
		<link href="vendors/owl.carousel/dist/assets/owl.carousel.css" rel="stylesheet" type="text/css" />
		<link href="vendors/owl.carousel/dist/assets/owl.theme.default.css" rel="stylesheet" type="text/css" />
		<link href="vendors/ion-rangeslider/css/ion.rangeSlider.css" rel="stylesheet" type="text/css" />
		<link href="vendors/ion-rangeslider/css/ion.rangeSlider.skinFlat.css" rel="stylesheet" type="text/css" />
		<link href="vendors/dropzone/dist/dropzone.css" rel="stylesheet" type="text/css" />
		<link href="vendors/summernote/dist/summernote.css" rel="stylesheet" type="text/css" />
		<link href="vendors/bootstrap-markdown/css/bootstrap-markdown.min.css" rel="stylesheet" type="text/css" />
		<link href="vendors/animate.css/animate.css" rel="stylesheet" type="text/css" />
		<link href="vendors/toastr/build/toastr.css" rel="stylesheet" type="text/css" />
		<link href="vendors/jstree/dist/themes/default/style.css" rel="stylesheet" type="text/css" />
		<link href="vendors/morris.js/morris.css" rel="stylesheet" type="text/css" />
		<link href="vendors/chartist/dist/chartist.min.css" rel="stylesheet" type="text/css" />
		<link href="vendors/sweetalert2/dist/sweetalert2.min.css" rel="stylesheet" type="text/css" />
		<link href="vendors/socicon/css/socicon.css" rel="stylesheet" type="text/css" />
		<link href="vendors/vendors/line-awesome/css/line-awesome.css" rel="stylesheet" type="text/css" />
		<link href="vendors/vendors/flaticon/css/flaticon.css" rel="stylesheet" type="text/css" />
		<link href="vendors/vendors/metronic/css/styles.css" rel="stylesheet" type="text/css" />
		<link href="vendors/vendors/fontawesome5/css/all.min.css" rel="stylesheet" type="text/css" />

		<!--end:: Global Optional Vendors -->

		<!--begin::Global Theme Styles -->
		<link href="assets/demo/base/style.bundle.css" rel="stylesheet" type="text/css" />

		<!--RTL version:<link href="assets/demo/base/style.bundle.rtl.css" rel="stylesheet" type="text/css" />-->

		<!--end::Global Theme Styles -->

		<!--begin::Page Vendors Styles -->
		<link href="assets/vendors/custom/fullcalendar/fullcalendar.bundle.css" rel="stylesheet" type="text/css" />

		<!--RTL version:<link href="assets/vendors/custom/fullcalendar/fullcalendar.bundle.rtl.css" rel="stylesheet" type="text/css" />-->

		<!--end::Page Vendors Styles -->
		<link rel="shortcut icon" href="assets/demo/media/img/logo/favicon.ico" />
		<link href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css" />
		<link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		<style>
		  #ui-id-1{
		    z-index:9999;
		  }
		  em{
	         color: rgba(232, 5, 5, 0.83);	  
		  }
		</style>
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
								<h3 class="m-subheader__title m-subheader__title--separator">New Lead</h3>
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
										<a href="emplist" class="m-nav__link">
											<span class="m-nav__link-text">Fetch Lead</span>
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
								<!-- 	<div class="m-portlet__head">
										<div class="m-portlet__head-caption">
											<div class="m-portlet__head-title">
												<h3 class="m-portlet__head-text">
													Employee List
												</h3>
											</div>
										</div>
										
									</div>
								 -->	
									<div class="m-portlet__body">

										<!--begin: Datatable -->
										<table  class="table table-striped table-bordered" style="width:100%">
									        <thead>
									            <tr>
									                
									                <th>Name</th>
									                <th>Mobile</th>
									                <th>Status</th>
									                
									            </tr>
									        </thead>
									        <tbody>
									           
								                    <tr >
								                       
								                        <td>${lead.name}</td>
								                        <td>${lead.mobile}</td>
								                        
								                        <td><select class="selectpicker" data-mobile="false" id="changeStatus" >
															  <option value="${lead.status}" >${lead.status}</option>
															  
															 <c:choose>
															    <c:when test="${lead.status=='new'}">
															      <option >Interested</option>
															      <option>Not Interested</option>
															    </c:when>    
															</c:choose>
															  
															</select>
								                        </td>
								                        
								                    </tr>
								               
									            
									        </tbody>
									        
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

<div class="modal fade" id="myModal">
    <div class="modal-dialog modal-lg modal-dialog-centered" style="max-width:85% !important">
      <div class="modal-content">
      
       
        
        <!-- Modal body -->
        <div class="modal-body" style="padding-left:12%;padding-top:7%;">
            <div class="form-body">
                             <h3 class="form-section">Personal Info</h3>
                             <form id="pinfo">
                             <div class="row">
                                 <div class="col-md-6">
                                     <div class="form-group">
                                         <label class="control-label col-md-6">Full Name</label>
                                         <div class="col-md-9">
                                             <input type="text" class="form-control" placeholder="${lead.name}" disabled>
                                            
                                         </div>
                                     </div>
                                 </div>
                                 <!--/span-->
                                 <div class="col-md-6">
                                     <div class="form-group">
                                         <label class="control-label col-md-6">Mobile No</label>
                                         <div class="col-md-9">
                                             <input type="text" class="form-control" placeholder="${lead.mobile}" disabled>
                                            
                                         </div>
                                     </div>
                                 </div>
                                 <!--/span-->
                             </div>
                             <!--/row-->
                             <div class="row">
                                 <div class="col-md-6">
                                     <div class="form-group">
                                         <label class="control-label col-md-6">Email</label>
                                         <div class="col-md-9">
                                             <input type="email" class="form-control" name="email" id="email" placeholder="ex: user@gmsil.com" >
                                            
                                         </div>
                                     </div>
                                 </div>
                                 <!--/span-->
                                 <div class="col-md-6">
                                     <div class="form-group">
                                         <label class="control-label col-md-6">Company Name</label>
                                         <div class="col-md-9">
                                             <input id="company" type="text" class="form-control" name="company" id="company" placeholder="ex: g.." >
                                            
                                         </div>
                                     </div>
                                 </div>
                                 <!--/span-->
                             </div>
                             <!--/row-->
                             <!--/row-->
                             <div class="row">
                                 <div class="col-md-6">
                                     <div class="form-group">
                                         <label class="control-label col-md-6">Monthly Salary</label>
                                         <div class="col-md-9">
                                             <input type="text" class="form-control" name="salary" id="salary" placeholder="ex: 40000" >
                                            
                                         </div>
                                     </div>
                                 </div>
                                 <!--/span-->
                                <div class="col-md-6">
                                     <div class="form-group">
                                         <label class="control-label col-md-6">Alternate Mobile No</label>
                                         <div class="col-md-9">
                                             <input type="text" class="form-control" name="alternate_mobile" id="alternate_mobile" placeholder="ex: 89798635214" >
                                            
                                         </div>
                                     </div>
                                 </div>
                                 <!--/span-->
                             </div>
                             <!--/row-->
                             <input type="hidden" name="lead_id" value="${lead.lead_id}" >
                           </form>  
                             <h3 class="form-section">Existing Loan Details</h3>
                             <!--/row-->
                         <form id="eloan" >
							  <fieldset>
							   
							    <div class="repeater-default">
							      <div data-repeater-list="eloan">
							        <div data-repeater-item   >
							           <div class="row">
                                 <div class="col-md-6">
                                     <div class="form-group">
                                         <label class="control-label col-md-6">Loan Type</label>
                                         <div class="col-md-9">
                                            <select class="form-control" name="type" >
										    <option>Home</option>
										    <option>Personal</option>
										    <option>Vehicle</option>
								        	  </select>
                                            
                                         </div>
                                     </div>
                                 </div>
                                 <!--/span-->
                                 <div class="col-md-6">
                                     <div class="form-group">
                                         <label class="control-label col-md-6">Amount</label>
                                         <div class="col-md-9">
                                             <input type="text" class="form-control" name="amount" placeholder="ex:10000" >
                                            
                                         </div>
                                     </div>
                                 </div>
                                 <!--/span-->
                             </div>
                             <!--/row-->
                             <div class="row">
                                 <div class="col-md-6">
                                     <div class="form-group">
                                         <label class="control-label col-md-6">Emi</label>
                                         <div class="col-md-9">
                                             <input type="text" class="form-control" name="emi" placeholder="ex: 3000" >
                                            
                                         </div>
                                     </div>
                                 </div>
                                 <!--/span-->
                                 <div class="col-md-6">
                                     <div class="form-group">
                                         <label class="control-label col-md-6">Loan Company Name</label>
                                         <div class="col-md-9">
                                             <input type="text" class="form-control" name="company" placeholder="ex: google" >
                                            
                                         </div>
                                     </div>
                                 </div>
                                 <!--/span-->
                             </div>
                             <input type="hidden" name="lead_id" value="${lead.lead_id}" >
                             <!--/row-->
                             <div class="row" >
                               <div class="col-md-6">
                                   <div class="form-group">
					              <span data-repeater-delete class="btn btn-danger btn-sm" style="margin-left:3%">
					                <span class="glyphicon glyphicon-remove"></span> Delete
					              </span>
                                </div>
                               </div>
                              </div>
                             <!--/row-->
                             <hr>
							        </div>
							
							   
							      </div>
							      <div class="form-group">
							        <div class="col-sm-offset-1 col-sm-11">
							          <span data-repeater-create class="btn btn-info btn-md">
							            <span class="glyphicon glyphicon-plus"></span> Add
							          </span>
							        </div>
							      </div>
							
							      
							
							    </div>
							    
							  </fieldset>
							</form>
                             
                             
                         </div>
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-primary mt-ladda-btn ladda-button" data-style="zoom-in" id="submit">
            <span class="ladda-label">Submit</span>
            <span class="ladda-spinner"></span>
             <div class="ladda-progress" style="width: 0px;">
            </div>
          </button>
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
        
      </div>
    </div>
  </div>

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
		<script src="vendors/jquery.repeater/src/lib.js" type="text/javascript"></script>
		<script src="vendors/jquery.repeater/src/jquery.input.js" type="text/javascript"></script>
		<script src="vendors/jquery.repeater/src/repeater.js" type="text/javascript"></script>
		<script src="vendors/jquery-form/dist/jquery.form.min.js" type="text/javascript"></script>
		<script src="vendors/block-ui/jquery.blockUI.js" type="text/javascript"></script>
		<script src="vendors/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js" type="text/javascript"></script>
		<script src="vendors/js/framework/components/plugins/forms/bootstrap-datepicker.init.js" type="text/javascript"></script>
		<script src="vendors/bootstrap-datetime-picker/js/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
		<script src="vendors/bootstrap-timepicker/js/bootstrap-timepicker.min.js" type="text/javascript"></script>
		<script src="vendors/js/framework/components/plugins/forms/bootstrap-timepicker.init.js" type="text/javascript"></script>
		<script src="vendors/bootstrap-daterangepicker/daterangepicker.js" type="text/javascript"></script>
		<script src="vendors/js/framework/components/plugins/forms/bootstrap-daterangepicker.init.js" type="text/javascript"></script>
		<script src="vendors/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.js" type="text/javascript"></script>
		<script src="vendors/bootstrap-maxlength/src/bootstrap-maxlength.js" type="text/javascript"></script>
		<script src="vendors/bootstrap-switch/dist/js/bootstrap-switch.js" type="text/javascript"></script>
		<script src="vendors/js/framework/components/plugins/forms/bootstrap-switch.init.js" type="text/javascript"></script>
		<script src="vendors/vendors/bootstrap-multiselectsplitter/bootstrap-multiselectsplitter.min.js" type="text/javascript"></script>
		<script src="vendors/bootstrap-select/dist/js/bootstrap-select.js" type="text/javascript"></script>
		<script src="vendors/select2/dist/js/select2.full.js" type="text/javascript"></script>
		<script src="vendors/typeahead.js/dist/typeahead.bundle.js" type="text/javascript"></script>
		<script src="vendors/handlebars/dist/handlebars.js" type="text/javascript"></script>
		<script src="vendors/inputmask/dist/jquery.inputmask.bundle.js" type="text/javascript"></script>
		<script src="vendors/inputmask/dist/inputmask/inputmask.date.extensions.js" type="text/javascript"></script>
		<script src="vendors/inputmask/dist/inputmask/inputmask.numeric.extensions.js" type="text/javascript"></script>
		<script src="vendors/inputmask/dist/inputmask/inputmask.phone.extensions.js" type="text/javascript"></script>
		<script src="vendors/nouislider/distribute/nouislider.js" type="text/javascript"></script>
		<script src="vendors/owl.carousel/dist/owl.carousel.js" type="text/javascript"></script>
		<script src="vendors/autosize/dist/autosize.js" type="text/javascript"></script>
		<script src="vendors/clipboard/dist/clipboard.min.js" type="text/javascript"></script>
		<script src="vendors/ion-rangeslider/js/ion.rangeSlider.js" type="text/javascript"></script>
		<script src="vendors/dropzone/dist/dropzone.js" type="text/javascript"></script>
		<script src="vendors/summernote/dist/summernote.js" type="text/javascript"></script>
		<script src="vendors/markdown/lib/markdown.js" type="text/javascript"></script>
		<script src="vendors/bootstrap-markdown/js/bootstrap-markdown.js" type="text/javascript"></script>
		<script src="vendors/js/framework/components/plugins/forms/bootstrap-markdown.init.js" type="text/javascript"></script>
		<script src="vendors/jquery-validation/dist/jquery.validate.js" type="text/javascript"></script>
		<script src="vendors/jquery-validation/dist/additional-methods.js" type="text/javascript"></script>
		<script src="vendors/js/framework/components/plugins/forms/jquery-validation.init.js" type="text/javascript"></script>
		<script src="vendors/bootstrap-notify/bootstrap-notify.min.js" type="text/javascript"></script>
		<script src="vendors/js/framework/components/plugins/base/bootstrap-notify.init.js" type="text/javascript"></script>
		<script src="vendors/toastr/build/toastr.min.js" type="text/javascript"></script>
		<script src="vendors/jstree/dist/jstree.js" type="text/javascript"></script>
		<script src="vendors/raphael/raphael.js" type="text/javascript"></script>
		<script src="vendors/morris.js/morris.js" type="text/javascript"></script>
		<script src="vendors/chartist/dist/chartist.js" type="text/javascript"></script>
		<script src="vendors/chart.js/dist/Chart.bundle.js" type="text/javascript"></script>
		<script src="vendors/js/framework/components/plugins/charts/chart.init.js" type="text/javascript"></script>
		<script src="vendors/vendors/bootstrap-session-timeout/dist/bootstrap-session-timeout.min.js" type="text/javascript"></script>
		<script src="vendors/vendors/jquery-idletimer/idle-timer.min.js" type="text/javascript"></script>
		<script src="vendors/waypoints/lib/jquery.waypoints.js" type="text/javascript"></script>
		<script src="vendors/counterup/jquery.counterup.js" type="text/javascript"></script>
		<script src="vendors/es6-promise-polyfill/promise.min.js" type="text/javascript"></script>
		<script src="vendors/sweetalert2/dist/sweetalert2.min.js" type="text/javascript"></script>
		<script src="vendors/js/framework/components/plugins/base/sweetalert2.init.js" type="text/javascript"></script>

		<!--end:: Global Optional Vendors -->

		<!--begin::Global Theme Bundle -->
		<script src="assets/demo/base/scripts.bundle.js" type="text/javascript"></script>

		<!--end::Global Theme Bundle -->

		<!--begin::Page Vendors -->
		<script src="assets/vendors/custom/fullcalendar/fullcalendar.bundle.js" type="text/javascript"></script>

		<!--end::Page Vendors -->
		

		<!--begin::Page Scripts -->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js" type="text/javascript"></script>
		<script src="http://briandetering.net/jquery.repeater/jquery.repeater.js" type="text/javascript"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script type="text/javascript">
	jQuery.validator.setDefaults({
		  debug: true,
		  success: "valid"
		});
	       $('.repeater-default').repeater({
	    	   defaultValues: {
	    		    
	    		    lead_id: '${lead.lead_id}',
	    		   
	    		  },
	    		  initEmpty: true,
	    		 
	    		  show: function () {
	                  $(this).slideDown();
	              },
	              hide: function (deleteElement) {
	            	 
	                  if(confirm('Are you sure you want to delete this ?')) {
	                      $(this).slideUp(deleteElement);
	                  }
	              },
	              isFirstItemUndeletable: true
	       }
	              );
		   $('.selectpicker').selectpicker();
		   $('#changeStatus').on('changed.bs.select', function (e, clickedIndex, isSelected, previousValue) {
			   if(e.target.value == 'new'){
				   return false;
			   }	     
			   
			   switch(clickedIndex) {
			   
			    case 1:
			    	
			    	$("#myModal").modal({
					    backdrop: 'static',
					    keyboard: false});
			        break;
                case 2:
                	
                	changeStatus();
			        break;    
			        
			}
			 
			   $('.selectpicker').selectpicker('val', 'new');		   
			 
			 });
		   $( function() {
			    var availableTags = [
			      "Reliance Industries",
			      "State Bank of India",
			      "Oil & Natural Gas",
			      "HDFC Bank",
			      "Indian Oil",
			      "Tata Motors",
			      "ICICI Bank",
			      "HDFC",
			      "Tata Consultancy Services",
			      "NTPC",
			      "Axis Bank",
			      "Larsen & Toubro",
			      "Bharti Airtel",
			      "Coal India",
			      "Bharat Petroleum",
			      "Infosys",
			      "Kotak Mahindra Bank",
			      "Wipro",
			      "Hindalco Industries",
			      "Wockhardt",
			    ];
			    $( "#company" ).autocomplete({
			      source: availableTags
			    });
			  } );
		   
		   $("#submit").click(function(e){
			  
			      e.preventDefault();
			      var validator = $( "#pinfo" ).validate();
			      if(!validator.form()){
			    	  return false;  
			      } 
			      $('input').next().remove();
			      var lead = {};
			      var formArray = $('#pinfo').serializeArray();
			      for (var i = 0; i < formArray.length; i++){
			    	  lead[formArray[i]['name']] = formArray[i]['value'];
			      }
			      try {
			    	  lead['eloan'] =  $('.repeater-default').repeaterVal()["eloan"];
			    	}
			    	catch(err) {
			    		lead['eloan'] = [];
			    	}
			     
			     
			      $.post({
			         url : 'leads/interested',
			         contentType : "application/json",
			         data : JSON.stringify(lead),
			         dataType: "json",
			         success : function(res) {
			             if(res['status'] == 'success'){
			        	      
			        	      $("#myModal").modal("hide");
			        	      toastr.success('Successfully Status Changed!! ');
			        	      setTimeout(function(){
			        	    	    toastr.success('Fetching New Lead....');
						  		  },700);
			        	      setTimeout(function(){
			        	    	    
						  		//	location.reload();
						  		  },1500);
			             }else{
			            	 
			            	 $("#myModal").modal("hide");
				        	 toastr.error('Error!! Someyhing went wrong ')	 
			            	 
			             }
			            
			         },
			         error:function(error){
			        	 
			        	 $("#myModal").modal("hide");
			        	 toastr.error('Error!! Someyhing went wrong  '); 
			        	 setTimeout(function(){
					  		//	location.reload();
					  		  },800);
			         }
			      })
			   });
		   function changeStatus(){
			   if(!confirm("Are you sure?")){
				   return false;
			   }
			   var promise =  new Promise((resolve, reject) => {
				      $.getJSON('leads/notinterested')
				        .done(resolve)
				        .fail(reject);
				      });
				  promise.then(
						    function(status) {
						    	
						    	if (status == true){
						  		  toastr.success('Successfully Status Changed!! '); 
						  		setTimeout(function(){
			        	    	    toastr.success('Fetching New Lead....');
						  		  },700);
			        	         setTimeout(function(){
			        	    	    
						  			//location.reload();
						  		  },1500);
						  		  
						  		  
						  	  }else{
						  		  toastr.warning('Something went wrong!! ');
						  	  }
						    },
						    function(reason) {
						    	toastr.error('Something went wrong!! ');
						    }
						);
		   }
		     
		   jQuery.validator.addMethod("email", function(value, element) {
			   return this.optional( element ) || /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test( value );
			 }, 'Please enter a valid email');
		   $("#pinfo").validate({
				rules: {
					email: {
						required: false,
						email: true
					},
					company: {
						
						maxlength: 30,
						required: true,
						
					},
					salary: {
						
						required: true,
						maxlength: 12,
						digits: true,
					},
					alternate_mobile: {
						minlength: 10,
						maxlength: 12,
						digits: true,
					}
					
					
				},
				messages: {
					email: {
						email: "Please enter valid email"
					},
					company: {
						maxlength: "Please enter valid company name",
						required: "Required"
					},
					salary: {
						maxlength: "Please enter valid salary",
						digits: "Only digites allowed",
						required: "Required"
					},
					alternate_mobile: {
						required: "Required",
						minlength: "Please Enter valid 10 digit Mobile no",
						maxlength: "Please Enter valid 10 digit Mobile no",
						digits: "Please Enter valid 10 Mobile no",
					}
				},
				errorElement: "em",
				 highlight: function(element, errorClass, validClass) {
					    
								 $('#'+element.id).css({"border": "1px solid rgba(232, 5, 5, 0.4)"})
							 },
					 unhighlight:function(element, errorClass, validClass) {
									 $('#'+element.id).css({"border": "1px solid #e2e2e2"})
								 },

			});

		</script>


		<!--end::Page Scripts -->
	</body>

	<!-- end::Body -->
</html>