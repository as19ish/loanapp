$(document).ready(function() {
    $('#example').DataTable();
    $('.selectpicker').selectpicker();
    $('#paginatedTable').DataTable( {
        "processing": true,
        "serverSide": true,
        "pageLength": 10,
        "ajax": {
            "url": "/leads/fetch",
            "data": function ( data ) {
			 
         }},
        "columns": [
                    { "data": "lead_id", "name" : "LeadID", "title" : "LeadID"  },
                    { "data": "name", "name" : "Name" , "title" : "Name"},
                    { "data": "mobile", "name" : "Mobile" , "title" : "Mobile"},
                    { "data": "creation_date", "name" : "CreationDate" , "title" : "CreationDate"},
                    { "data": "last_updated_date", "name" : "LastUpdatedDate" , "title" : "LastUpdatedDate"},
                    { "data": "status", "name" : "Status" , "title" : "Status"},
                    { "data": "employee_id", "name" : "EmployeeID" , "title" : "EmployeeID"}
                ]    
	});
	
	$('#paginatedTable').dataTable().fnSetFilteringEnterPress();
    
} );
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
		}
$('select').on('change', function() {
	  
	  var promise =  new Promise((resolve, reject) => {
	      $.getJSON('toggle_status/'+this.getAttribute("data-rowId"))
	        .done(resolve)
	        .fail(reject);
	      });
	  promise.then(
			    function(status) {
			    	
			    	if (status == true){
			  		  
			  		  toastr.success('Successfully Status Changed!! '); 
			  	  }else{
			  		  toastr.warning('Something went wrong!! ');
			  	  }
			    },
			    function(reason) {
			    	toastr.error('Something went wrong!! ');
			    }
			);
	  
	});
jQuery.fn.dataTableExt.oApi.fnSetFilteringEnterPress = function(oSettings) {
	var _that = this;

	this.each(function(i) {
		$.fn.dataTableExt.iApiIndex = i;
		var anControl = $('input', _that.fnSettings().aanFeatures.f);

		anControl.unbind('keyup search input').bind(
				'keyup search input',
				function(e) {
					if (anControl.val().length == "" || anControl.val().length > 2) {
						_that.fnFilter(anControl.val());
					}
				});
		return this;
	});
	return this;
};