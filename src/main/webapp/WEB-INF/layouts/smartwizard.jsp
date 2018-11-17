<div class="modal fade" id="interested" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered" style="max-width:60% !important" role="document">
          <div class="modal-content">
            
            <div class="modal-body">

            

        <!-- SmartWizard html -->
        <div id="smartwizard">
            <ul>
                <li><a href="#step-1">Step 1<br /><small>Personal Information</small></a></li>
                <li><a href="#step-2">Step 2<br /><small>Occupation Detail</small></a></li>
                <li><a href="#step-3">Step 3<br /><small>Existing Loan Details</small></a></li>
                <li><a href="#step-4">Step 4<br /><small>Existing Credit Card Details</small></a></li>
                <li><a href="#step-5">Step 5<br /><small>Finish</small></a></li>
            </ul>

            <div>
                <div id="step-1">
                    <h2>Personal Information</h2>
                    <div id="form-step-0" role="form" data-toggle="validator">
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
                                             <input type="email" class="form-control" name="email" id="email" placeholder="Ex: user@gmail.com" >
                                            
                                         </div>
                                     </div>
                                 </div>
                                 <!--/span-->
                                 <div class="col-md-6">
                                     <div class="form-group">
                                         <label class="control-label col-md-6">Alternate Mobile No</label>
                                         <div class="col-md-9">
                                             <input type="text" class="form-control" name="alternate_mobile" id="alternate_mobile" placeholder="Ex: 89798635214" >
                                            
                                         </div>
                                     </div>
                                 </div>
                                 <!--/span-->
                             </div>
                             
                             <input type="hidden" name="lead_id" value="${lead.lead_id}" >
                         </form>
                    </div>

                </div>
                <div id="step-2">
                    <h2>Occupation Detail</h2>
                    <div id="form-step-1" role="form" data-toggle="validator">
                         <div class="row" style="margin-left: 15px;">
                                 <div class="col-md-6">
                                     <div class="form-group">
                                         <div class="form-check-inline">
								     <label class="form-check-label" for="job">
								       <input type="radio" class="form-check-input" id="job" name="occupation" value="job" checked>Job
								     </label>
								   </div>
								   <div class="form-check-inline">
								     <label class="form-check-label" for="business">
								       <input type="radio" class="form-check-input" id="business" name="occupation" value="job" >Business
								     </label>
								   </div>
                                     </div>
                                   </div> 
								</div>
						 <form id="job_form" style="display:block;">
                             <div class="row">
                                 <div class="col-md-6">
                                     <div class="form-group">
                                         <label class="control-label col-md-6">Company Name</label>
                                         <div class="col-md-9">
                                             <input id="company" type="text" class="form-control" name="company_name" id="company" placeholder="Ex: g.." data-rule-no_special_characters="true" data-msg-no_special_characters="no special characters allowed" data-rule-maxlength="64" data-msg-maxlength="Firm/Company Name exceeded the maximum length"  data-msg="Please fill Company Name" required >
                                            
                                         </div>
                                     </div>
                                 </div>
                                 <!--/span-->
                                 <div class="col-md-6">
                                     <div class="form-group">
                                         <label class="control-label col-md-6">Monthly Salary</label>
                                         <div class="col-md-9">
                                             <input type="text" class="form-control" name="salary" id="salary" placeholder="Ex: 40000"data-rule-digits="true" data-msg-digits="Please Enter Valid Amount in digits" data-rule-minlength="4" data-msg-minlength="Enter Valid Amount " data-rule-maxlength="10" data-msg-maxlength="Please Enter Valid Amount (exceeded limit)" data-msg="Please fill mothly salary" required >
                                            
                                         </div>
                                     </div>
                                 </div>

                             </div>
                                                                               
                             <input type="hidden" name="lead_id" value="${lead.lead_id}" >
                           </form>  
                            <form id="business_form" style="display:none;">
                             <div class="row">
                                 <div class="col-md-6">
                                     <div class="form-group">
                                         <label class="control-label col-md-6">Name</label>
                                         <div class="col-md-9">
                                             <input id="company" type="text" class="form-control" name="name"  placeholder="Ex..Shri Ram Trader" data-rule-no_special_characters="true" data-msg-no_special_characters="no special characters allowed" data-rule-maxlength="64" data-msg-maxlength="Bussiness Name exceeded the maximum length"  data-msg="Please fill Bussiness Name" required >
                                            
                                         </div>
                                     </div>
                                 </div>
                                 <!--/span-->
                                 <div class="col-md-6">
                                     <div class="form-group">
                                         <label class="control-label col-md-6">Firm/Company</label>
                                         <div class="col-md-9">
                                             <input type="text" class="form-control" name="firm" id="salary" placeholder="Ex..Firm" data-rule-no_special_characters="true" data-msg-no_special_characters="no special characters allowed" data-rule-maxlength="64" data-msg-maxlength="Firm/Company Name exceeded the maximum length"  data-msg="Please fill Bussiness Type" required >
                                            
                                         </div>
                                     </div>
                                 </div>

                             </div>
                               <div class="row">
                                 <div class="col-md-6">
                                     <div class="form-group">
                                         <label class="control-label col-md-6">Annual Revenue</label>
                                         <div class="col-md-9">
                                             <input  type="text" class="form-control" name="revenue"  placeholder="Ex: 100000" data-rule-digits="true" data-msg-digits="Please Enter Valid Amount in digits" data-rule-minlength="4" data-msg-minlength="Enter Valid Amount " data-rule-maxlength="10" data-msg-maxlength="Please Enter Valid Amount (exceeded limit)" data-msg="Please fill Annual Revenue" required >
                                            
                                         </div>
                                     </div>
                                 </div>
                                 

                             </div>
                                                                               
                             <input type="hidden" name="lead_id" value="${lead.lead_id}" >
                           </form> 
                           
                    </div>
                </div>
                <div id="step-3">
                    <h2>Existing Loan Details</h2>
                    <div id="form-step-2" role="form" data-toggle="validator">
              <form id="eloan" >
							  <fieldset>
							   
							    <div class="repeater-default" id="repeater-eloan">
							      <div data-repeater-list="eloan">
							        <div data-repeater-item   >
							           <div class="row">
                                 <div class="col-md-6">
                                     <div class="form-group">
                                         <label class="control-label col-md-6">Loan Type</label>
                                         <div class="col-md-9">
                                            <select class="form-control" name="type" required data-msg="Please select Loan Type" >
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
                                             <input type="text" class="form-control" name="amount" placeholder="ex:10000" data-rule-digits="true" data-msg-digits="Please Enter Valid Amount in digits" data-rule-minlength="4" data-msg-minlength="Enter Valid Amount" data-rule-maxlength="10" data-msg-maxlength="Please Enter Valid Amount (exceeded limit)" data-msg="Please fill Amount" required >
                                            
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
                                             <input type="text" class="form-control" name="emi" placeholder="ex: 3000" data-rule-digits="true" data-msg-digits="Please Enter Valid Amount in digits" data-rule-minlength="2" data-msg-minlength="Enter Valid Amount" data-rule-maxlength="8" data-msg-maxlength="Please Enter Valid Amount (exceeded limit)" data-msg="Please fill Amount" required >
                                            
                                         </div>
                                     </div>
                                 </div>
                                 <!--/span-->
                                 <div class="col-md-6">
                                     <div class="form-group">
                                         <label class="control-label col-md-6">Loan Company Name</label>
                                         <div class="col-md-9">
                                             <input type="text" class="form-control" name="company" placeholder="ex: google" data-msg="Please fill Loan Company" required >
                                            
                                         </div>
                                     </div>
                                 </div>
                                 <!--/span-->
                             </div>
                             <div class="row">
                                 <div class="col-md-6">
                                     <div class="form-group">
                                         <label class="control-label col-md-6">Loan Tenure</label>
                                         <div class="col-md-9">
                                             <input type="text" class="form-control" name="tenure" placeholder="ex: 12" data-rule-digits="true" data-msg-digits="Please Enter Value In Month" data-rule-maxlength="4" data-msg-maxlength="Enter valid Months" data-msg="Please fill loan tenure" required >
                                             <small  class="form-text text-muted">In months</small>
                                         </div>
                                     </div>
                                 </div>
                                 <!--/span-->
                                 <div class="col-md-6">
                                     <div class="form-group">
                                         <label class="control-label col-md-6">Loan Repayment</label>
                                         <div class="col-md-9">
                                             <input type="text" class="form-control" name="repayment" placeholder="ex: 5" data-rule-digits="true" data-msg-digits="Please Enter Value In Month" data-rule-maxlength="4" data-msg-maxlength="Enter valid Months" data-msg="Please fill this field" required >
                                             <small  class="form-text text-muted">In months</small>
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
                <div id="step-4" class="">
                    <h2>Existing Credit Card Details</h2>
                    
                    <div id="form-step-3" role="form" data-toggle="validator">
                        <form id="ecard" >
							  <fieldset>
							   
							    <div class="repeater-default" id="repeater-ecard" >
							      <div data-repeater-list="ecard">
							        <div data-repeater-item   >
							           <div class="row">
                                 <div class="col-md-6">
                                    <div class="form-group">
                                         <label class="control-label col-md-6">Issuing Bank Name</label>
                                         <div class="col-md-9">
                                             <input type="text" class="form-control issuing_bank" name="issuing_bank" id="issuing_bank" placeholder="ex: SBI" data-msg="Please fill Issuing Bank Name" required >
                                            
                                         </div>
                                     </div>
                                 </div>
                                 <!--/span-->
                                 <div class="col-md-6">
                                     <div class="form-group">
                                         <label class="control-label col-md-6">Card Limit</label>
                                         <div class="col-md-9">
                                             <input type="text" class="form-control" name="card_limit" placeholder="ex: 50000" data-rule-digits="true" data-msg-digits="Enter Valid Card Limit" data-rule-maxlength="9" data-msg-maxlength="Enter valid Amount" data-msg="Please fill Card Limit" required >
                                            
                                         </div>
                                     </div>
                                 </div>
                                 <!--/span-->
                             </div>
                             <!--/row-->
                             <div class="row">
                                 <div class="col-md-6">
                                     <div class="form-group">
                                         <label class="control-label col-md-6">Card Used</label>
                                         <div class="col-md-9">
                                             <input type="text" class="form-control" name="card_used" placeholder="ex: 3000" data-rule-digits="true" data-msg-digits="Enter Valid Card Limit" data-rule-maxlength="9" data-msg-maxlength="Enter valid Amount" data-msg="Please fill Used Amount" required >
                                            
                                         </div>
                                     </div>
                                 </div>
                               
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
               <div id="step-5" class="">
                    <h2>Existing Credit Card Details</h2>
                    
                    <div id="form-step-4" role="form" data-toggle="validator">
                        <form id="next_call_form">
                               <div class="row">
	                                  <div class="col-md-6">
	                                     <div class="form-group">
	                                         <label class="control-label col-md-6">Next Call Date</label>
	                                         <div class="col-md-12">
	                                             <input  class="form-control" id="date" data-msg="Please Select Next Call Date And Time" required >
	                                          <span class="add-on">
											      <i data-time-icon="icon-time" data-date-icon="icon-calendar">
											      </i>
											    </span>  
	                                         </div>
	                                     </div>
	                                 </div>
	                                 <div class="col-md-6">
	                                     <div class="form-group">
	                                         <label class="control-label col-md-6">Remark</label>
	                                         <div class="col-md-9">
	                                            <textarea class="form-control" rows="1" name="remark" id="next_call_remark"></textarea>
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
      </div>