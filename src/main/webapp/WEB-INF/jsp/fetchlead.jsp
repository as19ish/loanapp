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
        <link href="vendors/bootstrap-datepicker/dist/css/bootstrap-datepicker3.min.css" rel="stylesheet" type="text/css" />
        <link href="vendors/bootstrap-datetime-picker/css/bootstrap-datetimepicker.min.css" rel="stylesheet" type="text/css" />
        <link href="vendors/bootstrap-timepicker/css/bootstrap-timepicker.min.css" rel="stylesheet" type="text/css" />
        <link href="vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet" type="text/css" />
        <link href="vendors/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.css" rel="stylesheet" type="text/css" />
        <link href="vendors/bootstrap-switch/dist/css/bootstrap3/bootstrap-switch.css" rel="stylesheet" type="text/css" />
        <link href="vendors/bootstrap-select/dist/css/bootstrap-select.css" rel="stylesheet" type="text/css" />
        <link href="vendors/toastr/build/toastr.css" rel="stylesheet" type="text/css" />
        <link href="vendors/jstree/dist/themes/default/style.css" rel="stylesheet" type="text/css" />
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
        <link href="http://techlaboratory.net/demos/SmartWizard43/dist/css/smart_wizard_theme_arrows.css" rel="stylesheet" type="text/css" />
        <link href="http://techlaboratory.net/demos/SmartWizard43/dist/css/smart_wizard.css" rel="stylesheet" type="text/css" />
         <link rel="stylesheet" href="//cdn.jsdelivr.net/jquery.bootstrapvalidator/0.5.0/css/bootstrapValidator.min.css"/>
        <style>
          .ui-menu{
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
                                <!--    <div class="m-portlet__head">
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
                                               <c:if test="${lead != null }">
                                                    <tr >
                                                       
                                                        <td>${lead.name}</td>
                                                        <td>${lead.mobile}</td>
                                                        
                                                        <td><select class="selectpicker" data-mobile="false" id="changeStatus" >
                                                             <c:forEach items="${status}" var="item">
                                                               <option value="${item.id}" >${item.name}</option>
                                                            </c:forEach>  
                                                            </select>
                                                        </td>
                                                        
                                                    </tr>
                                              </c:if> 
                                               <c:if test="${lead == null }">
                                                <tr>
												    <td colspan="3" style="text-align: center;">No new lead found</td>
												  </tr>
												</c:if>   
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
	   <%@ include file="/WEB-INF/layouts/smartwizard.jsp" %>
	   <%@ include file="/WEB-INF/layouts/remark.jsp" %>



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
        <script src="http://techlaboratory.net/demos/SmartWizard43/dist/js/jquery.smartWizard.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.5/validator.min.js"></script>
        <script src="assets/app/js/newlead.js"></script>
        <script type="text/javascript">
        $('#repeater-eloan').repeater({
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
               
        });
        $('#repeater-ecard').repeater({
            defaultValues : {
              lead_id : '${lead.lead_id}'  
            },
            initEmpty: true,
            show: function(){
                
                $( ".form-control.issuing_bank" ).autocomplete({
                       source: banks
                     });
                
                $(this).slideDown();
            },
            hide: function(deleteElement){
                if(confirm('Are you sure you want to delete this ?')) {
                       $(this).slideUp(deleteElement);
                   }
            }
        });
        </script>
        <!--end::Page Scripts -->
    </body>

    <!-- end::Body -->
</html>