<!DOCTYPE html>
<html>

<head>
<title>Daily Boy at Security</title>
<!--Jquery Link-->
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>

<!-- Bootstrap Styling-->
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>



<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	
	$(document).ready(function()

    {
		
		$("#dailyVisitorData").hide();
	var x = 0; //Initial field counter
	var list_maxField = 10; //Input fields increment limitation
	
        //Once add button is clicked
	$('.list_add_button').click(function()
	    {
	    //Check maximum number of input fields
	    if(x < list_maxField){ 
	        x++; //Increment field counter
	        //var list_fieldHTML = '<div class="row"><div class="col-xs-4 col-sm-4 col-md-4"><div class="form-group"><input name="list['+x+'][]" type="text" placeholder="Type Item Name" class="form-control"/></div></div><div class="col-xs-7 col-sm-7 col-md-7"><div class="form-group"><input name="list['+x+'][]" type="text" placeholder="Type Item Quantity" class="form-control"/></div></div><div class="col-xs-1 col-sm-7 col-md-1"><a href="javascript:void(0);" class="list_remove_button btn btn-danger">-</a></div></div>'; //New input field html 
			
			var list_fieldHTML = '<div class="row"><div class="col-xs-3 col-sm-3 col-md-3"><div class="form-group"><input name="list['+x+'][]" type="text" placeholder="Name" class="form-control"/></div></div><div class="col-xs-2 col-sm-2 col-md-2"><div class="form-group"><select name="list[0][]" id="block" class="form-control"><option value="B">B1</option></select></div></div><div class="col-xs-3 col-sm-3 col-md-3"><div class="form-group"><select name="list[0][]" id="flat" class="form-control"><option value="flat">B-101</option></select></div></div><div class="col-xs-3 col-sm-3 col-md-3"><div class="form-group"><input name="list['+x+'][]" type="text" placeholder="Item Quantity" class="form-control"/></div></div><div class="col-xs-1 col-sm-1 col-md-1"><a href="javascript:void(0);" class="list_remove_button btn btn-danger">-</a></div></div>'; //New input field html 
	        	       
		   $('.list_wrapper').append(list_fieldHTML); //Add field html
	    }
        });
    
        //Once remove button is clicked
        $('.list_wrapper').on('click', '.list_remove_button', function()
        {
           $(this).closest('div.row').remove(); //Remove field html
           x--; //Decrement field counter
        });
});</script>

<style>
@import url('httpss://fonts.googleapis.com/css?family=Roboto');

body {
	background: linear-gradient(to right, #78a7ba 0%, #385D6C 50%, #78a7ba 99%);
}

.signup-form {
	font-family: "Roboto", sans-serif;
	width: 650px;
	margin: 30px auto;
	background: linear-gradient(to right, #ffffff 0%, #fafafa 50%, #ffffff 99%);
	border-radius: 10px;
}

.form-header {
	background-color: #EFF0F1;
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
}

.form-header h1 {
	font-size: 30px;
	text-align: center;
	color: #666;
	padding: 20px 0;
	border-bottom: 1px solid #cccccc;
}

/*---------------------------------------*/
/* Form Body */
/*---------------------------------------*/
.form-body {
	padding: 10px 40px;
	color: #666;
}

.form-group {
	margin-bottom: 20px;
}

.form-body .label-title {
	color: #1BBA93;
	font-size: 17px;
	font-weight: bold;
}

.form-body .form-input {
	font-size: 17px;
	box-sizing: border-box;
	width: 100%;
	height: 34px;
	padding-left: 10px;
	padding-right: 10px;
	color: #333333;
	text-align: left;
	border: 1px solid #d6d6d6;
	border-radius: 4px;
	background: white;
	outline: none;
}

.horizontal-group .left {
	float: left;
	width: 49%;
}

.horizontal-group .right {
	float: right;
	width: 49%;
}

input[type="file"] {
	outline: none;
	cursor: pointer;
	font-size: 17px;
}

#range-label {
	width: 15%;
	padding: 5px;
	background-color: #1BBA93;
	color: white;
	border-radius: 5px;
	font-size: 17px;
	position: relative;
	top: -8px;
}

::-webkit-input-placeholder {
	color: #d9d9d9;
}

/*---------------------------------------*/
/* Form Footer */
/*---------------------------------------*/
.form-footer {
	clear: both;
}

/*---------------------------------------*/
/* Form Footer */
/*---------------------------------------*/
.signup-form .form-footer {
	background-color: #EFF0F1;
	border-bottom-left-radius: 10px;
	border-bottom-right-radius: 10px;
	padding: 10px 40px;
	text-align: center;
	border-top: 1px solid #cccccc;
}

.form-footer span {
	float: left;
	margin-top: 10px;
	color: #999;
	font-style: italic;
	font-weight: thin;
}

.btn {
	display: inline-block;
	padding: 10px 20px;
	background-color: #1BBA93;
	font-size: 17px;
	border: none;
	border-radius: 5px;
	color: #bcf5e7;
	cursor: pointer;
}

.btn:hover {
	background-color: #169c7b;
	color: white;
}
</style>
</head>
<body>

	<form class="signup-form" action="/register" method="post">

		<!-- form header -->
		<div class="form-header">
			<h1>Add Delivery Boy at Security</h1>
		</div>

		<!-- form body -->
		<div class="form-body">
			<div class="horizontal-group">

				<label class="label-title">Are you already registered in
					app:</label> <input type="radio" name="portion_selection"
					value="button_one" />Yes <input type="radio"
					name="portion_selection" value="button_two" />No

			</div>

			<br>
			<div id="portion_one" style="display: none">
				<div class="horizontal-group">

					<label class="label-title">Enter your Registered Mobile No:</label>
					<div>
						<input type="text" id="dvPhone" name="mobileno"
							class="form-input" placeholder="enter dailly Visitors phone number" />
					</div>
					<div>
						<input type="button" id="fetchUser" class="btn" value="Fetch Regular Visitor data">
					</div>
				</div>
				<div class="horizontal-group" id = "dailyVisitorData">
				<input type="hidden" id="dailyVisitorID" value = ""/> <br>
					<br> <label class="label-title">Fist Name:</label>
					 <label for="dvname" id="dvFname">Samita </label> <br>
					 
					 <br> <label class="label-title">Middle Name:</label>
					 <label for="dvname" id="dvMname">Samita Shetty</label> <br>
					 
					 <br> <label class="label-title">Last Name:</label>
					 <label for="dvname" id="dvLname"> Shetty</label> <br>
					 
					  <label class="label-title">Society registartion No:</label> 
					  <label for="regno" id="dvregno">123456</label> <br> 
					  
					  <label class="label-title">Sex:</label> 
					  <label for="sex" id="dvsex">Female</label>
					  
					<br> <label class="label-title"> Contact No</label> 
					<label for="contactno" id="dvPhone">dvphone</label> <br> 
					
					<br> <label class="label-title">Alternative  Contact No</label> 
					<label for="contactno" id="dvAltPhone">dvAltPhone</label> <br> 
					

	  
	 				<br> <label class="label-title">IDDETIY CARD TYPE: (hardcoded)</label> 
					<select class="form-input" id="dvIdType">
						<option value="1">PAN</option>
						<option value="2">AADHAR</option>
						<option value="3">PASSPORT</option>
						<option value="4">DRIVING Licence</option>
						<option value="5">Others</option>
					</select>
					
					<br> <label class="label-title">ID VALUE: </label> 
					<input type ="text" id="dvIDValue"></input> <br> 
					
					<br> <label class="label-title">Visitor Type:(hardcoded) </label> 
					<select class="form-input" id="dvType">
						<option value="1">MAID</option>
						<option value="2">TUITOR</option>
						<option value="3">FAMILY MEMBER</option>
						<option value="4">GUEST</option>
						<option value="5">Others</option>
					</select>
					 <br> 
	  
					
					<label class="label-title">Email: </label>
					<input type=text id="visitorEmail" value = "f1"/> <br>
					
					<label class="label-title">Temperature:</label>
					<input type=text id="temp" value = "94.8F"/> <br>
					
					<label class="label-title">FLAT To visit:</label>
					<input type=text id="FlatNO" value = "f1"/> <br>
					
					<label class="label-title">Blood Group: </label>
					<input type=text id="bloodGroup" value = "f1"/> <br>
					
					<label class="label-title">Address: </label>
					<input type=text id="dvAddress" value = "f1"/> <br>
					
					<label class="label-title">District: </label>
					<input type=text id="addDistrict" value = "f1"/> <br>
					
					<label class="label-title">Pin: </label>
					<input type=text id="addPin" value = "f1"/> <br>
					
					<label class="label-title">State: </label>
					<input type=text id="addState" value = "f1"/> <br>
					
					<label class="label-title">purpose: </label>
					<input type=text id="purpose" value = "f1"/> <br>
					
					<label class="label-title">comment: </label>
					<input type=text id="dvcomments" value = "f1"/> <br>
					
					<label for="photo" class="label-title">Capture Photo: Click</label> <button id="Photo" class="btn"></button><br>
					<label for="signature" class="label-title"> Signature: Click</label><button id="signature" class="btn"></button><br>
					<label for="helper" class="label-title">Vehicle type: </label> 
						<select
							class="form-input" id="vehicleType">
							<option value="bluedart">BlueDart</option>
							<option value="amazon">Amazon</option>
							<option value="flipkart">Flipkart</option>
							<option value="others">Others</option>
						</select>
					<label class="label-title">Vehicle number:</label>
					<input type=text id="vehicleNo" value = ""/> <br>
					
					
					<div class="form-group">
						<label for="helper" class="label-title">Delivery Company</label> <select
							class="form-input" id="helpertype">
							<option value="bluedart">BlueDart</option>
							<option value="amazon">Amazon</option>
							<option value="flipkart">Flipkart</option>
							<option value="others">Others</option>
						</select>
					</div>
					<div class="panel panel-info">

						<div class="panel-heading text-center">

							<h1 class="panel-title">Add Deleiver Details</h1>
						</div>

						<div class="panel-body">
							<form role="form" method="post" action="">

								<div class="list_wrapper">
									<div class="row">

										<div class="col-xs-3 col-sm-3 col-md-3">

											<div class="form-group">
												Delivery To <input name="list[0][]" type="text"
													placeholder="Name" class="form-control" />

											</div>
										</div>

										<div class="col-xs-2 col-sm-2 col-md-2">

											<div class="form-group">
												<label for="block" class="color-box"> Block</label> <select
													name="list[0][]" id="block" class="form-control">
													<option value="B">B1</option>

												</select>
											</div>
										</div>


										<div class="col-xs-3 col-sm-3 col-md-3">
											<div class="form-group">
												<label for="block" class="color-box"> Flat</label> <select
													name="list[0][]" id="flat" class="form-control">
													<option value="flat">B-101</option>

												</select>
											</div>
										</div>

										<div class="col-xs-3 col-sm-3 col-md-3">
											<div class="form-group">
												Quantity <input autocomplete="off" name="list[0][]"
													type="text" placeholder="Item Quantity"
													class="form-control" />
											</div>
										</div>

										<div class="col-xs-1 col-sm-1 col-md-1">
											<br>
											<button class="btn btn-primary list_add_button" type="button">+</button>
										</div>
									</div>
								</div>

								<!--<input type="submit" value="Submit" class="btn btn-info btn-block"> -->
							</form>
						</div>
					</div>
					/////////
				</div>
				<br>

				<!-- form footer -->
				<div class="form-footer">
					<button type="cancel" class="btn">Cancel</button>
					<button type="save" class="btn">Save(willremove)</button>
					<button type="submit" id ="saveDailyVisitor" class="btn">Submit (dailly Visitor)</button>
				</div>
			</div>

			<div id="portion_two" style="display: none">

				<div class="horizontal-group">
					here # denotes , the field is mapped in DB <input type="hidden"
						id="visitorType" name="visitorType" />

					<div class="form-group left">
						<label class="label-title"> #Mobile No*</label> <input type="text"
							id="mobileno" name="mobileno" class="form-input"
							placeholder="Enter mobile no" />

					</div>
					<div class="form-group right">
						<label class="label-title"> Alternate Contact No</label> <input
							type="text" id="altCont" name="altCont" class="form-input"
							placeholder="Enter contact no" />

					</div>
					<br>
					<div class="horizontal-group">
						<div class="form-group left ">
							<label for="dob" class="label-title">#FLAT #: </label> <input
								type="text" id="flatId" class="form-input"
								placeholder="Select Vehicle type" required="required">
						</div>
						<div class="form-group right">
							<label for="age" class="label-title">#Comment</label> <input
								type="text" id="comments" class="form-input"
								placeholder=" purpose of visitor" required="required">
						</div>
					</div>
					<!-- Firstname and Lastname -->
					<div class="horizontal-group">

						<div class="form-group left">
							<label for="firstname" class="label-title">#First name *</label>
							<input type="text" id="firstname" name="firstname"
								class="form-input" placeholder="enter your first name"
								required="required" />
						</div>
						
						
						<div class="form-group right">
							<label for="lastname" class="label-title">#middlename</label> <input
								type="text" id="middlename" name="middlename" class="form-input"
								placeholder="enter your last name" />
						</div>
						
						<div class="form-group right">
							<label for="lastname" class="label-title">#Last name</label> <input
								type="text" id="lastname" name="lastname" class="form-input"
								placeholder="enter your last name" />
						</div>
					</div>


				<label class="label-title">District: </label>
					<input type=text id="vDistrict" value = "f1"/> <br>
					
					<label class="label-title">Pin: </label>
					<input type=text id="vPin" value = "f1"/> <br>
					
					<label class="label-title">State: </label>
					<input type=text id="vState" value = "f1"/> <br>
					
					<label class="label-title">purpose: </label>
					<input type=text id="vpurpose" value = "f1"/> <br>
					
					<label class="label-title">Blood Group: </label>
					<input type=text id="vbloodGroup" value = "f1"/> <br>

					<div class="horizontal-group">
						<div class="form-group left ">
							<label for="dob" class="label-title">#VehicleType: </label> <input
								type="text" id="vehicleType" class="form-input"
								placeholder="Select Vehicle type" required="required">
						</div>
						<div class="form-group right">
							<label for="age" class="label-title">#Vehicle Number</label> <input
								type="text" id="vehicleNo" class="form-input"
								placeholder="enter vehicle number" required="required">
						</div>
					</div>

					<div class="horizontal-group">
						<div class="form-group left ">
							<label for="dob" class="label-title">#Photo: </label> <input
								type="text" id="photoPath" class="form-input"
								placeholder="Select Vehicle type" required="required">
						</div>
						<div class="form-group right">
							<label for="age" class="label-title">#Signature</label> <input
								type="text" id="signature" class="form-input"
								placeholder="enter vehicle number" required="required">
						</div>
					</div>





					<div class="horizontal-group">
						<div class="form-group left ">
							<label for="dob" class="label-title">Date of Birth: </label> <input
								type="text" id="dob" class="form-input"
								placeholder="enter your User Name" required="required">
						</div>
						<div class="form-group right">
							<label for="age" class="label-title">Age</label> <input
								type="text" id="age" class="form-input"
								placeholder="enter your User Name" required="required">
						</div>


					</div>

					<div class="horizontal-group">
						<div class="form-group left">
							<label class="label-title">Gender:</label><br> <label
								for="male"> <input type="radio" name="gender"
								value="male" id="gender"> Male
							</label> <label for="female"> <input type="radio" name="gender"
								value="female" id="gender"> Female
							</label>
						</div>
						<div class="form-group right">
							<label class="label-title">Type:</label><br> <label
								for="minor"> <input type="radio" name="ageGroup"
								value="minor" id="type"> Minor
							</label> <label for="adult"> <input type="radio" name="ageGroup"
								value="adult" id="type"> Adult
							</label>
						</div>
					</div>

					<div class="horizontal-group">
						<div class="form-group left">
							<label for="helper" class="label-title">Delivery Company</label>
							<select class="form-input" id="helpertype">
								<option value="bluedart">BlueDart</option>
								<option value="amazon">Amazon</option>
								<option value="flipkart">Flipkart</option>
								<option value="others">Others</option>
							</select>
						</div>
						<div class="form-group right">
							<label for="email" class="label-title">Email*</label> <input
								type="email" id="email" class="form-input"
								placeholder="enter your email" required="required">
						</div>
					</div>
					<div class="horizontal-group">
						<div class="form-group left">
					<label class="label-title">IDDETIY CARD TYPE: (hardcoded)</label> 
					<select class="form-input" id="vIdType">
						<option value="1">PAN</option>
						<option value="2">AADHAR</option>
						<option value="3">PASSPORT</option>
						<option value="4">DRIVING Licence</option>
						<option value="5">Voter Card</option>
						<option value="6">Others</option>
					</select>
						</div>
						<div class="form-group right">
					<label class="label-title">ID VALUE: </label> 
					<input type ="text" id="vIDValue"></input> <br> 
						</div>
					</div>
					
					<div class="horizontal-group">
						<div class="form-group left">
					 <label class="label-title">Visitor Type:(hardcoded) </label> 
				
						</div>
						<div class="form-group right">
					<select class="form-input" id="vType">
						<option value="1">MAID</option>
						<option value="2">TUITOR</option>
						<option value="3">FAMILY MEMBER</option>
						<option value="4">GUEST</option>
						<option value="5">Others</option>
					</select>
						</div>
					</div>
					
					
					<div class="horizontal-group">
						<div class="form-group">
							<label for="choose-file" class="label-title">#Permanent
								Address</label>
							<textarea class="form-input" id="PermAddress" rows="4" cols="50"
								style="height: auto"></textarea>
							<label for="choose-file" class="label-title">Corresponding
								Address</label>
							<textarea class="form-input" id="corespondenceAddress" rows="4"
								cols="50" style="height: auto"></textarea>
						</div>
						<div></div>
					</div>





					<!-- form footer -->
					<div class="form-footer">
						<button type="button" class="btn">Cancel</button>
						<button type="button" class="btn">Save(not needed)</button>
						<button type="button" class="btn" id="saveVisitor">Submit</button>
					</div>
	</form>
	<script type="text/javascript">
  $("input[name='portion_selection']:radio")
    .change(function() {
      $("#portion_one").toggle($(this).val() == "button_one");
      $("#portion_two").toggle($(this).val() == "button_two"); });  

  
  $("#fetchUser").click( function(event) {
		 
		 event.preventDefault();
		 var dvPhoneNo = new Object();
		 dvPhoneNo.id = $("#dvPhone").val();
		 var reqst = JSON.stringify(dvPhoneNo);
		 alert("reqst: "+ reqst);
			
		  $.ajax({
			    url: "/societySecure/visitoraccess/fetchVisitorData",
			    method: "POST",
			    data: reqst,
			    dataType: 'json',
			    contentType: "application/json; charset=utf-8",
			    success: function(result,status,jqXHR ){
			    	
			      console.log("save profile call succesful .. ");
			      if(result.status){
			          alert("Visitor Record fetched: "+result.message);
			          populateDailyVisitorData(result.data);
			          $("#dailyVisitorData").show();

			      }else{
			          alert("error while fetching  Visitor record : "+ result.message);
			      }
			     }
			})
  });
  
  function populateDailyVisitorData(obj){
	  alert("obj: "+ JSON.stringify(obj));
	    $("#dailyVisitorID").text(obj.dvId);
		$("#dvFname").text(obj.firstName);
		$("#dvMname").text(obj.middleName);
		$("#dvLname").text(obj.lastName);
		$("#dvregno").text("hard codded value"); //id regd no
		$("#dvsex").text(obj.sex);
		$("#dvPhone").text(obj.visitorPhone);
		$("#dvAltPhone").text(obj.alternativePhone);
		$("#FlatNO").val(obj.lastVisitedFlat);
		$("#vehicleType").val(obj.vehicleType);
		$("#vehicleNo").val(obj.vehicleNo);
		//$("#visitorAddress").text(obj.visitorAddress);
		$("#type").text(obj.userGroup);
		$("#photoPath").text(obj.photoPath);
		$("#signaturePath").text(obj.signaturePath);
		$("#idType").text(obj.idType);
		$("#idValue").text(obj.idValue);
		$("#dvAddress").val(obj.visitorAddress);
		$("#addCountry").val(obj.addCountry);
		$("#addDistrict").val(obj.addDistrict);
		$("#addPin").val(obj.addPin);
		$("#bloodGroup").val(obj.bloodGroup);
		$("#purpose").val(obj.purpose);
		$("#visitorEmail").val(obj.visitorEmail);
		$("#dob").text(obj.dob);
		$("#comments").val(obj.dvcomments);
			  
  }
  
  
  function populateDailyVisitorObject(){
	  alert("populating daily visitor data: ");

	  var dailyVisitor = new Object();
	  
	  dailyVisitor.dailyVisitorId = $("#dailyVisitorID").val();
	  dailyVisitor.firstName = $("#dvFname").text();
	  dailyVisitor.middleName = $("#dvMname").text();
	  dailyVisitor.lastName = $("#dvLname").text();
	  dailyVisitor.sex = $("#dvsex").text();
	  dailyVisitor.phone = $("#dvPhone").text();
	  dailyVisitor.alternativePhone = $("#dvAltPhone").text();
	  dailyVisitor.flatid = $("#FlatNO").val();
	  dailyVisitor.vehicleType = $("#vehicleType").val();
	  dailyVisitor.vehicleNo = $("#vehicleNo").val();
	  dailyVisitor.type = $("#dvType").val();//user group
	  dailyVisitor.photoPath = $("#photoPath").val();
	  dailyVisitor.signaturePath = $("#signaturePath").val();
	  dailyVisitor.idType = $("#dvIdType").val();
	  dailyVisitor.idValue = $("#dvIDValue").val();
	  dailyVisitor.visitorAddress = $("#dvAddress").val();
	  dailyVisitor.addCountry = $("#addCountry").val();
	  dailyVisitor.addDistrict = $("#addDistrict").val();
	  dailyVisitor.addPin = $("#addPin").val();
	  dailyVisitor.bloodGroup = $("#bloodGroup").val();
	  dailyVisitor.purpose = $("#purpose").val();
	  dailyVisitor.visitorEmail = $("#visitorEmail").val();
	  dailyVisitor.dob = $("#dob").val();
	  dailyVisitor.comments = $("#dvcomments").val();

	  
		//private Long vid;
		//private Timestamp inTime;
		//private boolean isArrived;
		//private boolean isPassIssued;
		//private boolean isVerified;
		//private boolean isVisitorActive;

	//private Timestamp outTime;

		return dailyVisitor;
  }
  
  
  
  
  
  
	 $("#saveDailyVisitor").click( function(event) {
		 var dvData = populateDailyVisitorObject();
		    var reqst = JSON.stringify(dvData);
			alert("dv reqst: "+ reqst);

			//$("#initialContent").hide();
			  $.ajax({
				    url: "/societySecure/visitoraccess/addVisitor",
				    method: "POST",
				    data: reqst,
				    dataType: 'json',
				    contentType: "application/json; charset=utf-8",
				    success: function(result,status,jqXHR ){
				    	
				      console.log("save profile call succesful .. ");
				      if(result.status){
				       

				          alert("Visitor Record entered: "+result.message);
	
				      }else{
				          alert("error while Enterring Visitor record login: "+ result.message);
				      }
				     }
				    //,
				    // error(jqXHR, textStatus, errorThrown){
				    //  console.log("Login Failed , network issue");
				    // }
				}) 

	});
		 
		 
		 
	 $("#saveVisitor").click( function(event) {
		 
		 event.preventDefault();
		 var newVisitor = new Object();
		 newVisitor.comments = $("#comments").val();
		 newVisitor.flatid = $("#flatId").val();
		 newVisitor.idType = 2;//$("#idType1").val();
		 newVisitor.idValue = $("#id_no1").val();
		 newVisitor.sex
		 //newVisitor.idValue = "5tyhm";
		 newVisitor.inTime = "1592383810000";
		 newVisitor.isArrived = true;
		 newVisitor.isPassIssued = false;
		 newVisitor.isVerified = true;
		 newVisitor.isVisitorActive = true;
		 newVisitor.firstName = $("#firstname").val();
		 newVisitor.middleName = $("#middlename").val();
		 newVisitor.lastName =  $("#lastname").val();
		 //newVisitor.outTime = null;
		 newVisitor.phone = $("#mobileno").val();
		 newVisitor.alternativePhone = $("#altCont").val();
		 newVisitor.addCountry = $("#vCountry").val();
		 newVisitor.addDistrict = $("#vDistrict").val();
		 newVisitor.addPin = $("#vPin").val();
		 newVisitor.bloodGroup = $("#vbloodGroup").val();
		 newVisitor.purpose = $("#vpurpose").val();
		 newVisitor.visitorEmail
		 newVisitor.dob
		 //newVisitor.phone = "23456";
		 newVisitor.photoPath = $("#photoPath").val();
		 newVisitor.signaturePath = $("#signature").val();
		 newVisitor.type = 1;//$("#visitorType").val();
		 newVisitor.vehicleNo = $("#vehicleNo").val();
		 newVisitor.vehicleType = 2;//$("#vehicleType").val();
		 newVisitor.visitorAddress = $("#PermAddress").val(); 

		alert("newreqstisitor: "+ newVisitor);
		
		 
		 //newVisitor.outTime = null;
	

		        
		    var reqst = JSON.stringify(newVisitor);
			alert("reqst: "+ reqst);

			//$("#initialContent").hide();
			  $.ajax({
				    url: "/societySecure/visitoraccess/addVisitor",
				    method: "POST",
				    data: reqst,
				    dataType: 'json',
				    contentType: "application/json; charset=utf-8",
				    success: function(result,status,jqXHR ){
				    	
				      console.log("save profile call succesful .. ");
				      if(result.status){
				       

				          alert("Visitor Record entered: "+result.message);
	
				      }else{
				          alert("error while Enterring Visitor record login: "+ result.message);
				      }
				     }
				    //,
				    // error(jqXHR, textStatus, errorThrown){
				    //  console.log("Login Failed , network issue");
				    // }
				}) 

	});
	 
   </script>
</body>


</html>