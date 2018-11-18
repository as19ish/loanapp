<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<!-- begin::Head -->
<head>
<meta charset="utf-8" />
<title>Add New Lead</title>
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
<link href="../../vendors/perfect-scrollbar/css/perfect-scrollbar.css"
	rel="stylesheet" type="text/css" />

<!--end:: Global Mandatory Vendors -->

<!--begin:: Global Optional Vendors -->

<link href="../../vendors/vendors/flaticon/css/flaticon.css" rel="stylesheet"
	type="text/css" />
<link href="../../vendors/vendors/fontawesome5/css/all.min.css" rel="stylesheet" type="text/css" />

<!--end:: Global Optional Vendors -->

<!--begin::Global Theme Styles -->
<link href="../../assets/demo/base/style.bundle.css" rel="stylesheet"
	type="text/css" />
<link href="http://keenthemes.com/preview/metronic/theme/assets/pages/css/invoice.min.css" rel="stylesheet" type="text/css" >
<!--RTL version:<link href="assets/demo/base/style.bundle.rtl.css" rel="stylesheet" type="text/css" />-->

<!--end::Global Theme Styles -->
<link rel="shortcut icon" href="../../assets/demo/media/img/logo/favicon.ico" />
<link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css" rel="stylesheet" type="text/css" />
	
<style>
   h3{
      font-weight: 300 !important;
   }
   h4{
      font-weight: 300 !important;
   }
   .m-messenger__message-content{
       padding-bottom: 26px !important;      
   }
   .min-200w{
     min-width:200px !important;
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

				
				<!-- END: Subheader -->
				<div class="m-content" style="background:#fff;">
					
					   <div class="invoice" >
                        <div class="row invoice-logo">
                            <div class="col-md-6 invoice-logo-space">
                                <h2>PIXELTECHLAB</h2> </div>
                            <div class="col-md-6">
                                <p> #${ lead.lead_id } 
                                   
                                </p>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-4">
                                <h3>Client:</h3>
                                <ul class="list-unstyled">
                                    <li>Status : ${lead.status} </li>
                                    <li>Name : ${lead.name} </li>
                                    <li>Mobile : ${lead.mobile} </li>
                                    <li>Email : ${lead.email} </li>
                                    <li>Alternate Mobile : ${lead.alternate_mobile} </li>
                                    
                                </ul>
                            </div>
                            <div class="col-md-4 invoice-payment">
                                <h3>Occupation Details:</h3>
                                <c:if test="${job != null}">
                                <ul class="list-unstyled">
                                    <li>
                                        Company Name : ${job.company_name} </li>
                                    <li>
                                        Salary : ${job.salary} </li>
                                   
                                </ul>
                                </c:if>
                                <c:if test="${business != null }">
                                <ul class="list-unstyled">
                                    <li>
                                        Business Name : ${business.name} </li>
                                    <li>
                                        Firm/Company : ${business.firm} </li>
                                    <li>
                                        Annual Revenue : ${business.revenue} </li>    
                                   
                                </ul>
                                </c:if>
                            </div>
                            <div class="col-md-4">
                                <h3>Remark:</h3>
                                <ul class="list-unstyled">
                                    <li> ${lead.remark}</li>
                                    
                                </ul>
                                
                                <h4>Next Call Date:</h4>
                                <ul class="list-unstyled">
                                    <li> <fmt:formatDate value="${lead.next_call}" pattern="E yyyy.MM.dd 'at' hh:mm:ss a " /></li>
                                    
                                </ul>
                            </div>
                            
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                            <h3>Loans</h3>
                                <table id="loans" class="table table-striped table-bordered" style="width:100%">
                                    <thead>
                                        <tr>
                                            <th> # </th>
                                            <th> Type </th>
                                            <th > Amount </th>
                                            <th > Monthly Emi </th>
                                            <th > Issuing Authority </th>
                                            <th>Loan Tenure </th>
                                            <th>Loan Repayment </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                           <c:forEach items="${eloan}" var="temp">
								                    <tr >
								                        
								                        <td>#</td>
								                        <td>${temp.type}</td>
								                        <td><fmt:formatNumber value="${temp.amount}" type="currency" pattern="#,##,##,##,#,##.00" currencySymbol=""/></td>
								                        <td><fmt:formatNumber value="${temp.emi}" type="currency" pattern="#,##,##,##,#,##.00" currencySymbol=""/></td>
								                        <td>${temp.company}</td>
								                        <td>${temp.tenure}</td>
								                        <td>${temp.repayment}</td>
								                        
								                    </tr>
								                </c:forEach>
                                        
                                    </tbody>
                                </table>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col-md-12">
                            <h3>Credit Cards</h3>
                                <table id="credit_cards" class="table table-striped table-bordered" style="width:100%">
                                    <thead>
                                        <tr>
                                            <th> # </th>
                                            <th> ISSUING BANK </th>
                                            <th > LIMIT </th>
                                            <th > USED </th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${ecard}" var="temp">
								                    <tr >
								                        
								                        <td>#</td>
								                        <td>${temp.issuing_bank}</td>
								                        <td>${temp.card_limit}</td>
								                        <td>${temp.card_used}</td>
								                        								                        
								                    </tr>
								                </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="well">
                                    
                                    <address>
                                        <strong>${lead.name}</strong>
                                        <br>
                                        <a href="mailto:#"> ${lead.email} </a>
                                    </address>
                                </div>
                            </div>
                            <div class="col-md-8 invoice-block">
                                
                                <br>
                                <button type="button" class="btn btn-primary" onclick="javascript:window.print();" >Print</button>
                                
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

	<%@ include file="/WEB-INF/layouts/comments.jsp" %>

	<!--begin:: Global Mandatory Vendors -->
	<script src="../../vendors/jquery/dist/jquery.js" type="text/javascript"></script>
	<script src="../../vendors/popper.js/dist/umd/popper.js"
		type="../../text/javascript"></script>
	<script src="../../vendors/bootstrap/dist/js/bootstrap.min.js"
		type="text/javascript"></script>
	<script src="../../vendors/js-cookie/src/js.cookie.js" type="text/javascript"></script>
	<script src="../../vendors/moment/min/moment.min.js" type="text/javascript"></script>
	<script src="../../vendors/tooltip.js/dist/umd/tooltip.min.js"
		type="text/javascript"></script>
	<script src="../../vendors/perfect-scrollbar/dist/perfect-scrollbar.js"
		type="text/javascript"></script>
	<script src="../../vendors/wnumb/wNumb.js" type="text/javascript"></script>

	<!--end:: Global Mandatory Vendors -->

	<!--begin:: Global Optional Vendors -->


	<!--end:: Global Optional Vendors -->

	<!--begin::Global Theme Bundle -->
	
	<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js" type="text/javascript"></script>
	<script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js" type="text/javascript"></script>
	<script src="../../assets/demo/base/scripts.bundle.js" type="text/javascript"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js" type="text/javascript"></script>
		
    <script>
    toastr.options = {
			  "closeButton": false,
			  "debug": false,
			  "newestOnTop": false,
			  "progressBar": true,
			  "positionClass": "toast-top-right",
			  "preventDuplicates": false,
			  "onclick": null,
			  "showDuration": "300",
			  "hideDuration": "1000",
			  "timeOut": "5000",
			  "extendedTimeOut": "1000",
			  "showEasing": "swing",
			  "hideEasing": "linear",
			  "showMethod": "fadeIn",
			  "hideMethod": "fadeOut"
			};
    $('#loans').DataTable({
    	searching: false, paging: false, info: false
    });
    $('#credit_cards').DataTable({
    	searching: false, paging: false, info: false
    });
    </script>
    <script> 
    $(document).ready(function(){
    	 $("#messages").animate({ scrollTop: $('#messages').prop("scrollHeight")}, 1000);
    	 $('.date').each(function(i, obj) {
    		    $(obj).html(moment($(obj).html()).fromNow(true));
    		   
    		});
    }); 
		 $("#send").click(function(e){
             e.preventDefault();
             $("#send").html('<i class="fa fa-spinner fa-spin" ></i>');
             if($('#comment').val() == ''){
            	 $("#send").html('<i class="fas fa-paper-plane" style="color:black;"></i>');
            	 return false;
             }
             var comment = {};
             comment['lead_id'] = $('#leadId').val();
             comment['comment'] = $('#comment').val();
             
             
             $.post({
                 url : '/comments/add',
                 contentType : "application/json",
                 data : JSON.stringify(comment),
                 dataType: "json",
                 success : function(res) {
                     if(res['status'] == 'success'){
                    	   $("#send").html('<i class="fas fa-paper-plane" style="color:black;"></i>'); 
                    	   $("#messages").append('<div class="m-messenger__wrapper"><div class="m-messenger__message m-messenger__message--out"><div class="m-messenger__message-body"><div class="m-messenger__message-arrow"></div><div class="m-messenger__message-content"><div class="m-messenger__message-text">'+$('#comment').val()+'</div><span class="date" style="color:#fff;float:right">now</span></div></div></div></div>');
                    	   $('#comment').val('');
                    	   $("#messages").animate({ scrollTop: $('#messages').prop("scrollHeight")}, 1000);
                     }else{
                    	   $("#send").html('<i class="fas fa-paper-plane" style="color:black;"></i>'); 
                    	   toastr.error('Something went wrong!! ');
                     }
                    
                 },
                 error:function(error){
                	 $("#send").html('<i class="fas fa-paper-plane" style="color:black;"></i>'); 
              	     toastr.error('Something went wrong!! ');
                 }
              })

             
             
             
         });
		
		
		</script>
	<!--end::Global Theme Bundle -->
</body>

<!-- end::Body -->
</html>