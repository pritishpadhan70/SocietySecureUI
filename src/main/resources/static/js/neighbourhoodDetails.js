
$(document).ready(function() { 
	
	 $.ajax({
			url: "/societySecure/approval/neighbourhoodRecords",
			headers: { 'Access-Control-Allow-Origin': '*' },
	        crossDomain: true,
			method: "GET",
			dataType: 'json',
			contentType: "application/json; charset=utf-8",
			success: function(result,status,jqXHR ){
			  if(result.status){
				  populateNeighbourhoodRecords(result.data);
			  }else{
				  alert("error while saving record login: "+ result.data.message);
			  }
		 
			 },
			 error(jqXHR, textStatus, errorThrown){
			  console.log("Login Failed , network issue");
			 }
		  }); 
	  
   });

function  populateNeighbourhoodRecords(data){
	$('#enrollmentTable').DataTable({
		data: data,
		jQueryUI: true,
		 columns: [
            { data: 'neighbourName' },
            { data: 'address' },
            { data: 'neibourhoodType' },
            { data: 'contactNumber' },
		    { 'defaultContent': "Action" ,
				render : function(data,type,row){
					console.log("row id:"+row.nid);
					
				  return '<a id='+row.nid+' href="#" class="infodetails" onclick="navigate();">Action</a>';
				}
			
			}
            
        ]
	
	});

}


function navigate(){
	 // click on hyperlink 
	
	 $(".infodetails").click(function(event){
		
	       event.preventDefault();
	       var id =$(this).attr("id");
	       $("#initialContent").hide();
			event.preventDefault();
	        $("#content").load("/societySecure/approval/neighbourhoodRecord/"+id);
	      /* $.ajax({
				url: "/societySecure/fetchEnrollment/"+id,
				headers: { 'Access-Control-Allow-Origin': '*' },
		        crossDomain: true,
				method: "GET",
				success: function(result,jqXHR ){
					$("#initialContent").hide();
				     event.preventDefault();
					$("#content").html(result); 
				 },
				 error(jqXHR, textStatus, errorThrown){
				  console.log("ERROR in loading enrollment content , network issue");
				 }
			  }); */
		});
	 
}
