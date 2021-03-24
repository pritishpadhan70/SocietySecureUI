<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>

<head>
<title>Daily Registered Guest</title>
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script>
  <script type="text/javascript" src="js/dailyRegisterGuest.js"></script> 
<link rel="stylesheet" type="text/css" href="css/main.css">

<style>
@import url('httpss://fonts.googleapis.com/css?family=Roboto');


.error {
	color: #ff0000;
	font-style: italic;
	font-weight: bold;
}

</style>
</head>
<body>
<!-- action="dailyGuest/save" -->

	<form:form class="signup-form"     method="POST" modelAttribute="dailyGuest" id="dailyGuestForm" name="dailyGuestForm">

		<!-- form header -->
		<div class="form-header">
			<h1>Add Daily Registered Guest</h1>
		</div>
		
		<div style="background-color: green;color:white;" id="messageSuccess">
   			Data submitted successfully
   		</div>
		
		<div style="background-color: red;color:white;" id="messageFailure">
   			Data has error, check error fields detail
   		</div>
		

		<!-- form body -->
		<div class="form-body">
			<div class="horizontal-group">
				<div class="form-group">
					<label class="label-title">Please select:</label><br>

					<form:radiobutton path="type" value="minor" id="type" label="Minor" />
					<form:radiobutton path="type" value="adult" id="type" label="Adult" />

				</div>

				<label class="label-title">Are you already registered in
					app:</label>

				<form:radiobutton path="portionSelection" value="button_one"
					label="Yes" />
				<form:radiobutton path="portionSelection" value="button_two"
					label="No" />

			</div>

			<br>
			<div id="portion_one" style="display: none">

				<div class="horizontal-group">
					<label class="label-title">Enter your Registered Mobile No:</label>
					<div>
						<input type="text" id="mobileno" path="mobileNo"
							class="form-input" placeholder="1234567890" />
					</div>
					<br> <label class="label-title">Name:</label> <label
						for="name" id="name">Samita Shetty</label> <br> <label
						class="label-title">Society registartion No:</label> <label
						for="regno" id="regno">123456</label> <br> <label
						class="label-title">Guest Relation:</label> <label for="frequency"
						id="frequency">In-Laws</label> <br> <label
						class="label-title">Visiting Frequency:</label> <label
						for="frequency" id="frequency">Monday, Tuesday</label> <br> <label
						class="label-title">Date of Birth: </label> <label for="dob"
						id="dob">20/06/2000</label> <br> <label class="label-title">Age:
					</label> <label for="age" id="age">20</label> <br> <label
						class="label-title">Sex:</label> <label for="sex" id="sex">Female</label>

					<br> <label class="label-title">Alternate Conact No</label> <label
						for="contactno" id="contactno">0987654321</label>
				</div>
				<br>
				<!-- form footer -->
				<div class="form-footer">
					<button type="cancel" class="btn">Cancel</button>
					<button type="save" class="btn">Save</button>
					<button type="submit" class="btn">Submit</button>
				</div>
			</div>

			<div id="portion_two" style="display: none">

				<div class="horizontal-group">

					<div class="form-group left">
						<label class="label-title"> Mobile No*</label>

						<form:input path="mobileNo" class="form-input"
							placeholder="Enter mobile no" />

					</div>
					<div class="form-group right">
						<label class="label-title"> Alternate Contact No</label>

						<form:input path="alternateContactNo" class="form-input"
							placeholder="Enter contact no" />

					</div>
					<br>

					<!-- Firstname and Lastname -->
					<div class="horizontal-group">
						<div class="form-group left">
							<label for="firstname" class="label-title">First name *</label>
							<form:input path="firstName" class="form-input"
								placeholder="enter your first name" required="required" />
								<form:errors path = "firstName" cssClass = "error" ></form:errors>
						</div>
						<div class="form-group right">
							<label for="lastname" class="label-title">Last name</label>
							<form:input path="lastName" class="form-input"
								placeholder="enter your last name" />
							<form:errors path = "lastName" cssClass = "error" ></form:errors>
						</div>
					</div>

					<div class="horizontal-group">
						<div class="form-group left ">
							<label for="dob" class="label-title">Date of Birth: </label>
							<form:input path="dateOfBirth" class="form-input"
								placeholder="enter your date of birth" required="required" />
								<form:errors path = "dateOfBirth" cssClass = "error" ></form:errors>
						</div>
						<div class="form-group right">
							<label for="age" class="label-title">Age</label>
							<form:input type="text" path="age" class="form-input"
								placeholder="enter your age" required="required" />
						</div>


					</div>

					<div class="horizontal-group">
						<div class="form-group left">
							<label class="label-title">Gender:</label><br> <label
								for="male"> <form:radiobutton path="gender" value="male" />
								Male
							</label> <label for="female"> <form:radiobutton path="gender"
									value="female" /> Female
							</label>
						</div>
						<div class="form-group right">
							<label class="label-title">Type:</label><br> <label
								for="minor"> <form:radiobutton path="type" value="minor" />
								Minor
							</label> <label for="adult"> <form:radiobutton path="type"
									value="adult" /> Adult
							</label>
						</div>
					</div>

					<div class="horizontal-group">
						<div class="form-group left">
							<label for="helper" class="label-title">Guest Relation</label>
							<form:select path="relation" class="form-input">
								<form:option value="inlaws">In-Laws</form:option>
								<form:option value="uncle"> Uncle</form:option>
								<form:option value="aunt"> Aunt</form:option>
								<form:option value="others">Others</form:option>
							</form:select>
						</div>
						<div class="form-group right">
							<label for="visiting" class="label-title">Visiting
								Frequency</label>
							<form:select class="form-input" path="visitingFrequency">
								<form:option value="daily">Daily</form:option>
								<form:option value="Weekly"> Weekly</form:option>
								<form:option value="Monthly"> Monthly</form:option>
								<form:option value="others">Others</form:option>
							</form:select>
						</div>
						<div class="horizontal-group">
							<div class="form-group left">
								<label for="identity" class="label-title">Identity Type
								</label>
								<form:select class="form-input" path="idType">
									<form:option value="panNumber">Pan Card</form:option>
									<form:option value="aadharNumber"> Aadhaar Card</form:option>
									<form:option value="dlNumber"> Driving Licence</form:option>
									<form:option value="voterNumber"> Voter Card</form:option>
									<form:option value="otNumber">Others</form:option>
								</form:select>
							</div>
							<div class="form-group right">
								<label for="id_no" class="label-title">ID No </label>
								<form:input path="idNo" class="form-input"
									placeholder="enter your ID No" required="required" />
							</div>
						</div>

						<div class="horizontal-group">
							<div class="form-group">
								<label for="choose-file" class="label-title">Permanent
									Address</label>
								<form:textarea class="form-input" path="permntAddress" rows="4"
									cols="50" style="height:auto"></form:textarea>
								<label for="choose-file" class="label-title">Corresponding
									Address</label>
								<form:textarea class="form-input" path="corespndAddress"
									rows="4" cols="50" style="height:auto"></form:textarea>
							</div>
							<div></div>
						</div>





						<!-- form footer -->
						<div class="form-footer">
							<button type="button" id="cancel"  class="btn">Cancel</button>
							 <!--  <button type="submit" id="submit" class="btn">Save</button> -->
							  <button type="button" id="submit" class="btn">Submit</button>
						</div>
	</form:form>
	<script type="text/javascript">
		$("input[name='portionSelection']:radio").change(function() {
			$("#portion_one").toggle($(this).val() == "button_one");
			$("#portion_two").toggle($(this).val() == "button_two");
		});
	</script>
</body>


</html>