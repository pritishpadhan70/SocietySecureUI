<!DOCTYPE html>
<html>

<head>
<title>Neighbourhood</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/main.css">


<script>
	$(document).ready(function() {

		$("#reject").click(function() {
			
			$('#statusMsg').html("");
			 
			$("#exampleModal").modal({
				
				backdrop : 'static',
				
				keyboard : false

			});

		});

		$("#hold").click(function() {
			
			$('#statusMsg1').html("");
			
			$("#holdModal").modal({
				backdrop : 'static',
				keyboard : false
			});

		});

		$("#holdOK").click(function(){
			
			var txtData="";
			
			/* $("input[type='radio']:checked").each(function() {
		        var idVal = $(this).attr("id");
		        txtData = $("label[for='"+idVal+"']").text();
		    }); */
		    txtData = $("input[name='one']:checked").parent('label').text();

			
			
			var result ="";
			
			 $('#statusMsg1').html("");
			$.ajax({
				url: "/societySecure/approval/update/"+${neighbourhoodData.nid}+"/HOLD"+"/"+txtData,
				headers: { 'Access-Control-Allow-Origin': '*' },
		        crossDomain: true,
				method: "POST",
				//dataType: 'json',
				//result: JSON.stringify("OK"),
				//contentType: "application/json; charset=utf-8",
				success: function(data,jqXHR ){
					
				console.log("result:"+data);
				
				  if(data == "SUCCESS"){
					  console.log("inside success");
					
					  $('#statusMsg1').html('<span style="color:green;"><b>Records updated successflluy </b></span>');
					  
				  }else{
					  console.log("inside failure");
					  $('#statusMsg1').html('<span style="color:red;"><b>Error in updating data. <br/> &nbsp;&nbsp;&nbsp; Contact admin</b></span>');
				  }
			 
				 },
				 error(jqXHR){
				  console.log("Login Failed , network issue:");
				 }
				// $("#holdOK").attr("disabled", true);
				//$('.submitBtn').removeAttr("disabled");
	             //$('.modal-body').css('opacity', '');
			  }); 
		});

		$("#rejectOK").click(function(){
			$('#statusMsg').html("");

			var txtData="";
			
			/* $("input[type='radio']:checked").each(function() {
		        var idVal = $(this).attr("id");
		        txtData = $("label[for='"+idVal+"']").text();
		    }); */
		    txtData = $("input[name='one']:checked").parent('label').text();

			$.ajax({
				url: "/societySecure/approval/update/"+${neighbourhoodData.nid}+"/REJECTED"+"/"+txtData,
				headers: { 'Access-Control-Allow-Origin': '*' },
		        crossDomain: true,
				method: "POST",
				//dataType: 'json',
				//contentType: "application/json; charset=utf-8",
				success: function(data,jqXHR ){
					console.log("result ##:"+data);
				  if(data=="SUCCESS"){
					  $('#statusMsg').html('<span style="color:green;"><b>Records updated successfully </b></span>');
				  }else{
					  console.log("inside failure:"+data);
					 
					  $('#statusMsg').html('<span style="color:red;"><b>Error in updating data. <br/> &nbsp;&nbsp;&nbsp;Contact admin</b></span>');
					 
				  }
			 
				 },
				 error(jqXHR, textStatus, errorThrown){
				  console.log("Login Failed , network issue");
				 }

				// $("#rejectOK").attr("disabled", true);

				// $('.submitBtn').removeAttr("disabled");
	           // $("#myModal").modal('show'); 
			 }); 
		});

	});
</script>

<style>
@import url('httpss://fonts.googleapis.com/css?family=Roboto');
</style>
</head>
<body>

	<form class="signup-form" action="/register" method="post">

		<!-- form header -->
		<div class="form-header">
			<h1>Neighbourhood Details</h1>
		</div>

		<!-- form body -->
		<div class="form-body">


			<div class="horizontal-group">

				<frameset cols="50%,50%">

					<frame name="left" />
					<div class="form-group left">

						<label class="label-title">Neighbourhood Type:</label> <label
							for="neighbourhoodtype" id="neighbourhoodtype">${neighbourhoodData.neibourhoodType}</label>
						<br> <label class="label-title">Neighbourhood Name:</label> <label
							for="neighbourhoodname" id="neighbourhoodname">${neighbourhoodData.neighbourName}</label>
						<br> <label class="label-title">Owner Name:</label> <label
							for="ownername" id="ownername">No column Present</label> <br>


						<label class="label-title">Manager Name:</label> <label
							for="managername" id="managername">No column Present</label> <br>
						<label class="label-title"> Contact No:</label> <label
							for="contactno" id="contactno">${neighbourhoodData.contactNumber}</label>
						<br> <label class="label-title"> PAN:</label> <label
							for="pan" id="pan">${neighbourhoodData.pan}</label> <br> <label
							class="label-title"> GSTIN:</label> <label for="gsttin"
							id="gsttin">${neighbourhoodData.gstin}</label> <br> <label
							class="label-title">registration No:</label> <label for="regNO"
							id="regNO">No column Present</label> <br> <label
							class="label-title">Address:</label> <label for="add" id="add">${neighbourhoodData.address}</label>
						<br> <label class="label-title">Location:</label> <label
							for="location" id="location">No column Present</label> <br>
						<label class="label-title">Employee:</label> <label for="emp"
							id="emp">No column Present</label> <br>
					</div>
			</div>

			<frame name="right" />

			<center>
				<div class="form-group right">
					<br> <img
						src="https://discoverhumboldt.com/images/stories/March_2020/good_neighbor_store.jpg"
						alt="photo" width="70" height="70" align="top"> <br> <br>
					<img
						src="https://thumbs.dreamstime.com/z/passport-photo-portrait-asian-smiling-woman-109538764.jpg"
						alt="photo" width="70" height="70" align="top"> <br> <label
						for="name" class="label-title">Registered in App </label> <br>

				</div>
				</frameset>
			</center>
			<!-- modal window 1  -->
			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
				
						<div class="modal-header">
						
							<h3 class="modal-title" id="exampleModalLabel">App
								Admin Access Approval-Reject</h3>
								<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
						<p id="statusMsg"></p>
							<label for="first"> <input type="radio" name="one"
								value="first" id="one" checked> Already registered
							</label><br> <label for="second"> <input type="radio"
								name="one" value="second" id="one"> Documents are not
								valid
							</label><br>
						</div>
						<div class="modal-footer">
							<!-- <button type="button" class="btn btn-secondary"
								data-dismiss="modal" id="rejectOK">OK</button> -->
								<button type="button" class="btn btn-secondary submitBtn" id="rejectOK">OK</button>
							<button type="button" class="btn btn-primary" data-dismiss="modal">Cancel</button>
						</div>
					</div>
				</div>
			</div>
			<!-- modal window 1 -->

			<!-- modal window 2  -->
			 <div class="modal fade" id="holdModal" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
					
						<div class="modal-header">
						
							<h3 class="modal-title" id="exampleModalLabel">App
								Admin Access Approval - Hold</h3>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<p id="statusMsg1"></p>
							<label for="first"> <input type="radio" id="one" name="one"
								value="first" id="one" checked> Additional documents
								required
							</label><br> <label for="second"> <input type="radio"
								 name="one" value="second" id="one"> Physical presence
								required at Admin Office
							</label><br> <label for="third"> <input type="radio"
								name="one" value="third" id="one"> Address is missing
							</label><br> <label for="fourth"> <input type="radio"
								name="one" value="third" id="one"> Location is missing
							</label><br>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary submitBtn"
								id="holdOK">OK</button>
							<button type="button" class="btn btn-primary" data-dismiss="modal">Cancel</button>
						</div>
					</div>
				</div>
			</div>
			<!-- modal window 2 -->

			<br>

			<!-- form footer -->
			<div class="form-footer">
				<button type="button" class="btn">Verify</button>
				<button type="button" class="btn">Approve</button>
				<button type="button" id="reject" class="btn">Reject</button>
				<button type="button" id="hold" class="btn">Hold</button>
			</div>
	</form>

</body>
</html>