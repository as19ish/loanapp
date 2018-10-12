$(document).ready(function() {
    $('#example').DataTable();
    $('.selectpicker').selectpicker();
    
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