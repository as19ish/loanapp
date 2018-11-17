 var banks = [
          "Axis Bank",
          "Bank of Baroda",
          "Canara Bank",
          "Corporation Bank",
          "HDFC",
          "ICICI Bank",
          "Indian Overseas Bank",
          "Kotak Mahindra",
          "Punjab National Bank",
          "SBI",
          "Syndicate Bank",
          "Union Bank of India",
          "Vijaya Bank",
          "Vijaya Bank",
          "American Express",
          "ANZ",
          "Barclays Bank",
          "Citibank",
          "Diners Club",
          "HSBC",
          "Standard Chartered",
          
        ];
        $( ".form-control.issuing_bank" ).autocomplete({
          source: banks
        });
     
          
           $('.selectpicker').selectpicker();
           $('#changeStatus').on('changed.bs.select', function (e, clickedIndex, isSelected, previousValue) {
               
               if(e.target.selectedOptions[0].innerText == 'new'){
                   return false;
               }         
               
               
               if(e.target.selectedOptions[0].innerText == "interested"){
                   $("#interested").modal({
                        backdrop: 'static',
                        keyboard: false});
               }else{
                   $('#status_id').val(e.target.value);
                   $("#remark").modal({
                        backdrop: 'static',
                        keyboard: false});
                   
               }
             
               $('.selectpicker').selectpicker('val', '1');        
             
             });
        
            $( "#company" ).autocomplete({
                source : '/company/search'
            });
             
           
           var validation_options={
                      errorElement: "em",
                      highlight: function(element, errorClass, validClass) {
                            
                             $(element).css({"border": "1px solid rgba(232, 5, 5, 0.4)"})
                         },
                     unhighlight:function(element, errorClass, validClass) {
                                 $(element).css({"border": "1px solid #e2e2e2"})
                             },
                  };
          var validator_pinfo = $( "#pinfo" ).validate();
          var validator_eloan = $("#eloan").validate(validation_options);
          var validator_ecard = $("#ecard").validate(validation_options);
          var validator_job = $("#job_form").validate(validation_options);
          var validator_business = $('#business_form').validate(validation_options);
          var validator_next_call_form = $("#next_call_form").validate(validation_options);
            $('#job').click(function(){
               $('#business_form').hide();
               $('#job_form').show();
                       
           });
           $('#business').click(function(){
               $('#job_form').hide();
               $('#business_form').show();
                   
                           
           });
           function formDataMaker(){
        	   var lead = {};
        	   var formArray = $('#pinfo').serializeArray();
               for (var i = 0; i < formArray.length; i++){
                   lead[formArray[i]['name']] = formArray[i]['value'];
               }
               if ($("#job").prop("checked")) {
                   if(!validator_job.form()){
                       return false;;
                   }
                    lead['occupation_id'] = 1;
                    var job ={};
                    var formArray = $('#job_form').serializeArray();
                    for (var i = 0; i < formArray.length; i++){
                           job[formArray[i]['name']] = formArray[i]['value'];
                       }
                    lead['job']=job;
                     }else{
                     
                     lead['occupation_id'] = 2;
                     var business = {};
                     var formArray = $('#business_form').serializeArray();
                     for (var i = 0; i < formArray.length; i++){
                         business[formArray[i]['name']] = formArray[i]['value'];
                       }
                     lead['business']=business;
                     
                 }
                 try {
                   lead['eloan'] =  $('#repeater-eloan').repeaterVal()["eloan"];
                 }catch(err) {
                     lead['eloan'] = [];
                 }
                 
                 try {
                   lead['ecard'] =  $('#repeater-ecard').repeaterVal()["ecard"];
                 }catch(err) {
                     lead['ecard'] = [];
                 }
                 lead['next_call'] = $("#date").val();
                 lead['remark'] = $("#next_call_remark").val();
                 return JSON.stringify(lead);
              
           }
          
                  
              

             $("#r_submit").click(function(e){
                 e.preventDefault();
                 $("#r_submit").html('Submiting <i class="fa fa-spinner fa-spin" ></i>');
                 var lead = {};
                 lead['status_id'] = $('#status_id').val();
                 lead['remark'] = $('#text_remark').val();
                 
                 
                 $.post({
                     url : 'leads/status',
                     contentType : "application/json",
                     data : JSON.stringify(lead),
                     dataType: "json",
                     success : function(res) {
                         if(res['status'] == 'success'){
                             $("#r_submit").html('Submit');
                              $("#interested").modal("hide");
                              toastr.success('Successfully Status Changed!! ');
                              setTimeout(function(){
                                    toastr.success('Fetching New Lead....');
                                  },700);
                              setTimeout(function(){
                                    
                                    location.reload();
                                  },1500);
                         }else{
                             
                             $("#interested").modal("hide");
                             toastr.error('Error!! Someyhing went wrong Please Reload Page and try again ')  
                             
                         }
                        
                     },
                     error:function(error){
                         $("#r_submit").html('Submit');
                         $("#interested").modal("hide");
                         toastr.error('Error!! Someyhing went wrong  '); 
                         setTimeout(function(){
                                location.reload();
                              },800);
                     }
                  })

                 
                 
                 
             });
           jQuery.validator.addMethod("email", function(value, element) {
               return this.optional( element ) || /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test( value );
             }, 'Please enter a valid email');
           $("#pinfo").validate({
                rules: {
                    email: {
                        required: false,
                        email: true
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
          
           
           $(function () { 
               var date = new Date();
               date.setDate(date.getDate());
               $('#date').datetimepicker({ 
                startDate: date,
                language: 'es',
                pickerPosition: "bottom-left",
               
               });
             });

            var btnFinish = $('<button></button>').text('Finish')
                                             .addClass('btn btn-info')
                                             .attr('id','btnFinish')
                                             .attr('disabled', 'disabled')
                                             .on('click', function(){
                                            	      $('#btnFinish').html('Submiting <i class="fa fa-spinner fa-spin" ></i>');
                                                    	$.post({
                                                            url : 'leads/interested',
                                                            contentType : "application/json",
                                                            data : formDataMaker(),
                                                            dataType: "json",
                                                            success : function(res) {
                                                                $("#submit").html('Submit');
                                                                if(res['status'] == 'success'){
                                                                     
                                                                     $("#interested").modal("hide");
                                                                     toastr.success('Successfully Status Changed!! ');
                                                                     setTimeout(function(){
                                                                           toastr.success('Fetching New Lead....');
                                                                         },700);
                                                                     setTimeout(function(){
                                                                           
                                                                           location.reload();
                                                                         },1500);
                                                                }else{
                                                                    
                                                                    $("#interested").modal("hide");
                                                                    toastr.error('Error!! Someyhing went wrong ')   
                                                                    
                                                                }
                                                               
                                                            },
                                                            error:function(error){
                                                                $("#submit").html('Submit');
                                                                $("#interested").modal("hide");
                                                                toastr.error('Error!! Someyhing went wrong  '); 
                                                                setTimeout(function(){
                                                                       location.reload();
                                                                     },800);
                                                            }
                                                         });
                                                    
                                                });
            var btnCancel = $('<button></button>').text('Cancel')
                                             .addClass('btn btn-danger')
                                             .on('click', function(){
                                            	 $('#smartwizard').smartWizard("reset"); 
                                                   $('#interested').modal('hide');
                                                });



           
            $('#smartwizard').smartWizard({
                    selected: 0,
                    theme: 'arrows',
                    transitionEffect:'fade',
                    useURLhash: false, 
                    toolbarSettings: {toolbarPosition: 'bottom',
                                      toolbarExtraButtons: [btnFinish, btnCancel]
                                    },
                    anchorSettings: {
                                markDoneStep: true, 
                                markAllPreviousStepsAsDone: true,
                                removeDoneStepOnNavigateBack: true, 
                                enableAnchorOnDoneStep: true
                            }
                 });

            $("#smartwizard").on("leaveStep", function(e, anchorObject, stepNumber, stepDirection) {
               
                  if(stepDirection === 'forward' ){
                	  switch(stepNumber){
                	    case 0:
                	    	if(! validator_pinfo.form()){
                	    		return false;
                	    	}
                	    	break;
                	    case 1:
                	    	if ($("#job").prop("checked")) {
	                	    		if(!validator_job.form()){
	                                    return false;
	                                }
                                }else{
                                	if(!validator_business.form()){
                                        return false;
                                    }
                                	
                                }
                                
                	    	break;
                        case 2:
                        	if(!validator_eloan.form()){
                        		return false;
                        	}
                	    	
                	    	break;               	    	
                        case 3:
                        	if(!validator_ecard.form()){
                        		return false;
                        	}
                        	
                        	break;
                        case 4:
                        	if(!validator_next_call_form.form()){
                        		return false;
                        	}
                        	
                        	
                	  }
                    
                    }
                  return true;
                }
               
            );

            $("#smartwizard").on("showStep", function(e, anchorObject, stepNumber, stepDirection) {
              
                if(stepNumber == 4){
                	$('#btnFinish').removeAttr('disabled');
                    
                }else{
                	$('#btnFinish').attr('disabled', 'disabled');
                }
            });

