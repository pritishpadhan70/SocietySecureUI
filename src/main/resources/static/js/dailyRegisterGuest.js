$(document).ready(function(){
	 
	$("#messageSuccess").hide();
	$("#messageFailure").hide();
	
	$("#submit").click(function(event){
	//	alert("calling the ajax method");
		console.log("calling ajax call");
		
		 $.ajax({
			url: "houseHolds/dailyGuest/save",
			type: "POST",
			data:$('form[name=dailyGuestForm]').serialize(),
	        crossDomain: true,
	        dataType: 'json',
	       
			success: function(response,jqXHR ){
				console.log("ajax call success ****");
				 if(response.validated){
					 $("#messageFailure").hide();
					 $("#messageSuccess").show();
				 }else {
					 $("#messageFailure").show();
					 $("#messageSuccess").hide();
				 }
			 },
			 error(jqXHR, textStatus, errorThrown){
			  console.log("ERROR in loading enrollment content , network issue:"+errorThrown);
			 }
		 }); 
		
	});
});


