<div class="modal fade" id="remark">
    <div class="modal-dialog modal-lg modal-dialog-centered" style="max-width:50% !important">
      <div class="modal-content">
        <div class="modal-body" style="padding-left:5%;padding-top:9%;">
            <div class="form-body">
                             
                             <form id="rform">
                             <div class="row">
                                 <div class="col-md-12">
                                     <div class="form-group">
                                         <label class="control-label col-md-6">Full Name</label>
                                         <div class="col-md-12">
                                             <input type="text" class="form-control" placeholder="${lead.name}" disabled>
                                            
                                         </div>
                                     </div>
                                 </div>
                             </div>
                             <div class="row">
                                 <div class="col-md-12">
                                     <div class="form-group">
                                         <label class="control-label col-md-6">Mobile No</label>
                                         <div class="col-md-12">
                                             <input type="text" class="form-control" placeholder="${lead.mobile}" disabled>
                                            
                                         </div>
                                     </div>
                                 </div>
                              </div>
                             <!--/row-->
                             <div class="row">
                                 <div class="col-md-12">
                                     <div class="form-group">
                                         <label class="control-label col-md-6">Remark</label>
                                         <div class="col-md-12">
                                            <textarea class="form-control" rows="2" name="remark" id="text_remark"></textarea>
                                         </div>
                                     </div>
                                 </div>
                                </div>
                             
                             <input type="hidden" name="status_id" id="status_id" >
                             
                           </form>
                         </div>
                     </div>
        
        <!-- Modal footer -->
        <div class="modal-footer" style="padding:11px;">
          <button type="button" class="btn btn-primary mt-ladda-btn ladda-button" data-style="zoom-in" id="r_submit">
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