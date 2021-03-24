<!DOCTYPE html>
<html>

    <head>
           <title>Add My Family</title>
		   <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script>
		   <link rel="stylesheet" type="text/css" href="css/main.css">

    <style>
    @import url('httpss://fonts.googleapis.com/css?family=Roboto');
    </style>
        </head>
    <body>

        <form class="signup-form" action="/register" method="post">

    <!-- form header -->
    <div class="form-header">
            <h1>Add My Family</h1>    </div>

    <!-- form body -->
	  <div class="form-body">
	 	  <div class="horizontal-group">	 
		   <div class="form-group">
          <label class="label-title">Please select:</label>
          <label for="minor">
            <input type="radio" name="type" value="minor" id="type"> Minor</label>
          <label for="adult">
            <input type="radio" name="type" value="adult" id="type"> Adult</label>
          </div>
	
	 <label class="label-title">Are you already registered in app:</label>
	 
<input type="radio" name="portion_selection" value="button_one"/>Yes 
<input type="radio" name="portion_selection" value="button_two"/>No

    </div>
	
    <br>
	 <div id="portion_one" style="display:none">
	 
	  <div class="horizontal-group">
     <label class="label-title">Enter your Registered Mobile No:</label>
        <div>
              <input type="text" id="mobileno" name="mobileno" class="form-input" placeholder="1234567890" />
        </div>
 <br>
  <label class="label-title">Name:</label>
<label for="name" id ="name">Supriya Sahoo</label>
<br>
<label class="label-title">Society registartion No:</label>
<label for="regno" id ="regno">123456</label>
<br>
<label class="label-title">Relation:</label>
<label for="frequency" id ="frequency">Spouse</label>
<br>
  <label class="label-title">Date of Birth: </label>
    <label for="dob" id ="dob">20/06/1990</label>
    <br>
    <label class="label-title">Age: </label>
    <label for="age" id ="age">30</label>
    <br>
	<label class="label-title">Sex:</label>
<label for="sex" id ="sex">Female</label>
 
 <br>
 	<label class="label-title">Alternate Conact No</label>
<label for="contactno" id ="contactno">0987654321</label>
 </div>
<br>
   <!-- form footer -->
    <div class="form-footer">
     <button type="cancel" class="btn">Cancel</button>
	 <button type="save" class="btn">Save</button>
	 <button type="submit" class="btn">Submit</button>
       </div>
	    </div> 

<div id="portion_two" style="display:none">
 
<div class="horizontal-group">
 
 <div class="form-group left">
   <label class="label-title"> Mobile No*</label>
        
              <input type="text" id="mobileno" name="mobileno" class="form-input" placeholder="Enter mobile no" />
       
		</div>
		<div class="form-group right">
   <label class="label-title"> Alternate Contact No</label>
        
              <input type="text" id="contactno" name="contactno" class="form-input" placeholder="Enter contact no" />
       
		</div>
		<br>
		
            <!-- Firstname and Lastname -->
        <div class="horizontal-group">
                <div class="form-group left">
                        <label for="firstname" class="label-title">First name *</label>
                        <input type="text" id="firstname" name="firstname" class="form-input" placeholder="enter your first name" required="required" />
                </div>
                <div class="form-group right">
                        <label for="lastname" class="label-title">Last name</label>
                        <input type="text" id="lastname" name="lastname" class="form-input" placeholder="enter your last name" />
                </div>
        </div>
		
		<div class="horizontal-group">
			<div class="form-group left ">
				<label for="dob" class="label-title">Date of Birth: </label>
				<input type="text" id="dob" class="form-input" placeholder="enter your User Name" required="required"> </div>
			<div class="form-group right">
				<label for="age" class="label-title">Age</label>
        <input type="text" id="age" class="form-input" placeholder="enter your User Name" required="required"> </div>
        

		</div>
		
		<div class="horizontal-group">
				<div class="form-group left">
          <label class="label-title">Gender:</label><br>
          <label for="male">
            <input type="radio" name="gender" value="male" id="gender"> Male</label>
          <label for="female">
            <input type="radio" name="gender" value="female" id="gender"> Female</label>
          </div>
		  <div class="form-group right">
          <label class="label-title">Type:</label><br>
          <label for="minor">
            <input type="radio" name="type" value="minor" id="type"> Minor</label>
          <label for="adult">
            <input type="radio" name="type" value="adult" id="type"> Adult</label>
          </div>
		</div>
		
		<div class="horizontal-group">
				<div class="form-group left">
					<label for="helper" class="label-title">Relation</label>
					<select class="form-input" id="relation">
						<option value="spouse">Spouse</option>
						<option value="son"> Son</option>
						<option value="daughter"> Daughter</option>
						<option value="others">Others</option>
					</select>
				</div>
				<div class="form-group right">
					<label for="email" class="label-title">Email</label>
				<input type="email" id="email" class="form-input" placeholder="enter your email" required="required"> </div>
			</div>
			<div class="horizontal-group">
				<div class="form-group left">
					<label for="identity" class="label-title">Identity Type </label>
					<select class="form-input" id="idType1">
						<option value="panNumber">Pan Card</option>
						<option value="aadharNumber"> Aadhaar Card</option>
						<option value="dlNumber"> Driving Licence</option>
						<option value="voterNumber"> Voter Card</option>
						<option value="otNumber">Others</option>
					</select>
				</div>
				<div class="form-group right">
					<label for="id_no" class="label-title">ID No </label>
					<input type="id" class="form-input" id="id_no1" placeholder="enter your ID No" required="required"> </div>
			</div>
			
			<div class="horizontal-group">
			<div class="form-group">
				<label for="choose-file" class="label-title">Permanent Address</label>
				<textarea class="form-input" rows="4" cols="50" style="height:auto"></textarea>
				<label for="choose-file" class="label-title">Corresponding Address</label>
				<textarea class="form-input" rows="4" cols="50" style="height:auto"></textarea>
      </div>
	  <div>
  
  </div>
</div>


  


    <!-- form footer -->
    <div class="form-footer">
     <button type="cancel" class="btn">Cancel</button>
	 <button type="save" class="btn">Save</button>
	 <button type="submit" class="btn">Submit</button>
       </div>
        </form>
<script type="text/javascript">
  $("input[name='portion_selection']:radio")
    .change(function() {
      $("#portion_one").toggle($(this).val() == "button_one");
      $("#portion_two").toggle($(this).val() == "button_two"); });  

   </script>
    </body>
	

</html>